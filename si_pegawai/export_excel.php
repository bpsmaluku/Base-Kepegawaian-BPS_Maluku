<?php
    if(isset($_GET['kode'])){
        $sql_cek = "SELECT * FROM tb_pegawai WHERE nip='".$_GET['kode']."'";
        $query_cek = mysqli_query($koneksi, $sql_cek);
        $data_cek = mysqli_fetch_array($query_cek,MYSQLI_BOTH);
    }
?>
<!DOCTYPE html>
<html>

<head>
    <title>Data Pegawai Kantor BPS Provinsi Maluku</title>
</head>

<body>
    <?php
	header("Content-type: application/vnd-ms-excel");
	header("Content-Disposition: attachment; filename=Data Pegawai.xls");
	?>

    <center>
        <h1>Data Pegawai Kantor BPS Provinsi Maluku <br /></h1>
    </center>

    <table border="1">
        <tr>
            <th>No</th>
            <th>NIP</th>
            <th>Nama</th>
            <th>Status</th>
            <th>Dosir</th>
            <th>Rak</th>
        </tr>
        <tr>


    </table>
</body>

</html>