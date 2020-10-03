<?php defined('BASEPATH') OR exit('No direct script access allowed');

class Staff_model extends CI_Model
{
    private $_table = "staff";

    // nama kolom di tabel, harus sama huruf besar dan huruf kecilnya!
    public $staff_id;
    public $no_absen;
    public $foto = "default.jpg";
    public $name;
    public $status;
    public $jabatan;
    public $keterangan;

    public function rules()
    {
        return [

            ['field' => 'absen',
            'label' => 'Absen',
            'rules' => 'numeric'],

            ['field' => 'name',
            'label' => 'Name',
            'rules' => 'required'],

            ['field' => 'status',
            'label' => 'Status',
            'rules' => 'required'],
            
            ['field' => 'jabatan',
            'label' => 'Jabatan',
            'rules' => 'required'],

        ];
    }

    public function getAll()
    {
        return $this->db->get($this->_table)->result();
    }
    
    public function getById($id)
    {
        return $this->db->get_where($this->_table, ["staff_id" => $id])->row();
    }

    public function save()
    {
        $post = $this->input->post();
        $this->staff_id = uniqid();
        $this->no_absen = $post["absen"];
        $this->foto = $this->_uploadImage();
        $this->name = $post["name"];
        $this->status = $post["status"];
        $this->jabatan = $post["jabatan"];
        $this->keterangan = $post["keterangan"];
        $this->prioritas = '100';
        $this->db->insert($this->_table, $this);
    }

    public function update()
    {
        $post = $this->input->post();
        $this->staff_id = $post["id"];
        $this->no_absen = $post["absen"];
        if (!empty($_FILES["foto"]["name"])) {
            $this->foto = $this->_uploadImage();
        } else {
            $this->foto = $post["old_foto"];
        }
        $this->name = $post["name"];
        $this->status = $post["status"];
        $this->jabatan = $post["jabatan"];
        $this->keterangan = $post["keterangan"];
        $this->db->update($this->_table, $this, array('staff_id' => $post['id']));
    }

    public function delete($id)
    {
        $this->_deleteImage($id);
        return $this->db->delete($this->_table, array("staff_id" => $id));
    }

    private function _uploadImage()
    {
        $config['upload_path']          = './upload/staff/';
        $config['allowed_types']        = 'gif|jpg|png';
        $config['file_name']            = $this->staff_id;
        $config['overwrite']			= true;
        $config['max_size']             = 1024; // 1MB
        // $config['max_width']            = 1024;
        // $config['max_height']           = 768;

        $this->load->library('upload', $config);

        if ($this->upload->do_upload('foto')) {
            return $this->upload->data("file_name");
        }
    
        return "default.jpg";
    }

    private function _deleteImage($id)
    {
        $staff = $this->getById($id);
        if ($staff->foto != "default.jpg") {
	        $filename = explode(".", $staff->foto)[0];
		    return array_map('unlink', glob(FCPATH."upload/staff/$filename.*"));
        }
    }
}