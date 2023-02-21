<?php

        $sql_cek = "SELECT * FROM tb_profil";
        $query_cek = mysqli_query($koneksi, $sql_cek);
		$data_cek = mysqli_fetch_array($query_cek,MYSQLI_BOTH);
		{

		
?>
<div class="card card-info">
    <div class="card-header">
        <h3 class="card-title">
            <h1>
                <br><br><br><br>
                <b>
                    <center>SMILE</center>
                </b>
            </h1>
            <h4>
                <center>Sistem Manajemen File</center>
            </h4>
            <br><br><br><br><br><br>
        </h3>
    </div>
    <!-- <div class="card-header">
        <h3 class="card-title">
            <i class="fa fa-flag"></i> Profil Perusahaan
        </h3>
    </div> -->
    <!-- <form action="" method="post" enctype="multipart/form-data">
        <div class="card-body">
            <div class="form-group row">
                <label class="col-sm-2 col-form-label">Nama Perusahaan</label>
                <div class="col-sm-10">
                    <input type="text" class="form-control" id="nama_profil" name="nama_profil"
                        value="<?php echo $data_cek['NAMA_PROFIL']; ?>" readonly />
                </div>
            </div>
            <div class="form-group row">
                <label class="col-sm-2 col-form-label">Alamat</label>
                <div class="col-sm-10">
                    <input type="text" class="form-control" id="alamat" name="alamat"
                        value="<?php echo $data_cek['ALAMAT']; ?>" readonly />
                </div>
            </div>
            <div class="form-group row">
                <label class="col-sm-2 col-form-label">Bidang</label>
                <div class="col-sm-10">
                    <input type="text" class="form-control" id="bidang" name="bidang"
                        value="<?php echo $data_cek['BIDANG']; ?>" readonly />
                </div>
            </div>

        </div>
    </form> -->
</div>

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