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

				<?php if ($this->session->flashdata('success')): ?>
				<div class="alert alert-success" role="alert">
					<?php echo $this->session->flashdata('success'); ?>
				</div>
				<?php endif; ?>

				<div class="card mb-3">
					<div class="card-header">
						<a href="<?php echo site_url('admin/kepanitiaan/') ?>"><i class="fas fa-arrow-left"></i> Back</a>
					</div>
					<div class="card-body">

						<form action="<?php base_url('admin/kepanitiaan/add') ?>" method="post" enctype="multipart/form-data" >
							
							<div class="form-group">
								<label for="surat">No. Surat</label>
								<input class="form-control <?php echo form_error('surat') ? 'is-invalid':'' ?>"
								 type="text" name="surat" placeholder="No. Surat Kegiatan" />
								<div class="invalid-feedback">
									<?php echo form_error('surat') ?>
								</div>
							</div>

							<input type="hidden" name="relasi" value="<?php echo uniqid();?>" />

							<div class="form-group">
								<label for="nama">Jenis Kegiatan*</label>
								<input class="form-control <?php echo form_error('nama') ? 'is-invalid':'' ?>"
								 type="text" name="nama" placeholder="Jenis Kegiatan" />
								<div class="invalid-feedback">
									<?php echo form_error('nama') ?>
								</div>
							</div>
							
							<div class="form-group">
								<label for="tanggal">Waktu Pelaksana*</label>
								<input class="form-control <?php echo form_error('tanggal') ? 'is-invalid':'' ?>"
								 type="date" name="tanggal" />
								<div class="invalid-feedback">
									<?php echo form_error('tanggal') ?>
								</div>
							</div>
							
							<div class="form-group">
								<label for="jumlah">Jumlah Staff yang akan Berpartisipasi*</label><br/>
								<select name="jumlah"class="form-control <?php echo form_error('jumlah') ? 'is-invalid':'' ?>">
									<option value="0">-PILIH-</option>
									<?php for($i=1; $i<100; $i++) {
	                    			echo "<option value=$i>$i</option>";
									} ?>
	                    		</select>
								<div class="invalid-feedback">
									<?php echo form_error('jumlah') ?>
								</div>
							</div>
							<input type="hidden" name="count" value="<?php echo $devisicount?>" />

							<div class="form-group">
								<label for="keterangan">Keterangan</label>
								<textarea class="form-control <?php echo form_error('keterangan') ? 'is-invalid':'' ?>"
								 name="keterangan" placeholder="Keterangan..."></textarea>
								<div class="invalid-feedback">
									<?php echo form_error('keterangan') ?>
								</div>
							</div>

							<input type="hidden" name="count" value="<?php echo $devisicount?>" />

							<input class="btn btn-success" type="submit" name="btn" value="Save" />
						</form>

					</div>

					<div class="card-footer small text-muted">
						* required fields
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

		<?php $this->load->view("admin/_partials/js.php") ?>

</body>

</html>