<?php
function smarty_compiler_html($arrParams,  $smarty){
    $strResourceApiPath = preg_replace('/[\\/\\\\]+/', '/', dirname(__FILE__) . '/FISResource.class.php');
    $strFramework = $arrParams['framework'];
    unset($arrParams['framework']);
    $strAttr = '';
    $strCode  = '<?php ';
    if (isset($strFramework)) {
        $strCode .= 'if(!class_exists(\'FISResource\', false)){require_once(\'' . $strResourceApiPath . '\');}';
        $strCode .= 'FISResource::setFramework(FISResource::getUri('.$strFramework.', $_smarty_tpl->smarty));';
    }
    $strCode .= ' ?>';

    foreach ($arrParams as $_key => $_value) {
        if (is_numeric($_key)) {
            $strAttr .= ' <?php echo ' . $_value .';?>';
        } else {
            $strAttr .= ' ' . $_key . '="<?php echo ' . $_value . ';?>"';
        }
    }
    $strCode .= "<?php ob_start(); ?>";
    return $strCode . "<html{$strAttr}>";
}

function smarty_compiler_htmlclose($arrParams,  $smarty){
    $strCode = '</html>';
    $strCode .= '<?php echo FISResource::renderResponse(ob_get_clean()); ?>';
    return $strCode;
}






