{%extends file="fis:common:page/layout.tpl"%}
{%block name="body"%}
    <ul>
        <li>{%__('你好，世界')%}</li>
        <li>{%__('你好，百度')%}</li>
        <li>{%__('你好，北京')%}</li>
        <li>{%__('北京，再见！')%}</li>
    </ul>

    {%script%}
        var a = require('/widget/a.js');
        var b = require('/widget/b.js');
    {%/script%}
{%/block%}
