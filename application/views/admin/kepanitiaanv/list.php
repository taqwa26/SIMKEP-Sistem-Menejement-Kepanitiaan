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

				<?php $this->load->view("admin/_partials/breadcrumb.php") ?>

				<!-- DataTables -->
				<div class="card mb-3">
					<div class="card-header">
						<a href="<?php echo site_url('admin/kepanitiaan/add') ?>"><i class="fas fa-plus"></i> Add
							New</a>
					</div>
					<div class="card-body">

						<div class="table-responsive">
							<table class="table table-hover" id="dataTable" width="100%" cellspacing="0">
								<thead>
									<tr>
										<th>No. Surat</th>
										<th>Nama Kegiatan</th>
										<th>Tanggal</th>
										<th>Keterangan</th>
										<th>Action</th>
									</tr>
								</thead>
								<tbody>
									<?php foreach ($panitia as $panitiav): ?>
									<tr>
										<td>
											<?php echo $panitiav->no_surat ?>
										</td>
										<td width="150">
											<?php echo $panitiav->nama ?>
										</td>
										<td>
											<?php echo $panitiav->tanggal ?>
										</td>
										<td class="small">
											<?php echo substr($panitiav->keterangan, 0, 120) ?>...</td>
										<td width="200">
											<a href="<?php echo site_url('admin/kepanitiaan/detail/'.$panitiav->kepanitiaan_id) ?>"
												class="btn btn-small"><i class="fas fa-eye"></i> Detail</a>
											<a href="<?php echo site_url('admin/kepanitiaan/edit/'.$panitiav->kepanitiaan_id) ?>"
												class="btn btn-small"><i class="fas fa-edit"></i> Edit</a>
											<a href="<?php echo site_url('admin/cetak/') ?>"
												class="btn btn-small"><i class="fas fa-print"></i> Print</a>
											<a onclick="deleteConfirm('<?php echo site_url('admin/kepanitiaan/delete/'.$panitiav->kepanitiaan_id) ?>')"
												href="#!" class="btn btn-small text-danger"><i class="fas fa-trash"></i>
												Hapus</a>
										</td>
									</tr>
									<?php endforeach; ?>

								</tbody>
							</table>
						</div>
					</div>
				</div>

			</div>
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
	<script>
		function deleteConfirm(url) {
			$('#btn-delete').attr('href', url);
			$('#deleteModal').modal();
		}

	</script>
</body>

</html>
