<?php

function smarty_modifier_gettext($text) {
    if (!class_exists('FISTranslate')) {
        return $text;
    }
    return FISTranslate::getText($text);
}