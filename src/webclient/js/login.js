//DEPENDENCIES: ajax.js
function login(){
	var username = prompt("Username:");
	if(username==null) return;
	var password = prompt("Password:");
	if(password==null) return;

	var data = {"action": "login", "user": username, "pass": password};
	
	var callback = function(response){
		if(response.status=="ok"){
			var hasil = {"user": username, "id": response.token, "a": response.a};
			localStorage.setItem("logininfo", JSON.stringify(hasil));
			
			if (response.a){
				window.location = "admin_barang.php?cat=Makanan";
			}else{
				location.reload(true)
			}
		}else{
			//alert(response.raw);
			alert("Username atau password salah!");
		}	
	}
	
	sendAjax(data, "lib/login_lib.php", callback);
}

function redirect_login(){
	if(getLoginInfo() == null){
		window.location = "registration.php";
		return true;
	}
	
	return false;
}

function is_admin(){
	info = getLoginInfo();
	if(!info || (info.a != 1)){
		return false
	}
	
	return true;
}

function redirect_admin(){
	info = getLoginInfo();
	if(!info || (info.a != 1)){
		window.location = "index.php";
		return true;
	}
	
	return false;
}

function logout(){
	loginfo = getLoginInfo();
	data = {"username" : loginfo.user, "token" : loginfo.id};
	
	var callback = function(response){
		if(response.status=="ok"){
			localStorage.removeItem("logininfo");
			localStorage.removeItem("shoppingbag");
	
			window.location = "index.php";
		}else{
			alert(response.desc);
		}	
	}

	sendRestAjax("POST", "logout", data, callback);
}

function getLoginInfo(){
	if (localStorage.getItem("logininfo") === null){
		return null;
	}
	
	return JSON.parse(localStorage.logininfo);
}

function searchBoxFocus(sbox){
	sbox.classList.remove("search-grey");
	
	if (sbox.value == "Search"){
		sbox.value = "";
	}
}

function searchBoxBlur(sbox){
	if(sbox.value == ""){
		sbox.classList.add("search-grey");
		sbox.value = "Search";
	}
}
