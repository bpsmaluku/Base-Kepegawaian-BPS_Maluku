<div class="card card-primary">
    <div class="card-header">
        <h3 class="card-title">
            <i class="fa fa-edit"></i> Tambah Data
        </h3>
    </div>
    <form action="" method="post" enctype="multipart/form-data">
        <div class="card-body">

            <div class="form-group row">
                <label class="col-sm-2 col-form-label">NIP</label>
                <div class="col-sm-5">
                    <input type="text" class="form-control" id="nip" name="nip" placeholder="NIP" required>
                </div>
            </div>

            <div class="form-group row">
                <label class="col-sm-2 col-form-label">Nama Pegawai</label>
                <div class="col-sm-5">
                    <input type="text" class="form-control" id="NAMA" name="nama" placeholder="Nama Pegawai" required>
                </div>
            </div>

            <div class="form-group row">
                <label class="col-sm-2 col-form-label">Status</label>
                <div class="col-sm-5">
                    <select name="status" id="status" class="form-control">
                        <option>- Pilih -</option>
                        <option>PNS</option>
                        <option>PPNPN</option>
                    </select>
                </div>
            </div>

            <div class="form-group row">
                <label class="col-sm-2 col-form-label">DOSIR</label>
                <div class="col-sm-10">
                    <input type="text" class="form-control" id="DOSIR" name="dosir" placeholder="dosir" required>
                </div>
            </div>

            <div class="form-group row">
                <label class="col-sm-2 col-form-label">RAK</label>
                <div class="col-sm-10">
                    <input type="text" class="form-control" id="RAK" name="rak" placeholder="rak" required>
                </div>
            </div>

            <div class="form-group row">
                <label class="col-sm-2 col-form-label">Foto Pegawai</label>
                <div class="col-sm-6">
                    <input type="file" id="FOTO" name="foto">
                    <p class="help-block">
                        <font color="red">"Format file Jpg/Png"</font>
                    </p>
                </div>
            </div>

        </div>
        <div class="card-footer">
            <input type="submit" name="Simpan" value="Simpan" class="btn btn-info">
            <a href="?page=data-pegawai" title="Kembali" class="btn btn-secondary">Batal</a>
        </div>
    </form>
</div>

<?php
	$sumber = @$_FILES['foto']['tmp_name'];
	$target = 'foto/';
	$nama_file = @$_FILES['foto']['name'];
	$pindah = move_uploaded_file($sumber, $target.$nama_file);

    if (isset ($_POST['Simpan'])){

		if(!empty($sumber)){
        $sql_simpan = "INSERT INTO tb_pegawai (nip, nama, status, dosir, rak, foto) VALUES (
            '".$_POST['nip']."',
			'".$_POST['nama']."',
			'".$_POST['status']."',
			'".$_POST['dosir']."',
			'".$_POST['rak']."',
            '".$nama_file."')";
        $query_simpan = mysqli_query($koneksi, $sql_simpan);
        mysqli_close($koneksi);

    if ($query_simpan) {
      echo "<script>
      Swal.fire({title: 'Tambah Data Berhasil',text: '',icon: 'success',confirmButtonText: 'OK'
      }).then((result) => {if (result.value){
          window.location = 'index.php?page=data-pegawai';
          }
      })</script>";
      }else{
      echo "<script>
      Swal.fire({title: 'Tambah Data Gagal',text: '',icon: 'error',confirmButtonText: 'OK'
      }).then((result) => {if (result.value){
          window.location = 'index.php?page=add-pegawai';
          }
      })</script>";
	}
	}
    elseif(empty($sumber)){
		echo "<script>
		Swal.fire({title: 'Gagal, Foto Wajib Diisi',text: '',icon: 'error',confirmButtonText: 'OK'
		}).then((result) => {
			if (result.value) {
				window.location = 'index.php?page=add-pegawai';
			}
		})</script>";
	}
	}
     //selesai proses simpan data