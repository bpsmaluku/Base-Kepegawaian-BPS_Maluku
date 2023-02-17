<div class="card card-info">
    <div class="card-header">
        <h3 class="card-title">
            <i class="fa fa-table"></i> Data Pegawai
        </h3>
    </div>
    <!-- /.card-header -->
    <div class="card-body">
        <div class="table-responsive">
            <div>
                <a href="?page=add-pegawai" class="btn btn-primary">
                    <i class="fa fa-edit"></i> Tambah Data</a>
            </div>
            <br>
            <table id="example1" class="table table-bordered table-striped">
                <thead>
                    <tr>
                        <th>No</th>
                        <th>Foto</th>
                        <th>NIP</th>
                        <th>Nama</th>
                        <th>Alamat</th>
                        <th>No_HP</th>
                        <th>Status</th>
                        <th>Jabatan</th>
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
                        <td align="center">
                            <img src="foto/<?php echo $data['FOTO']; ?>" width="60px" />
                        </td>
                        <td>
                            <?php echo $data['NIP']; ?>
                        </td>
                        <td>
                            <?php echo $data['NAMA']; ?>
                        </td>
                        <td>
                            <?php echo $data['ALAMAT']; ?>
                        </td>
                        <td>
                            <?php echo $data['NO_HP']; ?>
                        </td>
                        <td>
                            <?php echo $data['STATUS']; ?>
                        </td>
                        <td>
                            <?php echo $data['JABATAN']; ?>
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
                            </a>
                            <a href="?page=edit-pegawai&kode=<?php echo $data['NIP']; ?>" title="Ubah"
                                class="btn btn-success btn-sm">
                                <i class="fa fa-edit"></i>
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