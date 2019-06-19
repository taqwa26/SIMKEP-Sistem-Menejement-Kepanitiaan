<?php defined('BASEPATH') OR exit('No direct script access allowed');

class Devisi_model extends CI_Model
{
    private $_table = "devisi";
    private $_table1 = "staff";

    public $devisi_id;
    public $devisi;
    public $nama;
    public $keterangan;

    public function rules()
    {
        return [

            ['field' => 'devisi',
            'label' => 'Devisi',
            'rules' => 'required'],

            ['field' => 'nama',
            'label' => 'Nama',
            'rules' => 'required'],
            

        ];
    }

    public function getAll()
    {
        // return $this->db->get($this->_table)->result();

        $query="SELECT de.devisi_id, de.devisi, de.nama, st.jabatan, de.keterangan
        FROM devisi as de, staff as st 
        WHERE de.nama=st.name order by de.devisi asc";
        return $this->db->query($query)->result();
        
    }

    public function getStaff()
    {
        return $this->db->get($this->_table1)->result();
    }

    public function getStaffId($id)
    {
        return $this->db->get_where($this->_table1, ["staff_id" => $id])->row();
    }
    
    public function getById($id)
    {
        return $this->db->get_where($this->_table, ["devisi_id" => $id])->row();
    }
    public function getCount()
    {
        return $this->db->select('*')->from('devisi')->get()->num_rows();
    }

    public function save()
    {
        // $query="SELECT staff_id FROM staff WHERE name = 'nama'";
        // $data["staff_id"]=$this->db->query($query)->result();
        $post = $this->input->post();
        $this->devisi = $post["devisi"];
        $this->nama= $post["nama"];
        $this->keterangan = $post["keterangan"];
        $this->db->insert($this->_table, $this);

        $query="UPDATE staff, devisi
        SET staff.kep_dev=2
        WHERE staff.name=devisi.nama";
        return $this->db->query($query);
    }

    public function update()
    {
        $query="UPDATE staff, devisi
        SET staff.kep_dev=1
        WHERE staff.name=devisi.nama";
        $this->db->query($query);

        $post = $this->input->post();
        $this->devisi_id = $post["id"];
        $this->devisi = $post["devisi"];
        $this->nama= $post["nama"];
        $this->keterangan = $post["keterangan"];
        $this->db->update($this->_table, $this, array('devisi_id' => $post['id']));

        // $nama=$_POST['nama'];
        // $query="UPDATE staff 
        // SET kep_dev=2
        // WHERE name=$nama";
        // $this->db->query($query);

        $query="UPDATE staff, devisi 
        SET staff.kep_dev=2
        WHERE staff.name=devisi.nama";
        return $this->db->query($query);
    }

    public function delete($id)
    {
        $query="UPDATE staff, devisi
        SET staff.kep_dev=1
        WHERE staff.name=devisi.nama AND devisi.devisi_id=$id";
        $this->db->query($query);
        return $this->db->delete($this->_table, array("devisi_id" => $id));
    }
}