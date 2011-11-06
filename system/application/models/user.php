<?php
class User extends Model{
    function User(){
        parent:: Model();
    }
    function auth(){
      $out = new stdClass;
      $this->db->where('username', $this->input->post('loguser'));
        $this->db->where('password', md5($this->input->post('logpass')));
        $q = $this->db->get('users');
        if (@$q && $q->num_rows > 0) {
            $out = $q->fetch_object();
            return $out;
            }
    }
    //check if username exists in database
    function check_user_name(){
            $this->db->where('username', $this->input->post('name'));
            $query = $this->db->get('users');
            if($query->num_rows > 0)
		{
                    return false;//username is taken
		} else {
                    return true;//username is free
                }
        }
    //create a new profile from form input data and store into database
    function create_member($userdata){
            return $this->db->insert('users', $userdata);
    }
    //captcha check
    function check_captcha(){
        $captcha_key = $this->session->userdata('captcha_key');

         if ($this->input->post('captcha')==$captcha_key)
          {
               return true;
          } else {
              return false;
          }
    }
        //generate captcha
    function generateCaptcha(){
        $size=12;
        $minAngle=1;
        $maxAngle=5;
        $horizontal=20;
        $vertical=28;
        $font="captcha/fonts/arial.ttf";
        $bg = base_url()."captcha/button.png";
        $RandomStr = md5(microtime());
        $ResultStr = substr($RandomStr,0,6);
        $NewImage =imagecreatefrompng($bg);
        $TextColor = imagecolorallocate($NewImage, 0, 0, 0);
        $color = $TextColor;
        $text = $ResultStr;
        imagettftext($NewImage, $size, rand(-$minAngle,$maxAngle), $horizontal, $vertical, $color, $font, $text);
        $newdata=array('captcha_key'=>$text);
        $this->session->set_userdata($newdata);
        header("Content-type: image/jpeg");
        imagepng($NewImage);
        imagedestroy($NewImage);
        }


}
?>
