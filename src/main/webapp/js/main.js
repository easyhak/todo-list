/*$('button').click(function(){
	id = $(this).parent().attr('id')
	type = $(this).parent().parent().attr('id')
	console.log(id)
	console.log(type)
	var oReq = new XMLHttpRequest();
	var typeDestination = (type === "TODO") ? "DOING" : "DONE"
	oReq.addEventListener("load",function(){
		if(oReq.status === 200){
			console.log("success");
			var parent = document.getElementById(typeDestination);
			var item = document.getElementById(id);
			item.removeChild(item.children[2])
			if(typeDestination === "DOING"){
				let button = document.createElement('button');
				button.innerHTML = '▶';
				item.insertAdjacentElement('beforeend', button);
			}
			parent.appendChild(item)
		}
	})
	oReq.open("POST", "./type");
	oReq.setRequestHeader("Content-Type", "application/x-www-form-urlencoded");
	oReq.send("id=" + id + "&type=" + typeDestination);
})*/
function button_click(id, type) {
	console.log(id)
	console.log(type)
	var oReq = new XMLHttpRequest();
	var typeDestination = (type === 'TODO') ? 'DOING' : 'DONE';
	oReq.addEventListener("load", function() {
		if (oReq.status === 200) {
			console.log("success");
			var parent = document.getElementById(typeDestination);
			var item = document.getElementById(id);
			item.removeChild(item.children[2]);
			if (typeDestination === 'DOING') {
				var button = "<input class=\"button\" type=\"button\" onclick=\"button_click(" + id + ", \'" + typeDestination + "\');\" value=\"▶\"/>";
				item.insertAdjacentHTML('beforeend', button);
			}
			parent.appendChild(item);
		}
	});
	oReq.open("POST", "./type");
	oReq.setRequestHeader("Content-Type", "application/x-www-form-urlencoded");
	oReq.send("id=" + id + "&type=" + typeDestination);
}