<?php

import('lib.pkp.pages.authors.AuthorsContextHandler');
import('DB');


class AuthorsHandler extends AuthorsContextHandler {

    /**
     * Display about page.
     * @param $args array
     * @param $request PKPRequest
     */

    function getData() {
        $db = mysqli_connect("localhost", "root", "",'ojs');
        return mysqli_fetch_assoc(mysqli_query($db,"SELECT * FROM issue_files"));
    }


    function index($args, $request) {
        $templateMgr = TemplateManager::getManager($request);
        $this->setupTemplate($request);

        $DB = new DB;
        $DB->get_records_sql();


        $templateMgr->assign(array(
            'var' => $this->getData()['original_file_name'],
        ));
        $templateMgr->display('frontend/pages/issueAuthors.tpl');
    }
}