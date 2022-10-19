<?php
/* Smarty version 3.1.39, created on 2022-10-19 17:35:39
  from 'app:frontendpagesindexJournal' */

/* @var Smarty_Internal_Template $_smarty_tpl */
if ($_smarty_tpl->_decodeProperties($_smarty_tpl, array (
  'version' => '3.1.39',
  'unifunc' => 'content_63500b3b4a77a3_26974157',
  'has_nocache_code' => false,
  'file_dependency' => 
  array (
    'e64e579388e5615e11e939b12134d6ae8679eba6' => 
    array (
      0 => 'app:frontendpagesindexJournal',
      1 => 1666190138,
      2 => 'app',
    ),
  ),
  'includes' => 
  array (
    'app:frontend/components/header.tpl' => 1,
    'app:frontend/components/footer.tpl' => 1,
  ),
),false)) {
function content_63500b3b4a77a3_26974157 (Smarty_Internal_Template $_smarty_tpl) {
$_smarty_tpl->_subTemplateRender("app:frontend/components/header.tpl", $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, $_smarty_tpl->cache_lifetime, array(), 0, false);
?>

<br xmlns="http://www.w3.org/1999/html">
<div class="container">
    <div class="row">

        <?php $_smarty_tpl->_assignInScope('i', 0);?>
        <?php
$_from = $_smarty_tpl->smarty->ext->_foreach->init($_smarty_tpl, $_smarty_tpl->tpl_vars['ids']->value, 'idss');
$_smarty_tpl->tpl_vars['idss']->do_else = true;
if ($_from !== null) foreach ($_from as $_smarty_tpl->tpl_vars['idss']->value) {
$_smarty_tpl->tpl_vars['idss']->do_else = false;
?>
        <div class="col mce-text-center">
            <div class="card-center" style="width: 18rem;">
                <img src="<?php echo $_smarty_tpl->tpl_vars['publicFilesDir']->value;?>
/main_page_cards/1.png" class="card-img-top" alt="...">
                <div class="card-body">
                    <h5 class="card-title"><?php echo $_smarty_tpl->tpl_vars['headers']->value[$_smarty_tpl->tpl_vars['i']->value];?>
</h5>
                    <p style="color: #6f7176"><b><?php echo $_smarty_tpl->tpl_vars['authors']->value[$_smarty_tpl->tpl_vars['i']->value];?>
</b></p>
                    <p class="card-text"><?php echo $_smarty_tpl->tpl_vars['texts']->value[$_smarty_tpl->tpl_vars['i']->value];?>
</p>
                </div>
                </div>
        </div><br>
        <?php $_smarty_tpl->_assignInScope('i', $_smarty_tpl->tpl_vars['i']->value+1);?>
        <?php
}
$_smarty_tpl->smarty->ext->_foreach->restore($_smarty_tpl, 1);?>

    </div>
</div>

<?php $_smarty_tpl->_subTemplateRender("app:frontend/components/footer.tpl", $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, $_smarty_tpl->cache_lifetime, array(), 0, false);
}
}
