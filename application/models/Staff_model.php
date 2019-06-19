<?php defined('BASEPATH') OR exit('No direct script access allowed');

class Staff_model extends CI_Model
{
    private $_table = "staff";

    public $staff_id;
    public $no_absen;
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
        $this->no_absen = $post["absen"];
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
        $this->name = $post["name"];
        $this->status = $post["status"];
        $this->jabatan = $post["jabatan"];
        $this->keterangan = $post["keterangan"];
        $this->db->update($this->_table, $this, array('staff_id' => $post['id']));
    }

    public function delete($id)
    {
        return $this->db->delete($this->_table, array("staff_id" => $id));
    }
}