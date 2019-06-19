<?php

defined('BASEPATH') OR exit('No direct script access allowed');

class Kepanitiaan extends CI_Controller
{
    public function __construct()
    {
        parent::__construct();
        $this->load->model("kepanitiaan_model");
        $this->load->library('form_validation');
    }

    public function index()
    {
        $data["panitia"] = $this->kepanitiaan_model->getAll();
        $this->load->view("admin/kepanitiaanv/list", $data);   
    }

    public function detail($id = null)
    {
        if (!isset($id)) redirect('admin/kepanitiaan');
        
        // $data["devisii"] = $this->devisi_model->getStaff();
        // $devisi = $this->devisi_model;
        // $validation = $this->form_validation;
        // $validation->set_rules($devisi->rules());

        // if ($validation->run()) {
        //     $devisi->update();
        //     $this->session->set_flashdata('success', 'Berhasil disimpan');
        // }
        $data["panitia"] = $this->kepanitiaan_model->getById($id);
        if (!$data["panitia"]) show_404();

        $data['devisi'] =$this->kepanitiaan_model->getDevisi();

        $data['relasi'] =$this->kepanitiaan_model->getRelasi();
        
        $this->load->view("admin/kepanitiaanv/detail", $data);
    }

    public function add()
    {
        $data["devisi"] = $this->kepanitiaan_model->getDevisi();
        $data["devisicount"] = $this->kepanitiaan_model->getCountDevisi();
        $data["panitiacount"] = $this->kepanitiaan_model->getCountKepanitiaan();        
        $kepanitiaan = $this->kepanitiaan_model;
        $validation = $this->form_validation;
        $validation->set_rules($kepanitiaan->rules());

        if ($validation->run()) {
            $kepanitiaan->save();        
            $kepanitiaan->buat();
            $this->session->set_flashdata('success', 'Berhasil disimpan');
        }
        $this->load->view("admin/kepanitiaanv/new_form", $data);
    }

    public function edit($id = null)
    {
        if (!isset($id)) redirect('admin/kepanitiaan');
        
        // $data["devisii"] = $this->devisi_model->getStaff();
        $panitia = $this->kepanitiaan_model;
        $validation = $this->form_validation;
        $validation->set_rules($panitia->rules());

        if ($validation->run()) {
            $panitia->update();
            $this->session->set_flashdata('success', 'Berhasil disimpan');
        }

        $data["panitia"] = $panitia->getById($id);
        if (!$data["panitia"]) show_404();
        
        $this->load->view("admin/kepanitiaanv/edit_form", $data);
    }

    public function delete($id=null)
    {
        if (!isset($id)) show_404();
        
        if ($this->kepanitiaan_model->delete($id)) {
            redirect(site_url('admin/kepanitiaan'));
        }
    }

    public function config($id = null)
    {
        if (!isset($id)) redirect('admin/kepanitiaan');
        
        $panitia = $this->kepanitiaan_model;
        $validation = $this->form_validation;
        $validation->set_rules($panitia->rules());

        if ($validation->run()) {
            $panitia->conf();
            $this->session->set_flashdata('success', 'Berhasil disimpan');
        }

        $data["panitia"] = $panitia->getById($id);
        if (!$data["panitia"]) show_404();

        $data["staff"] = $this->kepanitiaan_model->getStaff();
        
        $this->load->view("admin/kepanitiaanv/edit_panitia", $data);

        // if (!isset($id)) redirect('admin/staff');
       
        // $staff = $this->staff_model;
        // $validation = $this->form_validation;
        // $validation->set_rules($staff->rules());

        // if ($validation->run()) {
        //     $staff->update();
        //     $this->session->set_flashdata('success', 'Berhasil disimpan');
        // }

        // $data["staff"] = $staff->getById($id);
        // if (!$data["staff"]) show_404();
        
        // $this->load->view("admin/staffv/edit_form", $data);
    }
}