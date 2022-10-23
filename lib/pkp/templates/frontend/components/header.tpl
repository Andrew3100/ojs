{**
 * lib/pkp/templates/frontend/components/header.tpl
 *
 * Copyright (c) 2014-2021 Simon Fraser University
 * Copyright (c) 2003-2021 John Willinsky
 * Distributed under the GNU GPL v3. For full terms see the file docs/COPYING.
 *
 * @brief Common frontend site header.
 *
 * @uses $isFullWidth bool Should this page be displayed without sidebars? This
 *       represents a page-level override, and doesn't indicate whether or not
 *       sidebars have been configured for thesite.
 *}
{strip}
	{* Determine whether a logo or title string is being displayed *}
	{assign var="showingLogo" value=true}
	{if !$displayPageHeaderLogo}
		{assign var="showingLogo" value=false}
	{/if}
{/strip}
<!DOCTYPE html>
<html lang="{$currentLocale|replace:"_":"-"}" xml:lang="{$currentLocale|replace:"_":"-"}">
{if !$pageTitleTranslated}{capture assign="pageTitleTranslated"}{translate key=$pageTitle}{/capture}{/if}
{include file="frontend/components/headerHead.tpl"}
<!-- Обязательные метатеги -->
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
<!-- Bootstrap CSS -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">


<script>

	function showissues() {
		let elem = document.getElementById('show');
		let arr = {
				'block' : 'none',
				'none' : 'block',
	}
		elem.style.display = arr[elem.style.display]
	}

</script>

<style>

	/* скрываем чекбоксы и блоки с содержанием */
	.hide, .hide + label ~ div {
		display: none;
	}
	/* вид текста label */
	.hide + label,
	.hide:checked + label {
		padding: 0;
		color: green;
		cursor: pointer;
		border-bottom: 1px dotted green;
	}
	/* вид текста label при активном переключателе */
	.hide:checked + label {
		color: red;
		border-bottom: 0;
	}
	/* когда чекбокс активен показываем блоки с содержанием  */
	.hide:checked + label + div {
		display: block;
		background: #efefef;
		-moz-box-shadow: inset 3px 3px 10px #7d8e8f;
		-webkit-box-shadow: inset 3px 3px 10px #7d8e8f;
		box-shadow: inset 3px 3px 10px #7d8e8f;
		padding: 10px;
	}

</style>


<body class="pkp_page_{$requestedPage|escape|default:"index"} pkp_op_{$requestedOp|escape|default:"index"}{if $showingLogo} has_site_logo{/if}" dir="{$currentLocaleLangDir|escape|default:"ltr"}">

<div class="container-fluid">
	<header class="d-flex flex-wrap justify-content-center py-3 mb-4 border-bottom">
		<div class="col-3">
			<img src="{$publicFilesDir}/white_header.png" style="">
		</div>
		<div class="col-2">
			<p style="max-width: 200px; margin-left: 40px;"><b>Международный рецензируемый научный онлайн-журнал открытого доступа</b></p>
		</div>
		<div class="col-1" style="background-color: ; margin-top: 30px; text-align: center;"><a href="/index.php/{$current_path}" style="text-decoration: none; color: black;">{translate key = "navigation.main"}</a></div>
		<div class="col-1" style="background-color: ; margin-top: 30px; text-align: center;"><a href="/index.php/{$current_path}/authors" style="text-decoration: none; color: black;">{translate key = "navigation.for_authors"}</a></div>
		<div class="col-1" style="background-color: ; margin-top: 30px; text-align: center;"><a href="/index.php/{$current_path}/issue/archive" style="text-decoration: none; color: black;">{translate key = "navigation.archive"}</a></div>
		<div class="col-1" style="background-color: ; margin-top: 30px; text-align: center;"><a href="#" style="text-decoration: none; color: black;">{translate key = "navigation.contacts"}</a></div>
		<div class="col-2"><p class="text-center"><img  src="{$publicFilesDir}/bsu.png" style="max-width: 180px; max-height: 80px;"></p></div>
		<div class="col-1" style="background-color: ; margin-top: 30px; text-align: center;">
			<div class="container-fluid">
				<div class="row">
					<div class="col" >
						<a href="/index.php/{$current_path}/change_lang"><img src="{$publicFilesDir}/language.png"></a>
					</div>
					<div class="col">
						<a href="/index.php/{$current_path}/login"><img src="{$publicFilesDir}/user.png"></a>
					</div>
				</div>
			</div>
		</div>
	</header>
</div>

<div class="container-fluid">
	<div class="row">

			<div id="carouselExampleDark" class="carousel carousel-dark slide" data-bs-ride="carousel" style="height: 200px;">
				<div class="carousel-indicators">
					<button type="button" data-bs-target="#carouselExampleDark" data-bs-slide-to="0" class="active" aria-current="true" aria-label="Slide 0"></button>
					<button type="button" data-bs-target="#carouselExampleDark" data-bs-slide-to="1" aria-label="Slide 1"></button>
					<button type="button" data-bs-target="#carouselExampleDark" data-bs-slide-to="2" aria-label="Slide 2"></button>
					<button type="button" data-bs-target="#carouselExampleDark" data-bs-slide-to="3" aria-label="Slide 3"></button>
				</div>
				<div class="carousel-inner">
					<div class="carousel-item active" data-bs-interval="10000">
						<img src="{$publicFilesDir}/borodino.png" style="height: 200px; width: 750px;" class="d-block w-100" alt="...">
{*						<div class="carousel-caption d-none d-md-block">*}
{*							<a class="btn btn-success">Выпуск №1</a>*}
{*							<br>*}
{*							<h3 style="color: white">Бородинская битва</h3>*}
{*							<h5 style="color: white">Январь - Март, 2023</h5>*}
{*						</div>*}
					</div>
					<div class="carousel-item" data-bs-interval="2000">
						<img src="{$publicFilesDir}/stalingrad.png" style="height: 200px; width: 750px;" class="d-block w-100" alt="...">

					</div>
					<div class="carousel-item">
						<img src="{$publicFilesDir}/cusima.png" style="height: 200px; width: 750px;" class="d-block w-100" alt="...">
					</div>
					<div class="carousel-item">
						<img src="{$publicFilesDir}/spain.png" style="height: 200px; width: 750px;" class="d-block w-100" alt="...">
					</div>

				</div>
				<button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleDark"  data-bs-slide="prev">
					<span class="carousel-control-prev-icon" aria-hidden="true"></span>
					<span class="visually-hidden">Предыдущий</span>
				</button>
				<button class="carousel-control-next" type="button" data-bs-target="#carouselExampleDark"  data-bs-slide="next">
					<span class="carousel-control-next-icon" aria-hidden="true"></span>
					<span class="visually-hidden">Следующий</span>
				</button>
			</div>

	</div>
</div>
