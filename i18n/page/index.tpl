{%html framework="i18n:static/mod.js"%}
    {%head%}
        <title>This is a test</title>
        <script>
        var F = (function(){
            var _data = {};
            function context(key, value) {
                var length = arguments.length;
                if (length > 1) {
                    _data[key] = value;
                } else if (length == 1) {
                    if (typeof key == 'object') {
                        for (var k in key) {
                            if (key.hasOwnProperty(k)) {
                                _data[k] = key[k];
                            }
                        }
                    } else {
                        return _data[key];
                    }
                }
            }

            return {
                context: context
            };
        })();
        </script>
    {%/head%}
    {%body%}
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
    {%/body%}
{%/html%}
