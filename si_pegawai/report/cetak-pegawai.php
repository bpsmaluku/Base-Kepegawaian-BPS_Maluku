<?php
	include "../inc/koneksi.php";
	
	$nip = $_GET['nip'];

	$sql_cek = "SELECT * FROM tb_profil";
	$query_cek = mysqli_query($koneksi, $sql_cek);
	$data_cek = mysqli_fetch_array($query_cek,MYSQLI_BOTH);
	{
?>


<!DOCTYPE html>
<html lang="en">

<head>
    <title>CETAK DATA PEGAWAI</title>
</head>

<body>
    <center>

        <h2>
            <?php echo $data_cek['NAMA_PROFIL']; ?>
        </h2>
        <h3>
            <?php echo $data_cek['ALAMAT']; ?>
            <hr / size="2px" color="black">

            <?php
			}

			$sql_tampil = "select * from tb_pegawai where nip='$nip'";
			$query_tampil = mysqli_query($koneksi, $sql_tampil);
			$no=1;
			while ($data = mysqli_fetch_array($query_tampil,MYSQLI_BOTH)) {
		?>
    </center>

    <center>
        <h4>
            <u>DATA PEGAWAI</u>
        </h4>
    </center>

    <table border="1" cellspacing="0" style="width: 90%" align="center">
        <tbody>
            <tr>
                <td>NIP</td>
                <td>:</td>
                <td>
                    <?php echo $data['NIP']; ?>
                </td>
            </tr>
            <tr>
                <td>Nama</td>
                <td>:</td>
                <td>
                    <?php echo $data['NAMA']; ?>
                </td>
            </tr>
            <tr>
                <td>Status</td>
                <td>:</td>
                <td>
                    <?php echo $data['STATUS']; ?>
                </td>
            </tr>
            <tr>
                <td>Dosir</td>
                <td>:</td>
                <td>
                    <?php echo $data['DOSIR']; ?>
                </td>
            </tr>
            <tr>
                <td>Rak</td>
                <td>:</td>
                <td>
                    <?php echo $data['RAK']; ?>
                </td>
            </tr>
            <?php } ?>
        </tbody>
    </table>


    <script>
    window.print();
    </script>

</body>

</html>