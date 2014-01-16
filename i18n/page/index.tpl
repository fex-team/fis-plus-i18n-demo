{%extends file="common/page/layout.tpl"%}
{%block name="body"%}
    {%translate module="i18n"%}
    <ul>
        <li>{%'你好，世界'|gettext%}</li>
        <li>{%'你好，百度'|gettext%}</li>
        <li>{%'你好，北京'|gettext%}</li>
        <li>{%'北京，再见！'|gettext%}</li>
    </ul>

    {%script%}
        var a = require('/widget/a.js');
        var b = require('/widget/b.js');
    {%/script%}
{%/block%}
