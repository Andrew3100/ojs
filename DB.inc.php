<?php

class DB {

    public $db_host;
    public $db_user;
    public $db_password;
    public $db_base;
    //свойство определяет находится ли проект на локальном сервере
    public $db_production;

    //определяем параметры подключения к базе данных в
    //зависимости сервера (локальный или продакшн)
    function db_param() {
        if ($_SERVER['REMOTE_ADDR'] == '127.0.0.1') {
            $this->db_production = 0;
            $this->db_host = 'localhost';
            $this->db_user = 'root';
            $this->db_password = 'root';
            $this->db_base = 'ojs';
            $this->db_production = 0;
        }
        else {
            $this->db_production = 1;
            $this->db_host = 'localhost';
            $this->db_user = 'root';
            $this->db_password = 'root';
            $this->db_base = 'ojs';
            $this->db_production = 1;
        }
    }


    // метод выводит тип данных заданного поля в заданной в таблице
    function getDataTypes($table_name,$field) {
        $mysqli = $this->setConnect();
        $db = $this->db_base;
        //запрос на типы данных
        $sql = "SELECT DATA_TYPE FROM information_schema.COLUMNS 
                WHERE TABLE_SCHEMA='$db' 
                AND TABLE_NAME='$table_name' AND COLUMN_NAME='$field'";
        $types = $mysqli->query($sql);

        while ($ty = mysqli_fetch_assoc($types)) {
            $type = $ty['DATA_TYPE'];
        }
        return $type;
    }


    //метод устанавливает соединение с БД
    function setConnect() {
        $this->db_param();
        $mysqli = new mysqli($this->db_host, $this->db_user, $this->db_password, $this->db_base);
        $mysqli->set_charset("utf8");
        if ($mysqli->connect_error) {
            exit("<h1 style='margin-top: 120px; color: red'>Ошибка подключения к базе данных</h1>");
        }
        return $mysqli;
    }

    // добавляет в таблицу $table_name поле с именем $field и типом $type
    function alterTable($table_name, $field, $type) {
        $mysqli = $this->setConnect();
        pre("ALTER TABLE `$table_name` ADD `$field` $type NOT NULL");
        return $mysqli->query("ALTER TABLE `$table_name` ADD `$field` $type NOT NULL");
    }

    // Метод возвращает массив полей заданной таблицы
    function getTableFieldsName($table,$print='') {
        $mysqli = $this->setConnect();
        $fields = $mysqli->query("SHOW COLUMNS FROM $table");
        foreach ($fields as $fieldss) {
            $fields_list[] = $fieldss['Field'];
        }
        if ($print!='') {
            print_r("SHOW COLUMNS FROM $table");
        }
        return $fields_list;
    }

    //метод формирует excel файл из таблицы и заголовков
    function reportToExcel($content,$headers,$filename = 'Отчёт') {
        require_once 'Excel/Classes/PHPExcel.php';
        $cells = ['A', 'B', 'C', 'D', 'E',
            'F', 'G', 'H', 'I', 'J',
            'K', 'L', 'M', 'N', 'O',
            'P', 'Q', 'R', 'S', 'T',
            'U', 'V', 'W', 'X', 'Y', 'Z'];
        //Новый объект Excel
        $excel = new PHPExcel();

        $excel->setActiveSheetIndex(0);
        for ($i = 0; $i <count($headers); $i++) {
            $excel->getActiveSheet()->getColumnDimension()->setAutoSize(true);
            $excel->getActiveSheet()->setCellValue($cells[$i].'1',$headers[$i]);
        }

        for ($i = 2; $i <= count($content)+1; $i++) {
            $s = 1;
            $n = 1;
            for ($g = 0; $g < count($content[$i]); $g++) {
                $excel->getActiveSheet()->setCellValue($cells[$g].($i),$content[$i][$g]);
                $s++;
                $n++;
            }
        }
        header('Content-Type: application/vnd.openxmlformats-officedocument.spreadsheetml.sheet');
        header('Content-Disposition: attachment; filename="'.$filename.'.xlsx');
        header('Cash-Control: max-age=0');
        $file = PHPExcel_IOFactory::createWriter($excel,'Excel2007');
        $file->save('php://output');
    }

