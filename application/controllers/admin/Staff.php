<?php

defined('BASEPATH') OR exit('No direct script access allowed');

class Staff extends CI_Controller
{
    public function __construct()
    {
        parent::__construct();
        $this->load->model("staff_model");
        $this->load->library('form_validation');
    }

    public function index()
    {
        $data["staff"] = $this->staff_model->getAll();
        $this->load->view("admin/staffv/list", $data);
    }

    public function add()
    {
        $staff = $this->staff_model;
        $validation = $this->form_validation;
        $validation->set_rules($staff->rules());

        if ($validation->run()) {
            $staff->save();
            $this->session->set_flashdata('success', 'Berhasil disimpan');
        }

        $this->load->view("admin/staffv/new_form");
    }

    public function edit($id = null)
    {
        if (!isset($id)) redirect('admin/staff');
       
        $staff = $this->staff_model;
        $validation = $this->form_validation;
        $validation->set_rules($staff->rules());

        if ($validation->run()) {
            $staff->update();
            $this->session->set_flashdata('success', 'Berhasil disimpan');
        }

        $data["staff"] = $staff->getById($id);
        if (!$data["staff"]) show_404();
        
        $this->load->view("admin/staffv/edit_form", $data);
    }

    public function delete($id=null)
    {
        if (!isset($id)) show_404();
        
        if ($this->staff_model->delete($id)) {
            redirect(site_url('admin/staff'));
        }
    }
}