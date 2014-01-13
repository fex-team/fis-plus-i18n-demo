fis.config.merge({
    namespace: 'i18n',
    modules: {
        parser: {
            po: 'po'
        }
    },
    roadmap: {
        ext: {
            po: 'json'
        }
    }
});

fis.config.get('roadmap.path').unshift({
    reg: '/translate.tpl',
    release: '/template/${namespace}/widget/translate.tpl'
});

fis.config.get('roadmap.path').unshift({
    reg: /\/lang\/([^\/]+)\.po/i,
    release: '/config/lang/${namespace}.$1.po'
});


fis.config.set('modules.prepackager', fis.config.get('modules.prepackager') + ',js-i18n');

