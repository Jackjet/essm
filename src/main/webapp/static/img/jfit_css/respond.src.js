window.matchMedia=window.matchMedia||function(d,t){var f,e=d.documentElement,m=e.firstElementChild||e.firstChild,q=d.createElement("body"),n=d.createElement("div");n.id="mq-test-1";n.style.cssText="position:absolute;top:-100em";q.style.background="none";q.appendChild(n);return function(d){n.innerHTML='&shy;<style media="'+d+'"> #mq-test-1 { width: 42px; }</style>';e.insertBefore(q,m);f=42===n.offsetWidth;e.removeChild(q);return{matches:f,media:d}}}(document);
(function(d){function t(){w(!0)}var f={};d.respond=f;f.update=function(){};f.mediaQueriesSupported=d.matchMedia&&d.matchMedia("only all").matches;if(!f.mediaQueriesSupported){var e=d.document,m=e.documentElement,q=[],n=[],p=[],s={},u=e.getElementsByTagName("head")[0]||m,F=e.getElementsByTagName("base")[0],v=u.getElementsByTagName("link"),x=[],C=function(){for(var b=0;b<v.length;b++){var a=v[b],c=a.href,e=a.media,h=a.rel&&"stylesheet"===a.rel.toLowerCase();c&&(h&&!s[c])&&(a.styleSheet&&a.styleSheet.rawCssText?
(A(a.styleSheet.rawCssText,c,e),s[c]=!0):(!/^([a-zA-Z:]*\/\/)/.test(c)&&!F||c.replace(RegExp.$1,"").split("/")[0]===d.location.host)&&x.push({href:c,media:e}))}B()},B=function(){if(x.length){var b=x.shift();G(b.href,function(a){A(a,b.href,b.media);s[b.href]=!0;d.setTimeout(function(){B()},0)})}},A=function(b,a,c){var d=b.match(/@media[^\{]+\{([^\{\}]*\{[^\}\{]*\})+/gi),e=d&&d.length||0;a=a.substring(0,a.lastIndexOf("/"));var g=function(b){return b.replace(/(url\()['"]?([^\/\)'"][^:\)'"]+)['"]?(\))/g,
"$1"+a+"$2$3")},r=!e&&c;a.length&&(a+="/");r&&(e=1);for(var f=0;f<e;f++){var k,l,m;r?(k=c,n.push(g(b))):(k=d[f].match(/@media *([^\{]+)\{([\S\s]+?)$/)&&RegExp.$1,n.push(RegExp.$2&&g(RegExp.$2)));l=k.split(",");m=l.length;for(var p=0;p<m;p++)k=l[p],q.push({media:k.split("(")[0].match(/(only\s+)?([a-zA-Z]+)\s?/)&&RegExp.$2||"all",rules:n.length-1,hasquery:-1<k.indexOf("("),minw:k.match(/\(min\-width:[\s]*([\s]*[0-9\.]+)(px|em)[\s]*\)/)&&parseFloat(RegExp.$1)+(RegExp.$2||""),maxw:k.match(/\(max\-width:[\s]*([\s]*[0-9\.]+)(px|em)[\s]*\)/)&&
parseFloat(RegExp.$1)+(RegExp.$2||"")})}w()},y,D,E=function(){var b,a=e.createElement("div"),c=e.body,d=!1;a.style.cssText="position:absolute;font-size:1em;width:1em";c||(c=d=e.createElement("body"),c.style.background="none");c.appendChild(a);m.insertBefore(c,m.firstChild);b=a.offsetWidth;d?m.removeChild(c):c.removeChild(a);return b=z=parseFloat(b)},z,w=function(b){var a=m.clientWidth,c="CSS1Compat"===e.compatMode&&a||e.body.clientWidth||a,a={},f=v[v.length-1],h=(new Date).getTime();if(b&&y&&30>h-
y)d.clearTimeout(D),D=d.setTimeout(w,30);else{y=h;for(var g in q)if(q.hasOwnProperty(g)){b=q[g];var h=b.minw,r=b.maxw,t=null===h,k=null===r;h&&(h=parseFloat(h)*(-1<h.indexOf("em")?z||E():1));r&&(r=parseFloat(r)*(-1<r.indexOf("em")?z||E():1));if(!b.hasquery||(!t||!k)&&(t||c>=h)&&(k||c<=r))a[b.media]||(a[b.media]=[]),a[b.media].push(n[b.rules])}for(var l in p)p.hasOwnProperty(l)&&p[l]&&p[l].parentNode===u&&u.removeChild(p[l]);for(var s in a)a.hasOwnProperty(s)&&(g=e.createElement("style"),l=a[s].join("\n"),
g.type="text/css",g.media=s,u.insertBefore(g,f.nextSibling),g.styleSheet?g.styleSheet.cssText=l:g.appendChild(e.createTextNode(l)),p.push(g))}},G=function(b,a){var c=H();c&&(c.open("GET",b,!0),c.onreadystatechange=function(){4!==c.readyState||200!==c.status&&304!==c.status||a(c.responseText)},4!==c.readyState&&c.send(null))},H=function(){var b=!1;try{b=new d.XMLHttpRequest}catch(a){b=new d.ActiveXObject("Microsoft.XMLHTTP")}return function(){return b}}();C();f.update=C;d.addEventListener?d.addEventListener("resize",
t,!1):d.attachEvent&&d.attachEvent("onresize",t)}})(this);