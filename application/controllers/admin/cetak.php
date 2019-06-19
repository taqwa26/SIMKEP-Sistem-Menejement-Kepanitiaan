<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Cetak extends CI_Controller {

	public function __construct()
	{
		parent::__construct();
		$this->load->library('pdf');
		$this->load->model('kepanitiaan_model');
	}
	public function index($id=null)
	{
		$title_page = 'STAF KEPANITIAAN';
		$data2 = $this->kepanitiaan_model->getById($id);
		$data =$this->kepanitiaan_model->getRelasi();
		$data1 =$this->kepanitiaan_model->getDevisi();
		//misalkan load data data dari database ,tinggal panggil model / load langsung di controller.
		// $query="SELECT st.staff_id, ke.kepanitiaan_id, st.no_absen, st.name, st.panitia_id, ke.relasi
		// FROM staff as st, kepanitiaan as ke
		// WHERE st.panitia_id=ke.relasi order by st.no_absen asc";
		// $result=$query->result_array();
		
		//load html dari viev ^_^
		// $HTML=$this->load->view('v_print',array('title_page'=>$title_page,'data_mahasiswa'=>$data),true);
		$HTML=$this->load->view('v_print',array('title_page'=>$title_page, 'relasi'=>$data, 'relasi1'=>$data1, 'relasi2'=>$data2),true);
		$this->pdf->pdf_create($HTML,$title_page,'A4','potrait');//render atau membuat pdf dari html diatas
		//$this->pdf->pdf_create($HTML,$title_page,'A4','potrait',FALSE);//jika langsung didownload pdf-nya
	}
 	
}

/* End of file print.php */
/* Location: ./application/controllers/print.php */