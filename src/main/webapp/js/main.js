/*$('button').click(function(){
	id = $(this).parent().attr('id')
	type = $(this).parent().parent().attr('id')
	console.log(id)
	console.log(type)

	var xhr = new XMLHttpRequest();
	var typeDestination = (type === "TODO") ? "DOING" : "DONE"
	xhr.addEventListener("load",function(){
		if(xhr.status === 200){
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
	xhr.open("POST", "./type");
	xhr.setRequestHeader("Content-Type", "application/x-www-form-urlencoded");
	xhr.send("id=" + id + "&type=" + typeDestination);
})*/
function button_click(id, type) {
	console.log(id)
	console.log(type)
	var xhr = new XMLHttpRequest();
	var typeDestination = (type === 'TODO') ? 'DOING' : 'DONE';
	xhr.addEventListener("load", function() {
		if (xhr.status === 200) {
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
	xhr.open("POST", "./type");
	xhr.setRequestHeader("Content-Type", "application/x-www-form-urlencoded");
	xhr.send("id=" + id + "&type=" + typeDestination);
}