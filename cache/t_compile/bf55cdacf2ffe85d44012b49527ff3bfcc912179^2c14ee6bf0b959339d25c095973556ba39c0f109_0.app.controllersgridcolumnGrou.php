<?php
/* Smarty version 3.1.39, created on 2022-10-12 11:49:52
  from 'app:controllersgridcolumnGrou' */

/* @var Smarty_Internal_Template $_smarty_tpl */
if ($_smarty_tpl->_decodeProperties($_smarty_tpl, array (
  'version' => '3.1.39',
  'unifunc' => 'content_63467fb0d3c9c5_04944780',
  'has_nocache_code' => false,
  'file_dependency' => 
  array (
    '2c14ee6bf0b959339d25c095973556ba39c0f109' => 
    array (
      0 => 'app:controllersgridcolumnGrou',
      1 => 1664910729,
      2 => 'app',
    ),
  ),
  'includes' => 
  array (
  ),
),false)) {
function content_63467fb0d3c9c5_04944780 (Smarty_Internal_Template $_smarty_tpl) {
?>
<colgroup>
	<?php
$_from = $_smarty_tpl->smarty->ext->_foreach->init($_smarty_tpl, $_smarty_tpl->tpl_vars['columns']->value, 'column');
$_smarty_tpl->tpl_vars['column']->do_else = true;
if ($_from !== null) foreach ($_from as $_smarty_tpl->tpl_vars['column']->value) {
$_smarty_tpl->tpl_vars['column']->do_else = false;
?>
				<?php if ($_smarty_tpl->tpl_vars['column']->value->hasFlag('indent')) {?>
			<?php continue 1;?>
		<?php }?>
		<col class="grid-column column-<?php echo $_smarty_tpl->tpl_vars['column']->value->getId();?>
"
		<?php if ($_smarty_tpl->tpl_vars['column']->value->hasFlag('width')) {?>
			style="width: <?php echo $_smarty_tpl->tpl_vars['column']->value->getFlag('width');?>
%;"
		<?php }?> />
	<?php
}
$_smarty_tpl->smarty->ext->_foreach->restore($_smarty_tpl, 1);?>
</colgroup>
<?php }
}
