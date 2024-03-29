<!DOCTYPE html>
<html lang="en">

<head>
    <title></title>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link href="css/style.css" rel="stylesheet">
    <style>
    .ha-card-header {
        background-color: #2f4c6e;
    }
    </style>
</head>

<body>
    <div class="card card-info">
        <div class="ha-card-header">
            <center>
                <br>
                <font color="#94C03D">
                    <h2>Data Pegawai</h2>
                </font>
                <br>
            </center>
        </div>
        <!-- /.card-header -->
        <div class="card-body">
            <div class="table-responsive">
                <div>
                    <a href="?page=add-pegawai" class="btn btn-primary">
                        <i class="fa fa-edit"></i> Tambah Data</a>
                    <a target="_blank" href="export_excel.php" class="btn btn-success"> EXPORT KE EXCEL</a>
                </div>
                <br>
                <table id="example1" class="table table-bordered table-striped">
                    <thead>
                        <tr>
                            <th>No</th>
                            <th>NIP</th>
                            <th>Nama</th>
                            <th>Status</th>
                            <th>Kondisi Dokumen</th>
                            <th>Dosir</th>
                            <th>Rak</th>
                            <th>Aksi</th>
                        </tr>
                    </thead>
                    <tbody>

                        <?php
              $no = 1;
			  $sql = $koneksi->query("SELECT * from tb_pegawai");
              while ($data= $sql->fetch_assoc()) {
            ?>

                        <tr>
                            <td>
                                <?php echo $no++; ?>
                            </td>
                            <td>
                                <?php echo $data['NIP']; ?>
                            </td>
                            <td>
                                <?php echo $data['NAMA']; ?>
                            </td>
                            <td>
                                <?php echo $data['STATUS']; ?>
                            </td>
                            <td>
                                <?php echo $data['KONDISI']; ?>
                            </td>
                            <td>
                                <?php echo $data['DOSIR']; ?>
                            </td>
                            <td>
                                <?php echo $data['RAK']; ?>
                            </td>

                            <td>
                                <a href="?page=view-pegawai&kode=<?php echo $data['NIP']; ?>" title="Detail"
                                    class="btn btn-info btn-sm">
                                    <i class="fa fa-eye"></i>
                                </a>
                                <a href="?page=edit-pegawai&kode=<?php echo $data['NIP']; ?>" title="Ubah"
                                    class="btn btn-success btn-sm">
                                    <i class="fa fa-edit"></i>
                                </a>
                                </a>
                                <a href="?page=del-pegawai&kode=<?php echo $data['NIP']; ?>"
                                    onclick="return confirm('Apakah anda yakin hapus data ini ?')" title="Hapus"
                                    class="btn btn-danger btn-sm">
                                    <i class="fa fa-trash"></i>
                            </td>
                        </tr>
                        <?php
              }
            ?>
                    </tbody>
                    </tfoot>
                </table>
            </div>
        </div>
        <!-- /.card-body -->
</body>

</html>