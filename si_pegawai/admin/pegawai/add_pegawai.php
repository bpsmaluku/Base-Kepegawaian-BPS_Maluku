<div class="card card-primary">
    <div class="card-header">
        <h3 class="card-title">
            <i class="fa fa-edit"></i> Tambah Data
        </h3>
    </div>
    <form action="" method="post" enctype="multipart/form-data">
        <div class="card-body">

            <div class="form-group row">
                <label class="col-sm-2 col-form-label">Nip</label>
                <div class="col-sm-6">
                    <input type="text" class="form-control" id="nip" name="nip" placeholder="nip" required>
                </div>
            </div>

            <div class="form-group row">
                <label class="col-sm-2 col-form-label">Nama</label>
                <div class="col-sm-6">
                    <input type="text" class="form-control" id="nama" name="nama" placeholder="nama">
                </div>
            </div>

            <div class="form-group row">
                <label class="col-sm-2 col-form-label">Status</label>
                <div class="col-sm-4">
                    <select name="status" id="status" class="form-control">
                        <option>- Pilih -</option>
                        <option>PNS</option>
                        <option>PPNPN</option>
                    </select>
                </div>
            </div>

            <div class="form-group row">
                <label class="col-sm-2 col-form-label">dosir</label>
                <div class="col-sm-6">
                    <input type="text" class="form-control" id="dosir" name="dosir" placeholder="dosir">
                </div>
            </div>

            <div class="form-group row">
                <label class="col-sm-2 col-form-label">rak</label>
                <div class="col-sm-6">
                    <input type="text" class="form-control" id="rak" name="rak" placeholder="rak">
                </div>
            </div>

        </div>
        <div class="card-footer">
            <input type="submit" name="Simpan" value="Simpan" class="btn btn-info">
            <a href="?page=data-pengguna" title="Kembali" class="btn btn-secondary">Batal</a>
        </div>
    </form>
</div>

<?php

    if (isset ($_POST['Simpan'])){
    //mulai proses simpan data
        $sql_simpan = "INSERT INTO tb_pegawai (nip,nama,status,dosir,rak) VALUES (
        '".$_POST['nip']."',
        '".$_POST['nama']."',
        '".$_POST['status']."',
		'".$_POST['dosir']."',
        '".$_POST['rak']."')";
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
    }}
     //selesai proses simpan data