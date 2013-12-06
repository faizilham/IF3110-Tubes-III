<?php

/*** Barang ***/

// model: id, nama, harga, stok, kategori, deskripsi, jumlah_beli
// db: id_barang, nama_barang, harga, stok, kategori, deskripsi, jumlah_beli


require_once "../config.php";

function create_model($data){
	$barang["id"] = intval($data["id_barang"]);
	$barang["nama"] = $data["nama_barang"];
	$barang["harga"] = intval($data["harga"]);
	$barang["stok"] = intval($data["stok"]);
	$barang["kategori"] = $data["kategori"];
	$barang["deskripsi"] = $data["deskripsi"];
	$barang["jumlah_beli"] = intval($data["jumlah_beli"]);
	
	return $barang;
}

function get_barang($id){
	$response["status"] = "error";
	$response["desc"] = "barang tidak ditemukan";
	
	if ($id == "") return response;

	$db = db_connect();
	$query = "SELECT * FROM barang WHERE id_barang = ".$id;
	
	if ($result = $db->query($query)){
		while($row = $result->fetch_assoc()){
			$response["status"] = "ok";
			$response["barang"] = create_model($row);
			
			unset($response["desc"]);
		}
	}
	
	$db->close();
	
	return $response;
}

function get_kategori($cat, $page, $sort, $order){
	$response["status"] = "error";
	$response["desc"] = "barang tidak ditemukan";
	
	if ($cat == "") return response;

	$db = db_connect();
	$query = "SELECT * FROM barang WHERE kategori = '$cat' ORDER BY $sort $order LIMIT $page, 10";
	
	if ($result = $db->query($query)){
		$response["hasil"] = array();
		$response["status"] = "ok";
		unset($response["desc"]);
		while($row = $result->fetch_assoc()){			
			array_push($response["hasil"], create_model($row));
		}
	}
	
	$db->close();
	
	return $response;
}

function search_barang($q, $page, $sort, $order){
	$response["status"] = "error";
	$response["desc"] = "barang tidak ditemukan";
	
	if ($q == "") return response;

	$db = db_connect();
	
	$search = "kategori LIKE '%$q%' or nama_barang LIKE '%$q%'";
	
	if (is_numeric($q))
		$search = "harga = $q";
	
	
	$query = "SELECT * FROM barang WHERE $search ORDER BY $sort $order LIMIT $page, 10";
	
	if ($result = $db->query($query)){
		$response["hasil"] = array();
		$response["status"] = "ok";
		unset($response["desc"]);
		while($row = $result->fetch_assoc()){			
			array_push($response["hasil"], create_model($row));
		}
	}
	
	$db->close();
	
	return $response;
}

?>