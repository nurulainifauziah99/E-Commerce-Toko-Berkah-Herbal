<?php
session_start();
include 'koneksi.php'; 
// mendapatkan id_produk dari url
$id_produk = $_GET['id'];


// jk sdh ada produk itu dikeranjang, maka produk itu jumlahnya di +1
if(isset($_SESSION['keranjang'][$id_produk]))
{
	$_SESSION['keranjang'][$id_produk]+=1;
}
// selainitu (blm ada di keranjang), maka produk itu dibeli 1
else
{
	$_SESSION['keranjang'][$id_produk] = 1;
}



//echo "<pre>";
//print_r($_SESSION);
//echo "</pre>";
//larikan ke halaman keranjang
echo "<script>alert('produk telah masuk ke keranjang belanja');</script>;";
echo "<script>location='keranjang.php';</script>";
?>