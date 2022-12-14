<?php

/**
 * @file pages/index/IndexHandler.inc.php
 *
 * Copyright (c) 2014-2021 Simon Fraser University
 * Copyright (c) 2003-2021 John Willinsky
 * Distributed under the GNU GPL v3. For full terms see the file docs/COPYING.
 *
 * @class IndexHandler
 * @ingroup pages_index
 *
 * @brief Handle site index requests.
 */

import('lib.pkp.pages.index.PKPIndexHandler');
import('DB');

class IndexHandler extends PKPIndexHandler {
	//
	// Public handler operations
	//
	/**
	 * If no journal is selected, display list of journals.
	 * Otherwise, display the index page for the selected journal.
	 * @param $args array
	 * @param $request Request
	 */
	function index($args, $request) {
		$this->validate(null, $request);
		$journal = $request->getJournal();

		if (!$journal) {
			$hasNoContexts = null; // Avoid scrutinizer warnings
			$journal = $this->getTargetContext($request, $hasNoContexts);
			if ($journal) {
				// There's a target context but no journal in the current request. Redirect.
				$request->redirect($journal->getPath());
			}
			if ($hasNoContexts && Validation::isSiteAdmin()) {
				// No contexts created, and this is the admin.
				$request->redirect(null, 'admin', 'contexts');
			}
		}

		$this->setupTemplate($request);
		$router = $request->getRouter();
		$templateMgr = TemplateManager::getManager($request);
		if ($journal) {



            // берём информацию для вывода карточек
            $DB = new DB;
            $cards = $DB->get_records_sql("SELECT * FROM cards_main_page");
//            var_dump($cards);
            foreach ($cards as $card) {
                $cards_id[] = $card->id;
                $sv = 'author_name_'.$DB->get_current_journal_language();
                $cards_author[] = $card->{$sv};
                $sv = 'header_'.$DB->get_current_journal_language();
                $cards_header[] = $card->{$sv};
                $sv = 'text_'.$DB->get_current_journal_language();
                $cards_text[] = $card->{$sv};
            }

			// Assign header and content for home page
			$templateMgr->assign(array(
				'ids' => $cards_id,
				'authors' => $cards_author,
				'headers' => $cards_header,
				'texts' => $cards_text,
			));

			$issueDao = DAORegistry::getDAO('IssueDAO'); /* @var $issueDao IssueDAO */
			$issue = $issueDao->getCurrent($journal->getId(), true);
			if (isset($issue) && $journal->getData('publishingMode') != PUBLISHING_MODE_NONE) {
				import('pages.issue.IssueHandler');
				// The current issue TOC/cover page should be displayed below the custom home page.
				IssueHandler::_setupIssueTemplate($request, $issue);
			}

			$this->_setupAnnouncements($journal, $templateMgr);

			$templateMgr->display('frontend/pages/indexJournal.tpl');
		} else {
			$journalDao = DAORegistry::getDAO('JournalDAO'); /* @var $journalDao JournalDAO */
			$site = $request->getSite();

			if ($site->getRedirect() && ($journal = $journalDao->getById($site->getRedirect())) != null) {
				$request->redirect($journal->getPath());
			}

			$templateMgr->assign([
				'pageTitleTranslated' => $site->getLocalizedTitle(),
				'about' => $site->getLocalizedAbout(),
				'journalFilesPath' => $request->getBaseUrl() . '/' . Config::getVar('files', 'public_files_dir') . '/journals/',
				'journals' => $journalDao->getAll(true)->toArray(),
				'site' => $site,
			]);
			$templateMgr->setCacheability(CACHEABILITY_PUBLIC);
			$templateMgr->display('frontend/pages/indexSite.tpl');
		}
	}
}


