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
                    <h2>Profil Perusahaan</h2>
                </font>
                <br>
            </center>
        </div>
        <!-- /.card-header -->
        <div class="card-body">
            <div class="table-responsive">
                <table id="" class="table table-bordered table-striped">
                    <thead>
                        <tr>
                            <th>Nama Perusahaan</th>
                            <th>Alamat</th>
                            <th>Bidang</th>
                            <th>Kelola</th>
                        </tr>
                    </thead>
                    <tbody>

                        <?php
              $no = 1;
              $sql = $koneksi->query("select * from tb_profil");
              while ($data= $sql->fetch_assoc()) {
            ?>

                        <tr>
                            <td>
                                <?php echo $data['NAMA_PROFIL']; ?>
                            </td>
                            <td>
                                <?php echo $data['ALAMAT']; ?>
                            </td>
                            <td>
                                <?php echo $data['BIDANG']; ?>
                            </td>
                            <td>
                                <a href="?page=edit-profil&kode=<?php echo $data['ID_PROFIL']; ?>" title="Ubah"
                                    class="btn btn-success btn-sm">
                                    <i class="fa fa-wrench"></i>
                                </a>
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