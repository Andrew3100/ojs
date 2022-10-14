<?php

/**
 * @defgroup pages_about About page
 */

/**
 * @file pages/about/index.php
 *
 * Copyright (c) 2014-2021 Simon Fraser University
 * Copyright (c) 2003-2021 John Willinsky
 * Distributed under the GNU GPL v3. For full terms see the file docs/COPYING.
 *
 * @ingroup pages_about
 * @brief Handle requests for about the journal functions.
 *
 */
ini_set('error_reporting', E_ALL);
ini_set('display_errors', 1);
ini_set('display_startup_errors', 1);
switch ($op) {

    default:
        define('HANDLER_CLASS', 'AuthorsHandler');
        import('pages.authors.AuthorsHandler');
}


