{%html framework="i18n:static/mod.js"%}
    {%head%}
        <meta chaset="utf-8" />
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
        {%block name="body"%}{%/block%}
    {%/body%}
{%/html%}
