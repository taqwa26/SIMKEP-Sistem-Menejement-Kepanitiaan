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
		<div class="row">
			<div class="col-xl-3 col-sm-6 mb-3">
			<div class="card text-white bg-primary o-hidden h-100">
				<div class="card-body">
				<div class="card-body-icon">
					<i class="fas fa-fw fa-users"></i>
				</div>
				<div class="mr-5"><?=$staff?> Anggota Staff</div>
				</div>
				<a class="card-footer text-white clearfix small z-1" href="<?php echo site_url('admin/staff') ?>">
				<span class="float-left">View Details</span>
				<span class="float-right">
					<i class="fas fa-angle-right"></i>
				</span>
				</a>
			</div>
			</div>
			<div class="col-xl-3 col-sm-6 mb-3">
			<div class="card text-white bg-warning o-hidden h-100">
				<div class="card-body">
				<div class="card-body-icon">
					<i class="fas fa-fw fa-address-book"></i>
				</div>
				<div class="mr-1"><?=$devisi?> Penanggunag Jawab</div>
				</div>
				<a class="card-footer text-white clearfix small z-1" href="<?php echo site_url('admin/devisi') ?>">
				<span class="float-left">View Details</span>
				<span class="float-right">
					<i class="fas fa-angle-right"></i>
				</span>
				</a>
			</div>
			</div>
			<div class="col-xl-3 col-sm-6 mb-3">
			<div class="card text-white bg-success o-hidden h-100">
				<div class="card-body">
				<div class="card-body-icon">
					<i class="fas fa-fw fa-list"></i>
				</div>
				<div class="mr-5"><?=$kepanitiaan?> Kegiatan</div>
				</div>
				<a class="card-footer text-white clearfix small z-1" href="<?php echo site_url('admin/kepanitiaan') ?>">
				<span class="float-left">View Details</span>
				<span class="float-right">
					<i class="fas fa-angle-right"></i>
				</span>
				</a>
			</div>
			</div>
			<div class="col-xl-3 col-sm-6 mb-3">
			<div class="card text-white bg-danger o-hidden h-100">
				<div class="card-body">
				<div class="card-body-icon">
					<i class="fas fa-fw fa-life-ring"></i>
				</div>
				<div class="mr-5">Guide</div>
				</div>
				<a class="card-footer text-white clearfix small z-1" href="<?php echo site_url('admin/guide') ?>">
				<span class="float-left">View Details</span>
				<span class="float-right">
					<i class="fas fa-angle-right"></i>
				</span>
				</a>
			</div>
			</div>
		</div>

		<!-- Area Chart Example-->
		<?php
        foreach($chart as $datav){
            $name[] = $datav->name;
            $prioritas[] = $datav->prioritas;
        }
    	?>
		<div class="card mb-3">
			<div class="card-header">
			<i class="fas fa-chart-area"></i>
			Skala Prioritas</div>
			<div class="card-body">
			<script type="text/javascript" src="<?php echo base_url('assets/chart.js/Chart.js') ?>"></script>
			<script type="text/javascript" src="<?php echo base_url('assets/chart.js/Chart.min.js') ?>"></script>
			<canvas id="myChart" width="100%" height="30"></canvas>
			<script>
			var ctx = document.getElementById("myChart").getContext('2d');
			var myLineChart = new Chart(ctx, {
			type: 'bar',
			data: {
				labels: <?php echo json_encode($name);?>,
				datasets: [{
				label: "Sessions",
				lineTension: 0.3,
				backgroundColor: "rgba(2,117,216,0.2)",
				borderColor: "rgba(2,117,216,1)",
				pointRadius: 5,
				pointBackgroundColor: "rgba(2,117,216,1)",
				pointBorderColor: "rgba(255,255,255,0.8)",
				pointHoverRadius: 5,
				pointHoverBackgroundColor: "rgba(2,117,216,1)",
				pointHitRadius: 50,
				pointBorderWidth: 2,
				data: <?php echo json_encode($prioritas);?>,
				}],
			},
			options: {
				scales: {
				xAxes: [{
					time: {
					unit: 'date'
					},
					gridLines: {
					display: false
					},
					ticks: {
					maxTicksLimit: 7
					}
				}],
				yAxes: [{
					ticks: {
					min: 0,
					max: 200,
					maxTicksLimit: 5
					},
					gridLines: {
					color: "rgba(0, 0, 0, .125)",
					}
				}],
				},
				legend: {
				display: false
				}
			}
			});
			</script>
			</div>
			<div class="card-footer small text-muted">Updated yesterday at 11:59 PM</div>
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
    
</body>
</html>