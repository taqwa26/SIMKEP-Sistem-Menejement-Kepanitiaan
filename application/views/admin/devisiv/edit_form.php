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

				<!-- Card  -->
				<div class="card mb-3">
					<div class="card-header">

						<a href="<?php echo site_url('admin/devisi/') ?>"><i class="fas fa-arrow-left"></i>
							Back</a>
					</div>
					<div class="card-body">

						<form action="<?php base_url('admin/devisi/edit') ?>" method="post" enctype="multipart/form-data">

							<input type="hidden" name="id" value="<?php echo $devisi->devisi_id?>" />

							<div class="form-group">
								<label for="devisi">Tanggung Jawab*</label>
								<input class="form-control <?php echo form_error('devisi') ? 'is-invalid':'' ?>"
								 type="text" name="devisi" placeholder="Jenis Tanggung Jawab" value="<?php echo $devisi->devisi ?>" />
								<div class="invalid-feedback">
									<?php echo form_error('devisi') ?>
								</div>
							</div>

							<div class="form-group">
								<label for="nama">Kepala Penaggung Jawab*</label><br/>
								<select name="nama"class="form-control <?php echo form_error('nama') ? 'is-invalid':'' ?>">
									<option value="<?php echo $devisi->nama;?>"><?php echo $devisi->nama;?></option>
									<?php foreach($devisii as $devisiv):?>
	                    			<option value="<?php echo $devisiv->name;?>"><?php echo $devisiv->name;?></option>
	                    			<?php endforeach;?>
	                    		</select>
								<div class="invalid-feedback">
									<?php echo form_error('nama') ?>
								</div>
							</div>

							<div class="form-group">
								<label for="keterangan">Keterangan</label>
								<textarea class="form-control <?php echo form_error('keterangan') ? 'is-invalid':'' ?>"
								 name="keterangan" placeholder="devisi keterangan..."><?php echo $devisi->keterangan ?></textarea>
								<div class="invalid-feedback">
									<?php echo form_error('keterangan') ?>
								</div>
							</div>

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