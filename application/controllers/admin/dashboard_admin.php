<?php 
    class Dashboard_admin extends CI_Controller
    {
        public function index()
        {
            $this->load->view('templats_admin/header');
            $this->load->view('templats_admin/sidebar');
            $this->load->view('admin/dashboard');
            $this->load->view('templats_admin/footer');
        }
    }
    
?>