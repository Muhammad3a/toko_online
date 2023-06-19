<?php 
    class Registrasi_admin extends CI_Controller 
    {
        public function index()
        {
            $this->form_validation->set_rules('nama', 'Nama', 'required',[
                'required' => 'Nama Wajib Diisi !'
            ]);
            $this->form_validation->set_rules('username', 'Username', 'required', [
                'required' => 'Username Wajib Diisi !'
            ]);
            $this->form_validation->set_rules('password_1', 'Password', 'required|matches[password_2]',[
                'required' => 'Password wajib diisi !!',
                'matches'  => 'password tidak cocok'
            ]);
            $this->form_validation->set_rules('password_2', 'Password', 'required|matches[password_1]');

            if ($this->form_validation->run() == FALSE) {
            $this->load->view('templats/header');
            $this->load->view('admin/registrasi_admin');
            $this->load->view('templats/footer');
            }else {
                $data = array(
                    'id'            => '',
                    'nama'          => $this->input->post('nama'),
                    'username'      => $this->input->post('username'),
                    'password'      => $this->input->post('password_1'),
                    'role_id'       => 1,
                );
                $this->db->insert('tb_user', $data);
                redirect('auth/login');
            }
        }
    }
    
?>