<?php

defined('BASEPATH') OR exit('No direct script access allowed');

class Staff extends CI_Controller
{
    public function __construct()
    {
        parent::__construct();
        $this->load->model("staff_model");
        $this->load->library('form_validation');
        $this->load->model("user_model");
        if($this->user_model->isNotLogin()) redirect(site_url('admin/login'));
    }

    public function index()
    {
        $data["staff"] = $this->staff_model->getAll();
        $this->load->view("admin/staffv/list", $data);
    }

    public function add()
    {
        $staff = $this->staff_model; //object model
        $validation = $this->form_validation; //object form validation
        $validation->set_rules($staff->rules()); //terapkan rules

        if ($validation->run()) { //melakukan validasi
            $staff->save(); //simpan data kedatabase
            $this->session->set_flashdata('success', 'Berhasil disimpan'); //tampilkan pesan berhasil
        }

        $this->load->view("admin/staffv/new_form"); //tampilkan form add
    }

    public function edit($id = null)
    {
        if (!isset($id)) redirect('admin/staff'); //redirect jika tidak ada $id
       
        $staff = $this->staff_model; //object model
        $validation = $this->form_validation; //object validation
        $validation->set_rules($staff->rules()); // menerapkan rules

        if ($validation->run()) { //melakukan validasi
            $staff->update(); //menyimpan data
            $this->session->set_flashdata('success', 'Berhasil disimpan');
        }

        $data["staff"] = $staff->getById($id); //mengambil data untuk ditampilkan pada form
        if (!$data["staff"]) show_404(); //jika tidak ada data tampikan error 404
        
        $this->load->view("admin/staffv/edit_form", $data); //tampilkan form edit dengan data
    }

    public function delete($id=null)
    {
        if (!isset($id)) show_404();
        
        if ($this->staff_model->delete($id)) {
            redirect(site_url('admin/staff'));
        }
    }
}