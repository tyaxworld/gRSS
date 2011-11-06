<?php
class Login extends Controller{
    function Login(){
        parent::Controller();
        $this->load->model('user');
    }
    function index(){
        $this->load->view('user/index');
    }
    function validate_credentials(){
        $user_data = array(
             'username'  =>  $_POST['username'],
            'password'  =>  $_POST['password']
        );

		$query = $this->user->auth($user_data);

		if($query) // if the user's credentials validated...
		{
			$data = array(
				'username' => $_POST['username'],
				'is_logged_in' => true
			);
			$this->session->set_userdata($data);
			//redirect('site/members_area');
                        print_r($data);
		}
		else // incorrect username or password
		{
			$this->index();
		}
	}
}
?>