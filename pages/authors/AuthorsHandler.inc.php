<?php

import('lib.pkp.pages.authors.AuthorsContextHandler');
import('DB');


class AuthorsHandler extends AuthorsContextHandler {

    /**
     * Display about page.
     * @param $args array
     * @param $request PKPRequest
     */


    function index($args, $request) {
        $DB = new DB;
        $templateMgr = TemplateManager::getManager($request);
        $this->setupTemplate($request);

        $language = $DB->get_current_journal_language();
        /*ПРАВИЛА ПОДАЧИ СТАТЕЙ ИЗ ЛЕВОГО БЛОКА*/
        // по текущему языку определяем какие столбцы берём из таблицы правил (английские или русские)
        $fields = "id, accordion_header_$language,accordion_body_$language";
        $sql = "SELECT $fields FROM submit_rules ";
//        var_dump($sql);
        $rules_accordion = $DB->get_records_sql($sql);

        foreach ($rules_accordion as $rule_accordion) {
            $rules_header[] = $rule_accordion->{"accordion_header_".$language};
            $rules_body[] = $rule_accordion->{"accordion_body_".$language};
            $rules_id[] = $rule_accordion->id;
        }

        $templateMgr->assign(array(
            'rules_header' => $rules_header,
            'rules_body' => $rules_body,
            'rules_id' => $rules_id,
        ));
        $templateMgr->display('frontend/pages/issueAuthors.tpl');
    }
}