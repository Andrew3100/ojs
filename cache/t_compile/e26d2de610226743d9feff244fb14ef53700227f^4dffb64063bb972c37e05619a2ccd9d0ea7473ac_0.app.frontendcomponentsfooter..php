<?php
/* Smarty version 3.1.39, created on 2022-10-17 19:46:52
  from 'app:frontendcomponentsfooter.' */

/* @var Smarty_Internal_Template $_smarty_tpl */
if ($_smarty_tpl->_decodeProperties($_smarty_tpl, array (
  'version' => '3.1.39',
  'unifunc' => 'content_634d86fc994f88_07606861',
  'has_nocache_code' => false,
  'file_dependency' => 
  array (
    '4dffb64063bb972c37e05619a2ccd9d0ea7473ac' => 
    array (
      0 => 'app:frontendcomponentsfooter.',
      1 => 1666022512,
      2 => 'app',
    ),
  ),
  'includes' => 
  array (
  ),
),false)) {
function content_634d86fc994f88_07606861 (Smarty_Internal_Template $_smarty_tpl) {
?>


<div class="container-fluid">
	<div class="row" style="background-color:  ">
		<div class="col text-center">
			<div class="col" style="background-color:  ">
				<img src="<?php echo $_smarty_tpl->tpl_vars['publicFilesDir']->value;?>
/white_footer.png" style="width: 150px; height: 150px; margin-top: 39px; margin-bottom: 39px;">
			</div>
		</div>
		<div class="col" style="margin-top: 45px;">
			<div class="row" style="color:white;">
				<div class="col text-left">
					<?php echo call_user_func_array( $_smarty_tpl->smarty->registered_plugins[Smarty::PLUGIN_FUNCTION]['translate'][0], array( array('key'=>"navigation.main"),$_smarty_tpl ) );?>

				</div>
			</div>
			<div class="row" style="color:white;">
				<div class="col text-left" style="margin-top: 35px;">
					<?php echo call_user_func_array( $_smarty_tpl->smarty->registered_plugins[Smarty::PLUGIN_FUNCTION]['translate'][0], array( array('key'=>"navigation.current"),$_smarty_tpl ) );?>

				</div>
			</div>
			<div class="row" style="color:white;">
				<div class="col text-left" style="margin-top: 35px;">
					<?php echo call_user_func_array( $_smarty_tpl->smarty->registered_plugins[Smarty::PLUGIN_FUNCTION]['translate'][0], array( array('key'=>"navigation.for_authors"),$_smarty_tpl ) );?>

				</div>
			</div>
		</div>
		<div class="col" style="margin-top: 45px;">
			<div class="row" style="color:white;">
				<div class="col text-left">
					<?php echo call_user_func_array( $_smarty_tpl->smarty->registered_plugins[Smarty::PLUGIN_FUNCTION]['translate'][0], array( array('key'=>"navigation.archive"),$_smarty_tpl ) );?>

				</div>
			</div>
			<div class="row" style="color:white;">
				<div class="col text-left" style="margin-top: 35px;">
					<?php echo call_user_func_array( $_smarty_tpl->smarty->registered_plugins[Smarty::PLUGIN_FUNCTION]['translate'][0], array( array('key'=>"navigation.redaction"),$_smarty_tpl ) );?>

				</div>
			</div>
			<div class="row" style="color:white;">
				<div class="col text-left" style="margin-top: 35px;">
					<?php echo call_user_func_array( $_smarty_tpl->smarty->registered_plugins[Smarty::PLUGIN_FUNCTION]['translate'][0], array( array('key'=>"navigation.contacts"),$_smarty_tpl ) );?>

				</div>
			</div>
		</div>
			</div>
</div>




























</div><!-- pkp_structure_page -->

<?php echo call_user_func_array( $_smarty_tpl->smarty->registered_plugins[Smarty::PLUGIN_FUNCTION]['load_script'][0], array( array('context'=>"frontend"),$_smarty_tpl ) );?>


<?php echo call_user_func_array( $_smarty_tpl->smarty->registered_plugins[Smarty::PLUGIN_FUNCTION]['call_hook'][0], array( array('name'=>"Templates::Common::Footer::PageFooter"),$_smarty_tpl ) );?>

</body>
</html>
<?php }
}
