<?php
session_start();
//koneksi ke database
include 'koneksi.php';
?>


<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<title>Toko Herbal</title>
	<link rel="stylesheet" href="admin/assets/css/bootstrap.css">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
</head>
<body>

<div class="wrap">
		<div class="header">			
			<h1>  Berkah Herbal</h1>
		</div>
<?php include 'menu.php' ; ?>
<!--konten-->
<section class="konten">
	<div class="container">
		<h1>Produk Terbaru</h1>

		<div class="row">

			<?php $ambil = $koneksi->query("SELECT * FROM produk"); ?>
			<?php while($perproduk = $ambil->fetch_assoc()){ ?>
		
			<div class="col-md-3">
				<div class="thumbnail">
					<img src="foto_produk/<?php echo $perproduk['foto_produk']; ?>" alt="">
					<div class="caption">
						<h3><?php echo $perproduk['nama_produk']; ?></h3>
						<h5>Rp. <?php echo number_format($perproduk['harga_produk']); ?></h5>
						<a href="beli.php?id=<?php echo $perproduk['id_produk']; ?>" class="btn btn-primary">Beli</a>
						<a href="detail.php?id=<?php echo $perproduk["id_produk"]; ?>" class="btn btn-default">detail</a>
					</div>
				</div>
			</div>
		<?php } ?>



		</div>
	</div>
</section>
<footer>
	<div class="footer-content">
		<div class="content-about">
			<h2>  Berkah Herbal</h2>
			<p>Toko Obat Berkah Herbal ini sudah berdiri sejak tahun 2016, kami menyediakan macam-macam produk obat herbal yang terpercaya dan sudah melalui izin BPOM.</p>
		</div>
		<div class="content-social">
			<h2>Connect Me</h2>
			<ul>
				<li><a href="#">Whatsapp +6285780383915</a></li>
				<li><a href="#">Facebook Berkah Herbal</a></li>
				<li><a href="#">twitter @berkahherbal</a></li>
			</ul>
		</div>
		<div class="content-pesan">
			<h2>Alamat Toko</h2>
			<p>Jl. Peta Barat Citra 1, Kelurahan Pegadungan, Kecamatan Kalideres, Jakarta Barat.</p>
		</div>
	</div>
	<div class="footer-bottom">
		&copy 2020 | design by Nurul Aini Fauziah
	</div>
</footer>

</body>
</html>