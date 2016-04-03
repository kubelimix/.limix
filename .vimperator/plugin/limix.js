function getCurWs(){
	return "limix";
}
now1 = function getTimes(){
	alert("亲爱的:你已经使用电脑一个小时了哦,保护视力也非常重要的哦,请休息一下吧");
}
var timeAlertIntervalId = setInterval(now1,1000*3600);
stopTimeAlert = function stopTimeAlert(){
	alert(timeAlertIntervalId);
	clearInterval(timeAlertIntervalId);
}

var f_add2youdao = function add2youdao() {
	var CLIP_HOST='http://note.youdao.com/yws';
	try {
		var x=document.createElement('SCRIPT');
		x.type='text/javascript';
		x.src=CLIP_HOST+'/YNoteClipper.js?'+(new Date().getTime()/100000);
		x.charset='utf-8';document.getElementsByTagName('head')[0].appendChild(x);
	}catch(e) {
		alert(e);
	}
}
