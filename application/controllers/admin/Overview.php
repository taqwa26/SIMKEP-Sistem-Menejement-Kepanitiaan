<?php

class Overview extends CI_Controller
{
    public function __construct()
    {
        parent::__construct();
        $this->load->model("kepanitiaan_model");
        $this->load->model("user_model");
        if($this->user_model->isNotLogin()) redirect(site_url('admin/login'));
    }

    public function index()
    {
        $data["staff"] = $this->kepanitiaan_model->getCount();
        $data["devisi"] = $this->kepanitiaan_model->getCountDevisi();
        $data["kepanitiaan"] = $this->kepanitiaan_model->getCountKepanitiaan();
		$data['chart']=$this->kepanitiaan_model->get_data_stok();
        $this->load->view("admin/overview", $data);
        
    }
}