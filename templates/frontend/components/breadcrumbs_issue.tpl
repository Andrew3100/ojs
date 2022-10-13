{**
 * templates/frontend/components/breadcrumbs_issue.tpl
 *
 * Copyright (c) 2014-2021 Simon Fraser University
 * Copyright (c) 2003-2021 John Willinsky
 * Distributed under the GNU GPL v3. For full terms see the file docs/COPYING.
 *
 * @brief Display a breadcrumb nav item showing the current page. This basic
 *  version is for top-level pages which only need to show the Home link. For
 *  category- and series-specific breadcrumb generation, see
 *  templates/frontend/components/breadcrumbs_catalog.tpl.
 *
 * @uses $currentTitle string The title to use for the current page.
 * @uses $currentTitleKey string Translation key for title of current page.
 *}




{*ХЛЕБНЫЕ КРОШКИ*}



<br>
<br>
<nav style="--bs-breadcrumb-divider: url(&#34;data:image/svg+xml,%3Csvg xmlns='http://www.w3.org/2000/svg' width='8' height='8'%3E%3Cpath d='M2.5 0L1 1.5 3.5 4 1 6.5 2.5 8l4-4-4-4z' fill='currentColor'/%3E%3C/svg%3E&#34;);" aria-label="breadcrumb">
	<ol class="breadcrumb">
		<li class="breadcrumb-item">
			<a href="{url page="index" router=$smarty.const.ROUTE_PAGE}">
				<b>{translate key="common.homepageNavigationLabel"}</b>
			</a>
		</li>
		<li class="breadcrumb-item" >
			<a href="{url router=$smarty.const.ROUTE_PAGE page="issue" op="archive"}">
				{translate key="navigation.archives"}
			</a>
		</li>
		<li class="breadcrumb-item" aria-current="page">
			{if $currentTitleKey}
				{translate key=$currentTitleKey}
			{else}
				{$currentTitle|escape}
			{/if}
		</li>
	</ol>
</nav>
<br>



{*<nav class="cmp_breadcrumbs" role="navigation" aria-label="{translate key="navigation.breadcrumbLabel"}">*}
{*	<ol>*}
{*		<li>*}
{*			*}
{*			<span class="separator">{translate key="navigation.breadcrumbSeparator"}</span>*}
{*		</li>*}
{*		<li>*}
{*			*}
{*			<span class="separator">{translate key="navigation.breadcrumbSeparator"}</span>*}
{*		</li>*}
{*		<li class="current" aria-current="page">*}
{*			*}
{*		</li>*}
{*	</ol>*}
{*</nav>*}
