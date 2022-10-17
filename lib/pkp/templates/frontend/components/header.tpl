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

<body class="pkp_page_{$requestedPage|escape|default:"index"} pkp_op_{$requestedOp|escape|default:"index"}{if $showingLogo} has_site_logo{/if}" dir="{$currentLocaleLangDir|escape|default:"ltr"}">


<div class="container-fluid">
	<div class="row" style="background-color: ">
		<div class="col-3" style="background-color: ;">
			<img src="{$publicFilesDir}/white_header.png" style="width: 180%; height: 100%; margin-top: 5px; margin-bottom: 5px;">
		</div>
		<div class="col-3 text-center" style="margin-top: 26px;"><span>Международный рецензируемый научный онлайн-журнал открытого доступа</span></div>

{*		<div class="col-1" style="background-color: ; margin-top: 30px; text-align: center;"><a href="#" style="text-decoration: none; color: black;">{translate key = "navigation.main"}</a></div>*}
{*		<div class="col-1" style="background-color: ; margin-top: 30px; text-align: center;"><a href="#" style="text-decoration: none; color: black;">{translate key = "navigation.main"}</a></div>*}
		<div class="col-1" style="background-color: ; margin-top: 30px; text-align: center;"><a href="#" style="text-decoration: none; color: black;">{translate key = "navigation.main"}</a></div>
		{*		<div class="col-1" style="background-color: ; margin-top: 15px; text-align: center;"><a href="/index.php/sr/issue/current" style="text-decoration: none; color: black;">{translate key = "navigation.current"}</a></div>*}
		<div class="col-1" style="background-color: ; margin-top: 30px; text-align: center;"><a href="/index.php/sr/authors" style="text-decoration: none; color: black;">{translate key = "navigation.for_authors"}</a></div>
		<div class="col-1" style="background-color: ; margin-top: 30px; text-align: center;"><a href="/index.php/sr/issue/archive" style="text-decoration: none; color: black;">{translate key = "navigation.archive"}</a></div>
		{*		<div class="col-1" style="background-color: ; margin-top: 15px; text-align: center;"><a href="#" style="text-decoration: none; color: black;">{translate key = "navigation.redaction"}</a></div>*}
		<div class="col-1" style="background-color: ; margin-top: 30px; text-align: center;"><a href="#" style="text-decoration: none; color: black;">{translate key = "navigation.contacts"}</a></div>
		<div class="col-2"><img src="{$publicFilesDir}/bsu.png" style="width: 90%; height: 60%; margin-top: 20px; margin-bottom: 20px;"></div>
	</div>
</div>
<div class="container-fluid">
	<div class="row">
		<div class="col">


			<div id="carouselExampleDark" class="carousel carousel-dark slide" data-bs-ride="carousel">
				<div class="carousel-indicators">
					<button type="button" data-bs-target="#carouselExampleDark" data-bs-slide-to="0" class="active" aria-current="true" aria-label="Slide 0"></button>
					<button type="button" data-bs-target="#carouselExampleDark" data-bs-slide-to="1" aria-label="Slide 1"></button>
					<button type="button" data-bs-target="#carouselExampleDark" data-bs-slide-to="2" aria-label="Slide 2"></button>
					<button type="button" data-bs-target="#carouselExampleDark" data-bs-slide-to="3" aria-label="Slide 3"></button>
				</div>
				<div class="carousel-inner">
					<div class="carousel-item active" data-bs-interval="10000">
						<img src="{$publicFilesDir}/borodino.png" style="height: 600px; width: 750px;" class="d-block w-100" alt="...">
						<div class="carousel-caption d-none d-md-block">
							<a class="btn btn-success">Выпуск №1</a>
							<br>
							<h3 style="color: white">Бородинская битва</h3>
							<h5 style="color: white">Январь - Март, 2023</h5>
						</div>
					</div>
					<div class="carousel-item" data-bs-interval="2000">
						<img src="{$publicFilesDir}/stalingrad.png" style="height: 600px; width: 750px;" class="d-block w-100" alt="...">
						<div class="carousel-caption d-none d-md-block">
							<a class="btn btn-success">Выпуск №2</a>
							<br>
							<h3 style="color: white">Сталинградская битва</h3>
							<h5 style="color: white">Апрель - Июнь, 2023</h5>
						</div>
					</div>
					<div class="carousel-item">
						<img src="{$publicFilesDir}/cusima.png" style="height: 600px; width: 750px;" class="d-block w-100" alt="...">
						<div class="carousel-caption d-none d-md-block">
							<a class="btn btn-success">Выпуск №3</a>
							<br>
							<h3 style="color: white">Цусимская битва</h3>
							<h5 style="color: white">Июль - Сентябрь, 2023</h5>
						</div>
					</div>
					<div class="carousel-item">
						<img src="{$publicFilesDir}/spain.png" style="height: 600px; width: 750px;" class="d-block w-100" alt="...">
						<div class="carousel-caption d-none d-md-block">
							<a class="btn btn-success">Выпуск №4</a>
							<br>
							<h3 style="color: white">Испанская армада</h3>
							<h5 style="color: white">Октябрь - Ноябрь, 2023</h5>
						</div>
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
</div>
