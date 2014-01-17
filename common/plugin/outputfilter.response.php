<?php
 function smarty_outputfilter_response($output, Smarty_Internal_Template $template)
 {
    return FISResource::renderResponse($output, $template->smarty);
 }
?>