<?php

defined('BASEPATH') OR exit('No direct script access allowed');

class Devisi extends CI_Controller
{
    public function __construct()
    {
        parent::__construct();
        $this->load->model("devisi_model");
        $this->load->library('form_validation');
    }

    public function index()
    {
        $data["devisi"] = $this->devisi_model->getAll();
        $this->load->view("admin/devisiv/list", $data);
    }

    public function add()
    {
        $data["devisi"] = $this->devisi_model->getStaff();
        $data["count"] = $this->devisi_model->getCount();
        $devisi = $this->devisi_model;
        $validation = $this->form_validation;
        $validation->set_rules($devisi->rules());

        if ($validation->run()) {
            $devisi->save();
            $this->session->set_flashdata('success', 'Berhasil disimpan');
        }

        $this->load->view("admin/devisiv/new_form", $data);
    }

    public function edit($id = null)
    {
        if (!isset($id)) redirect('admin/devisi');
        
        $data["devisii"] = $this->devisi_model->getStaff();
        $devisi = $this->devisi_model;
        $validation = $this->form_validation;
        $validation->set_rules($devisi->rules());

        if ($validation->run()) {
            $devisi->update();
            $this->session->set_flashdata('success', 'Berhasil disimpan');
        }

        $data["devisi"] = $devisi->getById($id);
        if (!$data["devisi"]) show_404();
        
        $this->load->view("admin/devisiv/edit_form", $data);
    }

    public function delete($id=null)
    {
        if (!isset($id)) show_404();
        
        if ($this->devisi_model->delete($id)) {
            redirect(site_url('admin/devisi'));
        }
    }
}