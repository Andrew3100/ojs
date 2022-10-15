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
        $templateMgr->assign(array(
            'var' => $DB->get_records_sql("SELECT * FROM versions")[1]->major,
        ));
        $templateMgr->display('frontend/pages/issueAuthors.tpl');
    }
}