var HOST_NAME = "localhost:3000";
// javascript:var d=document,w=window,e=w.getSelection,k=d.getSelection,x=d.selection,s=(e?e():(k)?k():(x?x.createRange().text:0)),f= 'http://' + HOST_NAME + '/clippings/new',l=d.location,e=encodeURIComponent,p='?v=1&u='+e(l.href)%20+'&t='+e(d.title.replace(/^\s*|\s*$/g,''))%20+'&s='+e(s),u=f+p;location.href=u;
// var returnNew = javascript:var d=document,w=window,e=w.getSelection,k=d.getSelection,x=d.selection,s=(e?e():(k)?k():(x?x.createRange().text:0)),f= 'http://' + HOST_NAME + '/clippings/new',l=d.location,e=encodeURIComponent,p='?v=1&u='+e(l.href)%20+'&t='+e(d.title.replace(/^\s*|\s*$/g,''))+'&s='+e(s),u=f+p;location.href=u;
var clipFunctions = function() {

      // Add jquery if site does not have it already
      function addJQuery(){
        if(typeof jQuery == 'undefined') {
          var jQ = document.createElement('script');
          jQ.type = 'text/javascript';
          jQ.src = 'http://ajax.googleapis.com/ajax/libs/jquery/1/jquery.min.js';
          document.body.appendChild(jQ);
        }
      }

      function clippySetIframe(){
        var iframe;
        var d=document;
        var w=window;
        var e=w.getSelection;
        var k=d.getSelection;
        var x=d.selection;
        var s=(e?e():(k)?k():(x?x.createRange().text:0));
        var l=d.location;
        var e=encodeURIComponent;
        var url_params='?v=1&u='+e(l.href)+'%20&t='+e(d.title.replace(/^\s*|\s*$/g,''))+'%20&s='+e(s);

        iframe = document.getElementById("clippyframe").contentWindow;
        if(!iframe)
          return;
        var url = 'http://' + HOST_NAME + '/clippings/new' + url_params;
        try {
          iframe.location.replace(url);
        } catch (e) {
          iframe.location = url;
        }
      }

      return {
            addDiv : function() {
              addJQuery();
              var container = document.createElement("div");
              container.style.padding = "0";
              container.style.margin = "0"; container.style.border = "1px solid #000000";
              container.id = "clippingbox";
              container.style.position = "absolute";
              container.style.top = "0";
              container.style.right = "0";
              container.style.zIndex = 100000;
              container.style.width = "350px";
              container.style.height = "400px";
              container.style.backgroundColor = "white";
              container.innerHTML = '<iframe style="width:100%;height:100%;border:0px;" id="clippyframe"></iframe>';
              // container.innerHTML = javascript:var d=document,w=window,e=w.getSelection,k=d.getSelection,x=d.selection,s=(e?e():(k)?k():(x?x.createRange().text:0)),f= 'http://' + HOST_NAME + '/clippings/new',l=d.location,e=encodeURIComponent,p='?v=1&u='+e(l.href)%20+'&t='+e(d.title.replace(/^\s*|\s*$/g,''))%20+'&s='+e(s),u=f+p;location.href=u;
              document.body.appendChild(container);
              clippySetIframe();
            }
      }
}
clipFunctions().addDiv();
