{**
 * templates/frontend/pages/indexJournal.tpl
 *
 * Copyright (c) 2014-2021 Simon Fraser University
 * Copyright (c) 2003-2021 John Willinsky
 * Distributed under the GNU GPL v3. For full terms see the file docs/COPYING.
 *
 * @brief Display the index page for a journal
 *
 * @uses $currentJournal Journal This journal
 * @uses $journalDescription string Journal description from HTML text editor
 * @uses $homepageImage object Image to be displayed on the homepage
 * @uses $additionalHomeContent string Arbitrary input from HTML text editor
 * @uses $announcements array List of announcements
 * @uses $numAnnouncementsHomepage int Number of announcements to display on the
 *       homepage
 * @uses $issue Issue Current issue
 *}
{include file="frontend/components/header.tpl"}

<br xmlns="http://www.w3.org/1999/html">
<div class="container">
    <div class="row">

        {$i = 0}
        {foreach from=$ids item="idss"}
        <div class="col mce-text-center">
            <div class="card-center" style="width: 18rem;">
                <img src="{$publicFilesDir}/main_page_cards/1.png" class="card-img-top" alt="...">
                <div class="card-body">
                    <h5 class="card-title">{$headers[$i]}</h5>
                    <p style="color: #6f7176"><b>{$authors[$i]}</b></p>
                    <p class="card-text">{$texts[$i]}</p>
                </div>
                </div>
        </div><br>
        {$i = $i + 1}
        {/foreach}

    </div>
</div>

{include file="frontend/components/footer.tpl"}
