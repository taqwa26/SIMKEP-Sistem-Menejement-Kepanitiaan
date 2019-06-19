<!DOCTYPE html>
<html lang="en">

<head>
	<?php $this->load->view("admin/_partials/head.php") ?>
</head>

<body id="page-top">

	<?php $this->load->view("admin/_partials/navbar.php") ?>

	<div id="wrapper">

		<?php $this->load->view("admin/_partials/sidebar.php") ?>

		<div id="content-wrapper">

			<div class="container-fluid">

				<!-- 
        karena ini halaman overview (home), kita matikan partial breadcrumb.
        Jika anda ingin mengampilkan breadcrumb di halaman overview,
        silahkan hilangkan komentar (//) di tag PHP di bawah.
        -->
				<?php //$this->load->view("admin/_partials/breadcrumb.php") ?>

				<!-- Icon Cards-->
				<div class="row" align="center">
					<div class="col-xl-31 mb-3">
						<div class="card text-white bg-danger o-hidden h-100">
							<div class="card-body">
								<div class="card-body-icon">
									<i class="fas fa-fw fa-list"></i>
								</div>
								<div class="mr-5">Paitia Pelaksana : <?php echo $panitia->nama ?><br />Tanggal
									<?php echo $panitia->tanggal ?></div>
							</div>
							<a class="card-footer text-white clearfix small z-1"
								href="<?php echo site_url('admin/kepanitiaan/') ?>">
								<span class="float-left">
									<i class="fas fa-angle-left">-</i>
								</span>
								<span class="float-left">Kembali</span>
							</a>
						</div>
					</div>
				</div>
				<a href="<?php echo site_url('admin/cetak/') ?>"
				class="btn btn-small"><i class="fas fa-print"></i> Print</a>
				<br>
				<!-- DataTables -->
				<label>
					<h2>Staff Panitia Pelaksana</h2>
				</label>
				<div class="card mb-3">
					<div class="card-body">
						<div class="table-responsive">
							<table class="table table-hover" id="dataTable" width="100%" cellspacing="0">
								<thead>
									<tr>
										<th>No. Absen</th>
										<th>Nama</th>
										<th>Action</th>
									</tr>
								</thead>
								<tbody>
									<?php foreach ($relasi as $staffv): ?>
									<tr>
										<td>
											<?php echo $staffv->no_absen ?>
										</td>
										<td width="500">
											<?php echo $staffv->name ?>
										</td>
										<td width="250">
											<a href="<?php echo site_url('admin/kepanitiaan/config/'.$staffv->kepanitiaan_id) ?>"
												class="btn btn-small"><i class="fas fa-edit"></i> Edit</a>
											<!-- <a onclick="deleteConfirm('<?php echo site_url('admin/staff/delete/'.$staffv->panitia_id) ?>')"
												href="#!" class="btn btn-small text-danger"><i class="fas fa-trash"></i>
												Hapus</a> -->
										</td>
									</tr>
									<?php endforeach; ?>

								</tbody>
							</table>
						</div>
					</div>
				</div>
				

				<br /><br /><br />

				<label>
					<h2>Panitia Penaggung Jawab</h2>
				</label>
				<div class="card mb-3">
					<div class="card-body">
						<div class="table-responsive">
							<table class="table table-hover" id="dataTable" width="100%" cellspacing="0">
								<thead>
									<tr>
										<th>No. Absen</th>
										<th>Kepla Penaggung Jawab</th>
										<th>Tanggung Jawab</th>
									</tr>
								</thead>
								<tbody>
									<?php foreach ($devisi as $devisiv): ?>
									<tr>
										<td>
											<?php echo $devisiv->no_absen ?>
										</td>
										<td>
											<?php echo $devisiv->nama ?>
										</td>
										<td>
											<?php echo $devisiv->devisi ?>
										</td>
									</tr>
									<?php endforeach; ?>
								</tbody>
							</table>
						</div>
					</div>
				</div>

			</div>
		</div>

		<!-- Area Chart Example-->

		<!-- /.container-fluid -->

		<!-- Sticky Footer -->
		<?php $this->load->view("admin/_partials/footer.php") ?>

	</div>
	<!-- /.content-wrapper -->

	</div>
	<!-- /#wrapper -->


	<?php $this->load->view("admin/_partials/scrolltop.php") ?>
	<?php $this->load->view("admin/_partials/modal.php") ?>
	<?php $this->load->view("admin/_partials/js.php") ?>

</body>

</html>
