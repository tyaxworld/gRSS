<?php 
class News extends Controller{

	function News(){
		parent::Controller();
		$this->load->model('rssnews');
		$this->load->model('user');
	}
	
	function index(){
		
		$meta = new stdClass;
        $meta->title = "";
        $this->cismarty->assign('meta', $meta);
        
		/* start rss objects*/
		$mobilebul = array(
			'cachefile' => $_SERVER['DOCUMENT_ROOT'].'/cache/mobilebul.xml',
			'rssfile' => 'http://www.mobilebulgaria.com/rss.php',
			'limit' => 10,
			'cachetime' => 5*60,
		);
		
		$this->rssnews->initialize($mobilebul);
		$a1 = array();
		$a1 = $this->rssnews->getResult();
	       
		$dirbg = array(
			'cachefile' => $_SERVER['DOCUMENT_ROOT'].'/cache/dnes.xml',
			'rssfile' => 'http://dnes.dir.bg/support/cat_rss.php?section=all',
			'limit' => 10,
			'cachetime' => 5*60,
	
		);
		
		$this->rssnews->initialize($dirbg);
		$a2 = array();
		$a2 = $this->rssnews->getResult();
		
		$sportal = array(
			'cachefile' => $_SERVER['DOCUMENT_ROOT'].'/cache/sportal.xml',
			'rssfile' => 'http://www.sportal.bg/uploads/rss_category_1.xml',
			'limit' => 10,
			'cachetime' => 5*60,
		);
	
		$this->rssnews->initialize($sportal);
		$a3 = array();
		$a3 = $this->rssnews->getResult();
		/* end rss objects*/
		
		$this->cismarty->assign('a1', $this->ShowRssNewsRow($a1));
        $this->cismarty->assign('a2', $this->ShowRssNewsRow($a2));
        $this->cismarty->assign('a3', $this->ShowRssNewsRow($a3));
        $this->cismarty->assign('base_url', base_url());
        $this->cismarty->view('news/index');
	}
	
	function login() {
		$user_data = $this->user->auth();
		// if username and password OK
		if(isset ($user_data)) {
			$data = array(
				'username' => $this->input->post('loguser'),
				'is_logged_in' => true
			);
			$this->session->set_userdata($data);
			redirect('news');
			//echo $data['username'];
		} else {
			//redirect('news');
			echo "invalid";
		}
	}
	
	//logout
	function logout(){
		$this->session->sess_destroy();
		redirect('news');
	}
	
	//register
	function register(){
		$new_member = array(
			'username' => $this->input->post('name'),
			'password' => md5($this->input->post('pass1')),
			'email' => $this->input->post('email'),
			'create_date' => date("Y-m-d")." ".date("H:i:s")
		);
		//echo  $this->user->create_member($new_member);
	}
        
	//user check for AJAX
	function user_check(){
		echo $this->user->check_user_name();
	}
        
	function rand_capt(){
		$this->user->generateCaptcha();
	}
	
	function ajax_captcha(){
		echo $this->user->check_captcha();
	}
	
	/** this function shows result rss rows from array 
	 * first param - array 
	*/
	/*
	<ul>
				<?php foreach($sportal as $value): ?>

                    <li>
                        <div>
                            <a href="<?php echo $value['link'];?>" rel="bookmark" title="">
                                <img width="100px" height="65px" src="<?php echo $value['enclosure']['url'];?>" alt="100x65" class="left"></a>
                            <div class="info">
                                <a href="<?php echo $value['link'];?>" rel="bookmark" class="title"><?php echo $value['title'];?></a>
                                <div class="meta">descr</div>
                            </div>
                        </div>
                    </li>
					<?php endforeach; ?>


                </ul>
	*/
	function ShowRssNewsRow($pArr) {
		$lRes = '';
		
		
		if(is_array($pArr) && count($pArr) > 0) {
			$lRes .= '<ul>';
			foreach($pArr as $key => $value) {
				$lRes .= '<li><div class="newsrow"><p>';
				$lRes .= '<div class="newsPic">' . $this->ShowRssRowPic($value['picture'], $value['enclosure']) . '</div>';
				$lRes .= '<div class="info">';
				$lRes .= '<div class="newsrowTitle">';
				$lRes .= '<a target="_blank" href="' . $value['link'] . '">' . $this->CutText($value['title'], 50) . '</a>';
				$lRes .= '</div>';
				$lRes .= '<div class="newsDescr">';
				$lRes .= $this->CutText(strip_tags($value['description']), 120);
				$lRes .= '</div>';
				$lRes .= '</div>';
				$lRes .= '<div class="clear"></div>';
				$lRes .= '</p></div></li>';		
			}
			$lRes .= '</ul>';
		}
		
		
		return $lRes;
	}
	
	function ShowRssRowPic($pMainPic, $pSecondPic) {
		if($pMainPic && $pMainPic != 'empty_value') {
			return '<img width="115" src="' . $pMainPic . '"></img>';
		} elseif (is_array($pSecondPic) && count($pSecondPic) > 0 && $pSecondPic['url'] != 'empty_value') {
			return '<img width="115" src="' . $pSecondPic['url'] . '"></img>';
		} else {
			return '';
		}
	}
	
	function CutText($string, $max_length = 80) {
		if (mb_strlen($string) > $max_length) {
			$string = mb_substr($string, 0, $max_length);
			$pos = mb_strrpos($string, " ");
			if($pos === false){
				return mb_substr($string, 0, $max_length) . " ...";
			}
			return mb_substr($string, 0, $pos) . " ...";
		} else {
			return $string;
		}
	}
	
}

?>
