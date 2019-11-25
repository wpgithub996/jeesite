var vars = {
	jsPath: '/Dwsurvey/resources/script/',
	jsTmp: '/Dwsurvey/resources/script/artTemplate/',
	cssPath: '/Dwsurvey/resources/skin/',
	isLayer: '/Dwsurvey/resources/script/layer/'
};

//扩展
var fnExtend = {
	includFile: function(g, c) {
		for (var f = "string" == typeof c ? [c] : c, d = 0; d < f.length; d++) {
			var b = f[d].replace(/^\s|\s$/g, ""),
				a = b.split("."),
				e = "css" == a[a.length - 1].toLowerCase(),
				a = e ? "link" : "script",
				h = e ? " type='text/css' rel='stylesheet' " : " language='javascript' type='text/javascript' ",
				b = (e ? "href" : "src") + "='" + g + b + "'";


		}
	}
};

//插入css文件
fnExtend.includFile(vars.cssPath, ['base.css', 'content.css','blue.css']);
//插入js文件
fnExtend.includFile(vars.jsPath, ['jquery-ui.min.js','dcselect.js']);
fnExtend.includFile(vars.isLayer, ['layer.js']);
fnExtend.includFile(vars.jsTmp, ['template.js']);