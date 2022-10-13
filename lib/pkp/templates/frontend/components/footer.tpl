{**
 * templates/frontend/components/footer.tpl
 *
 * Copyright (c) 2014-2021 Simon Fraser University
 * Copyright (c) 2003-2021 John Willinsky
 * Distributed under the GNU GPL v3. For full terms see the file docs/COPYING.
 *
 * @brief Common site frontend footer.
 *
 * @uses $isFullWidth bool Should this page be displayed without sidebars? This
 *       represents a page-level override, and doesn't indicate whether or not
 *       sidebars have been configured for thesite.
 *}

	</div><!-- pkp_structure_main -->

	{* Sidebars *}
	{if empty($isFullWidth)}
		{capture assign="sidebarCode"}{call_hook name="Templates::Common::Sidebar"}{/capture}
		{if $sidebarCode}
			<div class="pkp_structure_sidebar left" role="complementary" aria-label="{translate|escape key="common.navigation.sidebar"}">
				{$sidebarCode}
			</div><!-- pkp_sidebar.left -->
		{/if}
	{/if}
</div><!-- pkp_structure_content -->





<div class="container">
	<div class="row" style="background-color: #2c2e35">
		<div class="col text-center">
			<div class="col" style="background-color: #2c2e35">
				<img src="{$publicFilesDir}/dark_footer.png" style="width: 200px; height: 200px; margin-top: 39px; margin-bottom: 39px;">
			</div>
		</div>
		<div class="col" style="margin-top: 80px;">
			<div class="row" style="color:white;">
				<div class="col text-left">
					{translate key = "navigation.main"}
				</div>
			</div>
			<div class="row" style="color:white;">
				<div class="col text-left" style="margin-top: 35px;">
					{translate key = "navigation.current"}
				</div>
			</div>
			<div class="row" style="color:white;">
				<div class="col text-left" style="margin-top: 35px;">
					{translate key = "navigation.for_authors"}
				</div>
			</div>
		</div>
		<div class="col" style="margin-top: 80px;">
			<div class="row" style="color:white;">
				<div class="col text-left">
					{translate key = "navigation.archive"}
				</div>
			</div>
			<div class="row" style="color:white;">
				<div class="col text-left" style="margin-top: 35px;">
					{translate key = "navigation.redaction"}
				</div>
			</div>
			<div class="row" style="color:white;">
				<div class="col text-left" style="margin-top: 35px;">
					{translate key = "navigation.contacts"}
				</div>
			</div>
		</div>
		{*<div class="col" style="margin-top: 80px;">
			<div class="row" style="color:white;">
				<div class="col text-left">
					{translate key = "navigation.footer1"}
				</div>
			</div>
			<div class="row" style="color:white;">
				<div class="col text-left" style="margin-top: 35px;">
					{translate key = "navigation.footer2"}
				</div>
			</div>
			<div class="row" style="color:white;">
				<div class="col text-left" style="margin-top: 35px;">
					{translate key = "navigation.footer3"}
				</div>
			</div>
		</div>*}
	</div>
</div>
























{*<div class="pkp_structure_footer_wrapper" role="contentinfo">*}
{*	<a id="pkp_content_footer"></a>*}

{*	<div class="pkp_structure_footer">*}

{*		{if $pageFooter}*}
{*			<div class="pkp_footer_content">*}
{*				{$pageFooter}*}
{*			</div>*}
{*		{/if}*}

{*		<div class="pkp_brand_footer" role="complementary">*}
{*			<a href="{url page="about" op="aboutThisPublishingSystem"}">*}
{*				<img alt="{translate key="about.aboutThisPublishingSystem"}" src="{$baseUrl}/{$brandImage}">*}
{*			</a>*}
{*		</div>*}
{*	</div>*}
{*</div><!-- pkp_structure_footer_wrapper -->*}

</div><!-- pkp_structure_page -->

{load_script context="frontend"}

{call_hook name="Templates::Common::Footer::PageFooter"}
</body>
</html>
