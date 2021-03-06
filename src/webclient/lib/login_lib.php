<?php
	include(dirname(__FILE__)."/rest_request.php");
	
	function checkPassword($user, $password){
		
		$data["username"] = $user;
		$data["password"] = $password;
		
		$response = sendRestRequest("POST", "login", $data);
		
		if ($response["status"] == "ok"){
			
			$data = array("token"=>$response["token"]);
			
			$r = sendRestRequest("GET", "user/$user", $data);
			
			$response["a"] = ($r["user"]["role"] == "admin");
		
			return $response;
		}else{
			return null;
		}
	}
	
	
	if(isset($_POST["ajax"])){
		// handle ajax untuk aksi2 transaksi
		// syarat: $_POST["ajax"] terdefinisi
		
		$request = json_decode($_POST["ajax"], true);
		$response = array("status" => "error");
		
		switch($request["action"]){
			case "login":
				$tok = checkPassword($request["user"], $request["pass"]);
				if ( $tok!=null){
					$response = $tok;
				}
			
			break;
			default:
				exit();
			break;
		}
		
		exit(json_encode($response));
	}
	
?>