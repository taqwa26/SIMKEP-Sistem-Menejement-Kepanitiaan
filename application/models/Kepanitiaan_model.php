<?php defined('BASEPATH') OR exit('No direct script access allowed');

class Kepanitiaan_model extends CI_Model
{
    private $_table1 = "devisi";
    private $_table2 = "staff";
    private $_table3 = "kepanitiaan";

    public $kepanitiaan_id;
    public $no_surat;
    public $nama;
    public $tanggal;
    public $keterangan;
    public $relasi;

    public function rules()
    {
        return [

            ['field' => 'nama',
            'label' => 'Nama',
            'rules' => 'required'],

            ['field' => 'tanggal',
            'label' => 'Tanggal',
            'rules' => 'required'],
            
            // ['field' => 'jumlah',
            // 'label' => 'Jumlah',
            // 'rules' => 'required'],

            ['field' => 'relasi',
            'label' => 'Relasi',
            'rules' => 'required']

        ];
    }

    public function getAll()
    {
        // return $this->db->get($this->_table)->result();
        $query="SELECT ke.kepanitiaan_id, ke.no_surat, ke.nama, ke.tanggal, ke.keterangan
        FROM kepanitiaan as ke";
        return $this->db->query($query)->result();

        // $query="SELECT de.devisi_id, de.devisi, de.nama, st.jabatan, de.keterangan
        // FROM devisi as de, staff as st 
        // WHERE de.nama=st.name order by de.devisi asc";
        // return $this->db->query($query)->result();

    //     function cariSaldoCustomer($nama)
    // {
    //     $this->db->distinct();
    //     $this->db->select("*");
    //     $this->db->from("kartu");
    //     $this->db->join("user","user.id_user=kartu.id_user");
    //     $this->db->where("user.id_user",$nama);
    //     return $this->db->get()->row();
    // }

    // function get_data(){
    //     $this->db->select('year,purchase,sale,profit');
    //     $result = $this->db->get('account');
    //     return $result;
        
    // }
    }

    //<<------fungsi get---------->>
    public function getCount()
    {
        return $this->db->select('*')->from('staff')->get()->num_rows();
    }
    public function getCountKepanitiaan()
    {
        return $this->db->select('*')->from('kepanitiaan')->get()->num_rows();
    }

    public function getCountDevisi()
    {
        return $this->db->select('*')->from('devisi')->get()->num_rows();
    }
  
    public function getById($id)
    {
        return $this->db->get_where($this->_table3, ["kepanitiaan_id" => $id])->row();
    }

    public function getStaff()
    {
        return $this->db->get($this->_table2)->result();
    }
    public function getStaffId($id)
    {
        return $this->db->get_where($this->_table2, ["staff_id" => $id])->row();
    }

    function get_data_stok(){
        $query = $this->db->query("SELECT name, prioritas FROM staff ");
        foreach($query->result() as $data)
        {
            $hasil[] = $data;
        }
            return $hasil;
    }

    public function getDevisi()
    {
        // return $this->db->get($this->_table1)->result();
        $query="SELECT de.devisi, de.nama, st.name, st.no_absen 
        FROM devisi as de, staff as st
        WHERE de.nama=st.name";
        return $this->db->query($query)->result();
        // return $this->db->get($this->_table1)->result();
    }

    public function getRelasi()
    {
            $query="SELECT st.staff_id, ke.kepanitiaan_id, st.no_absen, st.name, st.panitia_id, ke.relasi
            FROM staff as st, kepanitiaan as ke
            WHERE st.panitia_id=ke.relasi order by st.no_absen asc";
            return $this->db->query($query)->result();
    }

    public function save()
    {
        // $query="SELECT staff_id FROM staff WHERE name = 'nama'";
        // $data["staff_id"]=$this->db->query($query)->result();
        $post = $this->input->post();
        $this->no_surat = $post["surat"];
        $this->nama = $post["nama"];
        $this->tanggal = $post["tanggal"];
        $this->keterangan = $post["keterangan"];
        $this->relasi = $post["relasi"];
        $this->db->insert($this->_table3, $this);
    }
    
    public function update()
    {
        $post = $this->input->post();
        $this->kepanitiaan_id = $post["id"];
        $this->no_surat = $post["surat"];
        $this->nama = $post["nama"];
        $this->tanggal = $post["tanggal"];
        $this->keterangan = $post["keterangan"];
        $this->relasi = $post["relasi"];
        $this->db->update($this->_table3, $this, array('kepanitiaan_id' => $post['id']));
    }
    
    public function buat()
    {
            // menyimpan data kedalam variabel
            $var0 = $_POST['jumlah'];
            $var10 = $_POST['relasi'];

            $query="UPDATE staff 
            SET panitia_id='$var10', prioritas=0
            WHERE kep_dev=1 AND status='aktiv' ORDER BY prioritas desc 
            LIMIT $var0";
            $this->db->query($query);
            $query="UPDATE staff 
            SET prioritas=prioritas+15
            WHERE kep_dev=1";
            return $this->db->query($query); 

        //     // // query SQL untuk insert data
        //     // $query="UPDATE mahasiswa SET
        //     // nim='$nim',nama='$nama',jurusan='$jurusan',jenis_kelamin='$jenis_kelamin',alamat='$alamat' where
        //     // id_mahasiswa='$id_mahasiswa'";
        //     // mysqli_query($koneksi, $query);    
    }

    public function delete($id)
    {
        $query="UPDATE staff, kepanitiaan
        SET staff.panitia_id=0
        WHERE staff.panitia_id=kepanitiaan.relasi AND kepanitiaan.kepanitiaan_id=$id";
        $this->db->query($query);
        return $this->db->delete($this->_table3, array("kepanitiaan_id" => $id));
    }

    public function conf()
    {
        $var0 = $_POST['ganti1'];
        $var1 = $_POST['ganti2'];
        $query="UPDATE staff, panitia 
        SET staff.panitia_id=$var1
        WHERE staff.name=$var0";
        $this->db->query($query);
    }
}