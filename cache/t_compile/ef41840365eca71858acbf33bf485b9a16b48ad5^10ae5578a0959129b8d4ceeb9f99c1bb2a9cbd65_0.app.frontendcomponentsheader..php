<?php
/* Smarty version 3.1.39, created on 2022-10-21 18:38:25
  from 'app:frontendcomponentsheader.' */

/* @var Smarty_Internal_Template $_smarty_tpl */
if ($_smarty_tpl->_decodeProperties($_smarty_tpl, array (
  'version' => '3.1.39',
  'unifunc' => 'content_6352bcf14cff12_31152985',
  'has_nocache_code' => false,
  'file_dependency' => 
  array (
    '10ae5578a0959129b8d4ceeb9f99c1bb2a9cbd65' => 
    array (
      0 => 'app:frontendcomponentsheader.',
      1 => 1666359768,
      2 => 'app',
    ),
  ),
  'includes' => 
  array (
    'app:frontend/components/headerHead.tpl' => 1,
  ),
),false)) {
function content_6352bcf14cff12_31152985 (Smarty_Internal_Template $_smarty_tpl) {
$_smarty_tpl->_checkPlugins(array(0=>array('file'=>'C:\\OSPanel\\domains\\ojs\\lib\\pkp\\lib\\vendor\\smarty\\smarty\\libs\\plugins\\modifier.replace.php','function'=>'smarty_modifier_replace',),));
$_smarty_tpl->_assignInScope('showingLogo', true);
if (!$_smarty_tpl->tpl_vars['displayPageHeaderLogo']->value) {
$_smarty_tpl->_assignInScope('showingLogo', false);
}?>
<!DOCTYPE html>
<html lang="<?php echo smarty_modifier_replace($_smarty_tpl->tpl_vars['currentLocale']->value,"_","-");?>
" xml:lang="<?php echo smarty_modifier_replace($_smarty_tpl->tpl_vars['currentLocale']->value,"_","-");?>
">
<?php if (!$_smarty_tpl->tpl_vars['pageTitleTranslated']->value) {
$_smarty_tpl->smarty->ext->_capture->open($_smarty_tpl, 'default', "pageTitleTranslated", null);
echo call_user_func_array( $_smarty_tpl->smarty->registered_plugins[Smarty::PLUGIN_FUNCTION]['translate'][0], array( array('key'=>$_smarty_tpl->tpl_vars['pageTitle']->value),$_smarty_tpl ) );
$_smarty_tpl->smarty->ext->_capture->close($_smarty_tpl);
}
$_smarty_tpl->_subTemplateRender("app:frontend/components/headerHead.tpl", $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, $_smarty_tpl->cache_lifetime, array(), 0, false);
?>
<!-- Обязательные метатеги -->
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<?php echo '<script'; ?>
 src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"><?php echo '</script'; ?>
>
<!-- Bootstrap CSS -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">

<body class="pkp_page_<?php echo (($tmp = @call_user_func_array($_smarty_tpl->registered_plugins[ 'modifier' ][ 'escape' ][ 0 ], array( $_smarty_tpl->tpl_vars['requestedPage']->value )))===null||$tmp==='' ? "index" : $tmp);?>
 pkp_op_<?php echo (($tmp = @call_user_func_array($_smarty_tpl->registered_plugins[ 'modifier' ][ 'escape' ][ 0 ], array( $_smarty_tpl->tpl_vars['requestedOp']->value )))===null||$tmp==='' ? "index" : $tmp);
if ($_smarty_tpl->tpl_vars['showingLogo']->value) {?> has_site_logo<?php }?>" dir="<?php echo (($tmp = @call_user_func_array($_smarty_tpl->registered_plugins[ 'modifier' ][ 'escape' ][ 0 ], array( $_smarty_tpl->tpl_vars['currentLocaleLangDir']->value )))===null||$tmp==='' ? "ltr" : $tmp);?>
">

<div class="container-fluid">
	<header class="d-flex flex-wrap justify-content-center py-3 mb-4 border-bottom">
		<div class="col-3">
			<img src="<?php echo $_smarty_tpl->tpl_vars['publicFilesDir']->value;?>
/white_header.png" style="">
		</div>
		<div class="col-2">
			<p style="max-width: 200px; margin-left: 40px;"><b>Международный рецензируемый научный онлайн-журнал открытого доступа</b></p>
		</div>
		<div class="col-1" style="background-color: ; margin-top: 30px; text-align: center;"><a href="/index.php/<?php echo $_smarty_tpl->tpl_vars['current_path']->value;?>
" style="text-decoration: none; color: black;"><?php echo call_user_func_array( $_smarty_tpl->smarty->registered_plugins[Smarty::PLUGIN_FUNCTION]['translate'][0], array( array('key'=>"navigation.main"),$_smarty_tpl ) );?>
</a></div>
		<div class="col-1" style="background-color: ; margin-top: 30px; text-align: center;"><a href="/index.php/<?php echo $_smarty_tpl->tpl_vars['current_path']->value;?>
/authors" style="text-decoration: none; color: black;"><?php echo call_user_func_array( $_smarty_tpl->smarty->registered_plugins[Smarty::PLUGIN_FUNCTION]['translate'][0], array( array('key'=>"navigation.for_authors"),$_smarty_tpl ) );?>
</a></div>
		<div class="col-1" style="background-color: ; margin-top: 30px; text-align: center;"><a href="/index.php/<?php echo $_smarty_tpl->tpl_vars['current_path']->value;?>
/issue/archive" style="text-decoration: none; color: black;"><?php echo call_user_func_array( $_smarty_tpl->smarty->registered_plugins[Smarty::PLUGIN_FUNCTION]['translate'][0], array( array('key'=>"navigation.archive"),$_smarty_tpl ) );?>
</a></div>
		<div class="col-1" style="background-color: ; margin-top: 30px; text-align: center;"><a href="#" style="text-decoration: none; color: black;"><?php echo call_user_func_array( $_smarty_tpl->smarty->registered_plugins[Smarty::PLUGIN_FUNCTION]['translate'][0], array( array('key'=>"navigation.contacts"),$_smarty_tpl ) );?>
</a></div>
		<div class="col-2"><p class="text-center"><img  src="<?php echo $_smarty_tpl->tpl_vars['publicFilesDir']->value;?>
/bsu.png" style="max-width: 180px; max-height: 80px;"></p></div>
		<div class="col-1" style="background-color: ; margin-top: 30px; text-align: center;">
			<div class="container-fluid">
				<div class="row">
					<div class="col" >
						<a href="/index.php/<?php echo $_smarty_tpl->tpl_vars['current_path']->value;?>
/change_lang"><img src="<?php echo $_smarty_tpl->tpl_vars['publicFilesDir']->value;?>
/language.png"></a>
					</div>
					<div class="col">
						<a href="/index.php/<?php echo $_smarty_tpl->tpl_vars['current_path']->value;?>
/login"><img src="<?php echo $_smarty_tpl->tpl_vars['publicFilesDir']->value;?>
/user.png"></a>
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
						<img src="<?php echo $_smarty_tpl->tpl_vars['publicFilesDir']->value;?>
/borodino.png" style="height: 200px; width: 750px;" class="d-block w-100" alt="...">
					</div>
					<div class="carousel-item" data-bs-interval="2000">
						<img src="<?php echo $_smarty_tpl->tpl_vars['publicFilesDir']->value;?>
/stalingrad.png" style="height: 200px; width: 750px;" class="d-block w-100" alt="...">

					</div>
					<div class="carousel-item">
						<img src="<?php echo $_smarty_tpl->tpl_vars['publicFilesDir']->value;?>
/cusima.png" style="height: 200px; width: 750px;" class="d-block w-100" alt="...">
					</div>
					<div class="carousel-item">
						<img src="<?php echo $_smarty_tpl->tpl_vars['publicFilesDir']->value;?>
/spain.png" style="height: 200px; width: 750px;" class="d-block w-100" alt="...">
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
<?php }
}
