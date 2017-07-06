if (!limix){
  var limix = {}
}
limix.tags = function(){
  	if(document && document.title && document.title.contains("limix.tags")){
	    if (!(typeof context == "undefined")){
	        document.title = document.title.replace(/limix.tags[^\]]*/g,"limix.tags[" + context.bookmark.tags);
		}
	}else{
	    if (!(typeof context == "undefined")){
	  		document.title = "limix.tags[" + context.bookmark.tags + "] " + document.title;
		}
	}
};
// limix.tags.piId = setInterval(limix.tags,2000);
limix.shadowsocket = function(){
	var password = document.getElementById("pwusa").innerHTML
}
