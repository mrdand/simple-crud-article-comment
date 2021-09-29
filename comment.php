<?php
	include 'config.php';
	$id  = $_GET['detail'];
	$sql = "SELECT * FROM komentar WHERE id_art = '$id' ";
	$que = mysqli_query($conn, $sql);
	while ($res = mysqli_fetch_array($que)) { ?>
	
	<p><?php echo $res['nama']; ?></p>
	<p><?php echo $res['tanggal']; ?></p>
	<p><?php echo $res['isi_komentar']; ?></p>

<?php } ?>
<br>
<br>
<br>
<form method="post">
	<input type="text" name="nama" placeholder="Masukkan Nama"> <br>
	<textarea name="isi" rows="10" placeholder="Masukkan Isi Komentar Anda"></textarea> <br>
	<input type="submit" name="btnkomen">
</form>
<?php
	if (isset($_POST['btnkomen'])) {
		$nama = $_POST['nama'];
		$isi  = $_POST['isi'];
		$tgl  = date("d-m-Y");

		$sql  = "INSERT INTO komentar VALUES ('', '$id', '$nama', '$tgl', '$isi')";
		$que  = mysqli_query($conn, $sql);
		echo "Sukses";
		echo "<meta http-equiv='refresh' content='1;url=detail.php?detail=".$id."'>";
	}
?>