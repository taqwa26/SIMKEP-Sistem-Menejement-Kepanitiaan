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

				<!-- DataTables -->
				<div class="card mb-3">
										<div class="card-body">

					<h2>Guide</h2>
					<h4>Sistem Manejement Kepanitiaan</h4><br>
					<p align="justify">Sistem ini dibuat dengan menggunakan skala prioritas,
						dalam pembentukan staff penugasan kepanitiaan suatu kegiatan,
						sistem akan memilih secara random staff yang aktif dan memiliki
						skala prioritas tertinggi dengan staff yang terpilih sebagai 
						staff penaggung jawab sebagai pengecualian.

						staff yang terpilih juga masih dapad di edit oleh admin apabila
						staff yang terpilih tidak dapat memnuhi tugas, izin, sakit atau lain hal
						pada halaman detail kegiatan kepanitiaan.
					</p>
						
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
	function deleteConfirm(url)
	{
		$('#btn-delete').attr('href', url);
		$('#deleteModal').modal();
	}
	</script>
</body>

</html>