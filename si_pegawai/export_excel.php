<?php

  include "inc/koneksi.php";
  header("Cache-Control: must-revalidate, post-check=0, pre-check=0");
  header("Content-type: application/x-msdownload");
  header("Content-Disposition: attachment; filename=Data_Pegawai_BPS.xls");
  header("Pragma: no-cache");
  header("Content-Transfer-Encoding: binary ");
  header("Expires: 0");
  ?>
<table width="100%" border="2" cellspacing="0" cellpadding="0">
    <tbody>
        <tr>
            <td>No</td>
            <td>Nip</td>
            <td>Nama</td>
            <td>Status</td>
            <td>Dosir</td>
            <td>Rak</td>
        </tr>
        <?php
  $i=1;
  $ambildata=mysqli_query($koneksi,"SELECT * FROM tb_pegawai");
  while($tampildata=mysqli_fetch_array($ambildata)){
  ?>
        <tr>
            <td><?php echo $i; ?></td>
            <td><?php echo $tampildata['NIP']; ?></td>
            <td><?php echo $tampildata['NAMA']; ?></td>
            <td><?php echo $tampildata['STATUS']; ?></td>
            <td><?php echo $tampildata['DOSIR']; ?></td>
            <td><?php echo $tampildata['RAK']; ?></td>
        </tr>
        <?php $i=$i+1; } ?>
    </tbody>
</table>