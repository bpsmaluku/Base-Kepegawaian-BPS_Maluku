<?php

    if(isset($_GET['kode'])){
        $sql_cek = "SELECT * FROM tb_pegawai WHERE nip='".$_GET['kode']."'";
        $query_cek = mysqli_query($koneksi, $sql_cek);
        $data_cek = mysqli_fetch_array($query_cek,MYSQLI_BOTH);
    }
?>
<div class="row">

    <div class="col-md-12">
        <div class="card card-info">
            <div class="card-header">
                <h3 class="card-title">Detail Pegawai</h3>

                <div class="card-tools">
                </div>
            </div>
            <div class="card-body p-0">
                <table class="table">
                    <tbody>
                        <tr>
                            <td style="width: 100px">
                                <b>NIP</b>
                            </td>
                            <td>:
                                <?php echo $data_cek['NIP']; ?>
                            </td>
                        </tr>
                        <tr>
                            <td style="width: 100px">
                                <b>Nama</b>
                            </td>
                            <td>:
                                <?php echo $data_cek['NAMA']; ?>
                            </td>
                        </tr>
                        <tr>
                            <td style="width: 140px">
                                <b>Status</b>
                            </td>
                            <td>:
                                <?php echo $data_cek['STATUS']; ?>
                            </td>
                        </tr>
                        <tr>
                            <td style="width: 140px">
                                <b>Dosir</b>
                            </td>
                            <td>:
                                <?php echo $data_cek['DOSIR']; ?>
                            </td>
                        </tr>
                        <tr>
                            <td style="width: 140px">
                                <b>Rak</b>
                            </td>
                            <td>:
                                <?php echo $data_cek['RAK']; ?>
                            </td>
                        </tr>
                    </tbody>
                </table>
                <div class="card-footer">
                    <a href="?page=data-pegawai" class="btn btn-warning">Kembali</a>

                    <a href="./report/cetak-pegawai.php?nip=<?php echo $data_cek['NIP']; ?>" target=" _blank"
                        title="Cetak Data Pegawai" class="btn btn-primary">Print</a>
                </div>
            </div>
        </div>
    </div>
</div>