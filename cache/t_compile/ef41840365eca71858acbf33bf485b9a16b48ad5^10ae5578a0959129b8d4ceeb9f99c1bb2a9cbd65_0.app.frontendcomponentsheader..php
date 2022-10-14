<?php
/* Smarty version 3.1.39, created on 2022-10-14 15:33:05
  from 'app:frontendcomponentsheader.' */

/* @var Smarty_Internal_Template $_smarty_tpl */
if ($_smarty_tpl->_decodeProperties($_smarty_tpl, array (
  'version' => '3.1.39',
  'unifunc' => 'content_6349570162a424_20476480',
  'has_nocache_code' => false,
  'file_dependency' => 
  array (
    '10ae5578a0959129b8d4ceeb9f99c1bb2a9cbd65' => 
    array (
      0 => 'app:frontendcomponentsheader.',
      1 => 1665749097,
      2 => 'app',
    ),
  ),
  'includes' => 
  array (
    'app:frontend/components/headerHead.tpl' => 1,
  ),
),false)) {
function content_6349570162a424_20476480 (Smarty_Internal_Template $_smarty_tpl) {
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

<div class="container">


	
	<div class="row">
		<div class="col" style="background-color: #2c2e35">
			<img src="<?php echo $_smarty_tpl->tpl_vars['publicFilesDir']->value;?>
/dark_header.png" style="width: 530px; height: 110px; margin-top: 39px; margin-bottom: 39px;">
		</div>
	</div>


	
	<div class="row" style="background-color: #2c2e35;">
		<div class="col" style="margin-bottom: 15px; text-align: center"><a href="#" style="text-decoration: none; color: white;"><?php echo call_user_func_array( $_smarty_tpl->smarty->registered_plugins[Smarty::PLUGIN_FUNCTION]['translate'][0], array( array('key'=>"navigation.main"),$_smarty_tpl ) );?>
</a></div>
		<div class="col" style="margin-bottom: 15px; text-align: center"><a href="/index.php/sr/issue/current" style="text-decoration: none; color: white;"><?php echo call_user_func_array( $_smarty_tpl->smarty->registered_plugins[Smarty::PLUGIN_FUNCTION]['translate'][0], array( array('key'=>"navigation.current"),$_smarty_tpl ) );?>
</a></div>
		<div class="col" style="margin-bottom: 15px; text-align: center"><a href="/index.php/sr/authors" style="text-decoration: none; color: white;"><?php echo call_user_func_array( $_smarty_tpl->smarty->registered_plugins[Smarty::PLUGIN_FUNCTION]['translate'][0], array( array('key'=>"navigation.for_authors"),$_smarty_tpl ) );?>
</a></div>
		<div class="col" style="margin-bottom: 15px; text-align: center"><a href="/index.php/sr/issue/archive" style="text-decoration: none; color: white;"><?php echo call_user_func_array( $_smarty_tpl->smarty->registered_plugins[Smarty::PLUGIN_FUNCTION]['translate'][0], array( array('key'=>"navigation.archive"),$_smarty_tpl ) );?>
</a></div>
		<div class="col" style="margin-bottom: 15px; text-align: center"><a href="#" style="text-decoration: none; color: white;"><?php echo call_user_func_array( $_smarty_tpl->smarty->registered_plugins[Smarty::PLUGIN_FUNCTION]['translate'][0], array( array('key'=>"navigation.redaction"),$_smarty_tpl ) );?>
</a></div>
		<div class="col" style="margin-bottom: 15px; text-align: center"><a href="#" style="text-decoration: none; color: white;"><?php echo call_user_func_array( $_smarty_tpl->smarty->registered_plugins[Smarty::PLUGIN_FUNCTION]['translate'][0], array( array('key'=>"navigation.contacts"),$_smarty_tpl ) );?>
</a></div>
	</div>



</div>

<div class="container">
	<div class="row">
		<div class="col">
			






<?php }
}
