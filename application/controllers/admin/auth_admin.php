<?php 
    class Auth_admin extends CI_Controller 
    {
        public function login()
        {
            $this->form_validation->set_rules('username', 'Username', 'required', [
                'required'  => 'Username wajib diisi !'
            ]);
            $this->form_validation->set_rules('password', 'Password', 'required', [
                'required'  => 'Password wajib diisi !'
            ]);
            if ($this->form_validation->run() == FALSE) {
                $this->load->view('templats/header');
                $this->load->view('form_login');
                $this->load->view('templats/footer');
            }else {
                $auth_admin = $this->Model_auth_admin->cek_login();

                if ($auth_admin == FALSE) {
                    $this->session->set_flashdata('pesan', '<div class="alert alert-danger alert-dismissible fade show" role="alert">
                       Username atau Password Anda Salah !! 
                        <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                        </button>
                    </div>');
                    redirect('auth_admin/login');
                }else {
                    $this->session->set_userdata('username',$auth_admin->username);
                    $this->session->set_userdata('role_id',$auth_admin->role_id);

                    switch ($auth_admin->role_id) {
                        case 1:   redirect('admin/data_barang');
                                  break;
                        case 2:   redirect('welcome');
                                  break;
                        default : break;
                    }
                }
            }
        }
        public function logout()
        {
            $this->session->sess_destroy();
            redirect('auth/login');
        }
    }
    

?>