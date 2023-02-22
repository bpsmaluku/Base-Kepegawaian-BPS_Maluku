<!DOCTYPE html>
<html lang="en">

<head>
    <title></title>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link href="css/style.css" rel="stylesheet">
    <style>
    .harfely-card-header {
        /* width: 50%;
        height: 100%; */
        overflow: hidden;
        position: relative;
        background-image: url("bps1.png");
        font-style: color=#354c63;
        background-size: cover;
        background-repeat: no-repeat;
        /* position: absolute; */
        text-transform: uppercase;
        background-position: center;
        background-repeat: no-repeat;
        background-size: cover;
        text-align: center;
        justify-content: center;
        animation: change 30s infinite ease-in-out;
        font-size: xx-large;

    }
    </style>
</head>

<body>
    <div class="card card-info">
        <div class="harfely-card-header col-md-12">
            <h3 class="card-title">
                <h1>
                    <br><br>
                    <b>
                        <font size=" 40px" color="red">
                            <center>SMILE &#128513;</center>
                        </font>
                    </b>
                </h1>
                <h4>
                    <font color="red">
                        <b>
                            <center>Sistem Manajemen File</center>
                        </b>
                    </font>
                </h4>
                <br><br>
            </h3>
        </div>

    </div>
</body>

</html>

<?php

        $sql_cek = "SELECT * FROM tb_profil";
        $query_cek = mysqli_query($koneksi, $sql_cek);
		$data_cek = mysqli_fetch_array($query_cek,MYSQLI_BOTH);
		{

		
?>


<?php
		}
	$sql = $koneksi->query("SELECT count(nip) as lokal from tb_pegawai");
	while ($data= $sql->fetch_assoc()) {
	
		$lokal=$data['lokal'];
	}
?>

<?php
	$sql = $koneksi->query("SELECT count(nip) as putra from tb_pegawai where status='PNS'");
	while ($data= $sql->fetch_assoc()) {
		$putra=$data['putra'];
	}
?>

<?php
	$sql = $koneksi->query("SELECT count(nip) as putri from tb_pegawai where status='PPNPN'");
	while ($data= $sql->fetch_assoc()) {
	
		$putri=$data['putri'];
	}
?>

<?php
	$sql = $koneksi->query("SELECT count(id_pengguna) as boyong from tb_pengguna");
	while ($data= $sql->fetch_assoc()) {
	
		$boyong=$data['boyong'];
	}
?>

<div class="row">
    <div class="col-lg-3 col-6">
        <!-- small box -->
        <div class="small-box bg-primary">
            <div class="inner">
                <h3>
                    <?php echo $lokal;  ?>
                </h3>

                <p>Jumlah Pegawai</p>
            </div>
            <div class="icon">
                <i class="ion ion-person-add"></i>
            </div>
            <a href="index.php?page=data-pegawai" class="small-box-footer">Selengkapnya
                <i class="fas fa-arrow-circle-right"></i>
            </a>
        </div>
    </div>
    <!-- ./col -->
    <div class="col-lg-3 col-6">
        <!-- small box -->
        <div class="small-box bg-success">
            <div class="inner">
                <h3>
                    <?php echo $putra;  ?>
                </h3>

                <p>Status PNS</p>
            </div>
            <div class="icon">
                <i class="ion ion-pie-graph"></i>
            </div>
            <a href="#" class="small-box-footer">Informasi</a>
        </div>
    </div>
    <!-- ./col -->
    <div class="col-lg-3 col-6">
        <!-- small box -->
        <div class="small-box bg-danger">
            <div class="inner">
                <h3>
                    <?php echo $putri; ?>
                </h3>

                <p>Status PPNPN</p>
            </div>
            <div class="icon">
                <i class="ion ion-pie-graph"></i>
            </div>
            <a href="#" class="small-box-footer">Informasi</a>
        </div>
    </div>
    <!-- ./col -->
    <div class="col-lg-3 col-6">
        <!-- small box -->
        <div class="small-box bg-warning">
            <div class="inner">
                <h3>
                    <?php echo $boyong;  ?>
                </h3>

                <p>Pengguna Sistem</p>
            </div>
            <div class="icon">
                <i class="ion ion-android-happy"></i>
            </div>
            <a href="#" class="small-box-footer">Informasi</a>
        </div>
    </div>