    // метод вставляет запись в таблицу.
    // Запись передаётся в виде объекта, где свойства - поля таблицы
    // Возвращает идентификатор вставленной записи
    function insert_record($table,$record_object,$print = '') {
        $mysqli = $this->setConnect();
        $keys = get_object_vars($record_object);
        $keys1 = array_keys($keys);

        $string_fields = '(`';
        for ($i = 0; $i < count($keys); $i++) {
            $string_fields .= $keys1[$i];
            $string_fields .= '`';
            if ($i!=count($keys)-1) {
                $string_fields .= ', ';
                $string_fields .= '`';
            }
        }
        $string_fields .= ')';

        $string_for_insert = "('";
        for ($i = 0; $i < count($keys); $i++) {
            $string_for_insert .= ($record_object->{$keys1[$i]});
            $string_for_insert .= "'";
            if ($i!=count($keys)-1) {
                $string_for_insert .= ', ';
                $string_for_insert .= "'";
            }
        }
        $string_for_insert .= ')';
        //считаем крайний ИД в таблице

        $ins = $mysqli->query("INSERT INTO `$table` $string_fields VALUES $string_for_insert");
        if (!$ins) {
            echo 'запись не вставлена';
            echo '<pre>';
            echo("INSERT INTO `$table` $string_fields VALUES $string_for_insert;");
            echo '</pre>';
        }
        if ($print!='') {
            echo '<pre>';
            echo("INSERT INTO $table $string_fields VALUES $string_for_insert;");
            echo '</pre>';
        }
        $last_id = $mysqli->query("SELECT MAX(`id`) FROM $table");
        // возвращаем вставленный ИД
        return (mysqli_fetch_assoc($last_id)["MAX(`id`)"]);
    }

    //Метод обновляет запись в таблице
    //Запись передаётся объектом, где свойства - поля БД
    //Для адресации записи передать ID этой записи
    function update_recordById($table,$object_upd,$id,$print='') {
        $mysqli = $this->setConnect();
        $keys = get_object_vars($object_upd);
        $keys1 = array_keys($keys);
        pre($keys);
        pre($keys1);
        for ($i = 0; $i < count($keys); $i++) {
            $set =  $object_upd->{$keys1[$i]};
            $f = $keys1[$i];
            $mysqli->query("UPDATE $table SET $f = '$set' WHERE id = $id");
        }
        if ($print!='') {
            print_r("UPDATE $table SET $f = '$set' WHERE id = $id");
        }
        return $id;
    }

    //метод удаляет данные из заданной таблицы
    //по идентификатору, который затем возвращает
    function deleteRecordById($table,$id) {
        $mysqli = $this->setConnect();
        $mysqli->query("DELETE FROM $table WHERE id = $id");
        return $id;
    }

    //метод создаёт таблицу. Параметры - имя, массив названий полей, массив типов данных полей
    //если в названии полей находится id, то он по дефолту создаётся автоинкриментным
    // с параметром not null (а также первичный ключ)
    function CreateTable($name,$headers_DB,$type) {
        $datas_string = '(';
        for ($i = 0; $i < count($headers_DB); $i++) {
            $set = '';
            if ($headers_DB[$i]=='id') {
                $set = 'not null auto_increment';
            }
            $datas_string .= "$headers_DB[$i] $type[$i] collate 'UTF8_general_ci' $set";
            $datas_string .= ', ';

        }
        $datas_string .= 'PRIMARY KEY  (`id`))';

        $DB = new DB;
        $mysqli = $DB->setConnect();

        $create = $mysqli->query("
        CREATE TABLE $name $datas_string
        ");
    }

    // Метод берёт записи по тексту SQL и формирует из них массив объектов
    function get_records_sql($sql) {
        $mysqli = $this->setConnect();
        $data = $mysqli->query($sql);
        while ($datum = mysqli_fetch_assoc($data)) {
            $object = new stdClass();
            $i = 0;
            foreach ($datum as $key => $value) {
                $object->{array_keys($datum)[$i]} = array_values($datum)[$i];
                $i++;
            }
            $array_of_objects[] = $object;
        }
    return $array_of_objects;
    }


    // язык текущего журнала в скоращённом формате строчными буквами (ru, en)
    function get_current_journal_language() {
        $mysqli = $this->setConnect();
        $journal_path = explode('/',((!empty($_SERVER['HTTPS'])) ? 'https' : 'http') . '://' . $_SERVER['HTTP_HOST'] . $_SERVER['REQUEST_URI'])[4];
        $sql = "SELECT * FROM journals WHERE path = '$journal_path'";
        $current = $mysqli->query($sql);
        while ($currents = mysqli_fetch_assoc($current)) {
            $language = $currents['primary_locale'];
        }
        return explode('_',$language)[0];
    }


}

