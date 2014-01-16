 <?php

 function smarty_prefilter_fis($source, Smarty_Internal_Template $template)
 {
    require_once (dirname(__FILE__) . '/FIS.init.php');
    return $source;
 }