<?php

    if(isset($_GET['kode'])){
        $sql_cek = "SELECT * FROM tb_pegawai WHERE nip='".$_GET['kode']."'";
        $query_cek = mysqli_query($koneksi, $sql_cek);
        $data_cek = mysqli_fetch_array($query_cek,MYSQLI_BOTH);
    }
?>

<div class="card card-success">
    <div class="card-header">
        <h3 class="card-title">
            <i class="fa fa-edit"></i> Ubah Data
        </h3>
    </div>
    <form action="" method="post" enctype="multipart/form-data">
        <div class="card-body">

            <div class="form-group row">
                <label class="col-sm-2 col-form-label">NIP</label>
                <div class="col-sm-6">
                    <input type="text" class="form-control" id="nip" name="nip" placeholder="nip"
                        value="<?php echo $data_cek['NIP']; ?>" readonly />
                </div>
            </div>

            <div class="form-group row">
                <label class="col-sm-2 col-form-label">Nama</label>
                <div class="col-sm-6">
                    <input type="text" class="form-control" id="nama" name="nama"
                        value="<?php echo $data_cek['NAMA']; ?>" />
                </div>
            </div>

            <div class="form-group row">
                <label class="col-sm-2 col-form-label">Status</label>
                <div class="col-sm-4">
                    <select name="status" id="status" class="form-control">
                        <option value="">-- Pilih Status Pegawai --</option>
                        <?php
                //menhecek data yg dipilih sebelumnya
                if ($data_cek['STATUS'] == "PNS") echo "<option value='PNS' selected>PNS</option>";
                else echo "<option value='PNS'>PNS</option>";

                if ($data_cek['STATUS'] == "PPNPN") echo "<option value='PPNPN' selected>PPNPN</option>";
                else echo "<option value='PPNPN'>PPNPN</option>";
            ?>
                    </select>
                </div>
            </div>

            <div class="form-group row">
                <label class="col-sm-2 col-form-label">Kondisi Dokumen</label>
                <div class="col-sm-4">
                    <select name="kondisi" id="kondisi" class="form-control">
                        <option value="">-- Pilih Kondisi Dokumen --</option>
                        <?php
                //menhecek data yg dipilih sebelumnya
                if ($data_cek['KONDISI'] == "Baik") echo "<option value='Baik' selected>Baik</option>";
                else echo "<option value='Baik'>Baik</option>";

                if ($data_cek['KONDISI'] == "Rusak") echo "<option value='Rusak' selected>Rusak</option>";
                else echo "<option value='Rusak'>Rusak</option>";
            ?>
                    </select>
                </div>
            </div>

            <div class="form-group row">
                <label class="col-sm-2 col-form-label">Dosir</label>
                <div class="col-sm-6">
                    <input type="text" class="form-control" id="dosir" name="dosir"
                        value="<?php echo $data_cek['DOSIR']; ?>" />
                </div>
            </div>

            <div class="form-group row">
                <label class="col-sm-2 col-form-label">Rak</label>
                <div class="col-sm-6">
                    <input type="text" class="form-control" id="rak" name="rak"
                        value="<?php echo $data_cek['RAK']; ?>" />
                </div>
            </div>


        </div>
        <div class="card-footer">
            <input type="submit" name="Ubah" value="Simpan" class="btn btn-success">
            <a href="?page=data-pegawai" title="Kembali" class="btn btn-secondary">Batal</a>
        </div>
    </form>
</div>



<?php
    if (isset ($_POST['Ubah'])){
    $sql_ubah = "UPDATE tb_pegawai SET
        nama='".$_POST['nama']."',
        status='".$_POST['status']."',
        kondisi='".$_POST['kondisi']."',
        dosir='".$_POST['dosir']."',
        rak='".$_POST['rak']."'
        WHERE nip='".$_POST['nip']."'";
    $query_ubah = mysqli_query($koneksi, $sql_ubah);
    mysqli_close($koneksi);

    if ($query_ubah) {
        echo "<script>
      Swal.fire({title: 'Ubah Data Berhasil',text: '',icon: 'success',confirmButtonText: 'OK'
      }).then((result) => {if (result.value)
        {window.location = 'index.php?page=data-pegawai';
        }
      })</script>";
      }else{
      echo "<script>
      Swal.fire({title: 'Ubah Data Gagal',text: '',icon: 'error',confirmButtonText: 'OK'
      }).then((result) => {if (result.value)
        {window.location = 'index.php?page=data-pegawai';
        }
      })</script>";
    }}
?>