<style type="text/css">
	table{
		border-collapse: collapse;
		align : center;
	}
	tr>th{
		background-color: gray;
	}
	tr>th,tr>td{
		padding: 5px;
	}
</style>
<h2 align='center'><?php echo $title_page ?></h2>

<br><br>
<h4># Staff Pelaksana</h4>
<table border="1" align="center" width='100%'>
	<tr>
		<th>No.</th>
		<th>No. Absen</th>
		<th>Nama</th>
	</tr>
	<?php 
	$no=1;
	foreach ($relasi as $key){
		echo '
			<tr>
				<td align=center>'.$no.'</td>
				<td align=center>'.$key->no_absen.'</td>
				<td>'.$key->name.'</td>
			</tr>
		';
		$no++;
	}
	?>	
</table>

<br><br>
<h4># Staff Penaggung Jawab</h4>
<table border="1" align="center" width='100%'>
	<tr>
		<th>No.</th>
		<th>Nama</th>
		<th>Tanggung Jawab</th>
	</tr>
	<?php 
	$no=1;
	foreach ($relasi1 as $koy){
		echo '
			<tr>
				<td align=center>'.$no.'</td>
				<td align=center>'.$koy->nama.'</td>
				<td align=center>'.$koy->devisi.'</td>
			</tr>
		';
		$no++;
	}
	?>	
</table>