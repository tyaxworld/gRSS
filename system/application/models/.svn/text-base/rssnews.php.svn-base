<?php
/* Turn Off Error reportings */
//error_reporting(0);

class Rssnews extends Model{
		var $debug;
		var $cacheFile;
		var $globArr;
		var $rssPath;
		var $cacheTime;
		var $errorStr;
		var $errorFlag;
		var $xmlVersion;
		var $xmlEncoding;
		var $xmlObj;
		var $xmlXpathObj;
		var $rowLimit;
		var $xmlNodesArr;
		var $xmlXpathBegin;
		var $data = array();

	function Rssnews(){
		parent::Model();
	}
	
	function initialize($pFieldsArr){
		$this->globArr = array_change_key_case($pFieldsArr, CASE_LOWER);
		$this->debug = (array_key_exists('debug', $this->globArr) ? $this->globArr['debug'] : 0);
		$this->cacheFile = (array_key_exists('cachefile', $this->globArr) ? $this->globArr['cachefile'] : $_SERVER['DOCUMENT_ROOT'].'/ci_news/test.xml');
		$this->rssPath = $this->globArr['rssfile'];
		$this->rowLimit = (array_key_exists('limit', $this->globArr) ? $this->globArr['limit'] : 3);
		$this->cacheTime = (array_key_exists('cachetime', $this->globArr) ? $this->globArr['cachetime'] : 3600);
		$this->xmlVersion = (array_key_exists('xmlversion', $this->globArr) ? $this->globArr['xmlversion'] : '1.0');
		$this->xmlEncoding = (array_key_exists('xmlencoding', $this->globArr) ? $this->globArr['xmlencoding'] : 'utf-8');
		$this->errorFlag = 0;
		$this->xmlNodesArr = $this->LoadDefXmlNodes();
		$this->xmlXpathBegin = '/rss/channel/';
	}
	
	function LoadDefXmlNodes() {	
		$lNodesArr = array(
			'itemnode' => 'item',
			'itemchildnodes' => array (
				'title' => 'title',
				'description' => 'description',
				'link' => 'link',
				'category' => 'category',
				'enclosure' => 'enclosure',
				'picture' => 'picture'
			),
			'itemattributes' => array (
				'enclosure' => array (
					'nodename' => 'enclosure',
					'url' => 'url',
					'type' => 'type',
					'length' => 'length',
 				),
			),
		);
		return $lNodesArr;
	}
	
	function getXML() {
		$lFileModeTime = @(time() - filemtime($this->cacheFile));
		if (!file_exists($this->cacheFile) || $lFileModeTime > $this->cacheTime) {
			//$lXmlCont = file_get_contents($this->rssPath);
			$ch = curl_init();
			curl_setopt($ch, CURLOPT_URL, $this->rssPath);
			curl_setopt($ch, CURLOPT_RETURNTRANSFER, 1);
			$lXmlCont = curl_exec($ch);
			if ($f = @fopen($this->cacheFile, 'w')) {
				fwrite ($f, $lXmlCont, strlen($lXmlCont));
				fclose($f);
			}
		}
	}
	
	function LoadValidateXML() {
		libxml_use_internal_errors(true);
		
		$this->xmlObj = new DOMDocument($this->xmlVersion, $this->xmlEncoding);
		$this->xmlObj->load($this->cacheFile);
		$errors = libxml_get_errors();
		
		if (empty($errors)) {
			$this->errorFlag = 0;
		} else {
			$error = $errors[ 0 ];
			if ($error->level < 3){
				$this->errorFlag = 0;
			} else {
				$this->errorFlag = 1;
			}
		}

		if($this->errorFlag == 1 && $this->debug) {
			$lines = explode("r", $this->cacheFile);
			$line = $lines[($error->line)-1];
			$this->errorStr = $error->message . ' at line ' . $error->line . ': <br />' . htmlentities($line);
		}
		
	}
	
	/**
	 * Tozi metod proverqwa s xpath dali dadeniq node/attribute sy6testvuva v xml-a -> parameter 1 - xpath obekt-a
	 parameter 2 - kakvo da tyrsi
	 parameter 3 - kyde da tyrsi (v teku6tiq node, v dokumenta i t.n.)
	 */
	function checkIfNodeBuildingExists($pXpathObj, $pNodeName, $pWhereToSearch) {
	    $lresult = false;
	    $lnodeListPath = $pXpathObj->query($pNodeName, $pWhereToSearch)->length;
	    if((int)$lnodeListPath > 0) {
	    	$lresult = true;
	    }
	    return $lresult;
	}
	
	function getRows() {
		$this->xmlXpathObj = new DOMXPath($this->xmlObj);
		$count = 0;
		
		if($this->checkIfNodeBuildingExists($this->xmlXpathObj, $this->xmlXpathBegin . $this->xmlNodesArr['itemnode'], $this->xmlObj)) {
			$lItems = $this->xmlObj->getElementsByTagName($this->xmlNodesArr['itemnode']);
		} else {
			return 'Xml Error - no itemnode found';
		}
	
		foreach($lItems as $lItem) {
                    
			//za da vzemem value-tata na nodovete
			
			foreach($this->xmlNodesArr['itemchildnodes'] as $nodekeyname => $nodename) {
				$lItemChildNode = $this->checkIfNodeBuildingExists($this->xmlXpathObj, './/' . $this->xmlNodesArr['itemchildnodes'][$nodename], $lItem);
				if($lItemChildNode) {
					$this->data[$count][$nodename] = $lItem->getElementsByTagName($this->xmlNodesArr['itemchildnodes'][$nodename])->item(0)->nodeValue;
				} else {
					$this->data[$count][$nodename] = 'empty_value';
				}
			}
			
			//za da vzemem value-tata na atributite na nodovete
			if(is_array($this->xmlNodesArr['itemattributes'])) {
				foreach($this->xmlNodesArr['itemattributes'] as $AttrNodekeyName => $AttrNodeNameArr) {
					$lItemNodeExists = $this->checkIfNodeBuildingExists($this->xmlXpathObj, './/' . $this->xmlNodesArr['itemattributes'][$AttrNodekeyName]['nodename'], $lItem);
					if($lItemNodeExists) {
						$lItemNode = $lItem->getElementsByTagName($this->xmlNodesArr['itemattributes'][$AttrNodekeyName]['nodename'])->item(0);
						foreach($AttrNodeNameArr as $nodekeyname1 => $nodename1) {
							$lAttrExists = $this->checkIfNodeBuildingExists($this->xmlXpathObj, './/@' . $nodename1, $lItemNode);
							if($lAttrExists) {
								$this->data[$count][$AttrNodekeyName][$nodekeyname1] = $lItemNode->getAttribute($nodename1);
							} else {
								$this->data[$count][$AttrNodekeyName][$nodekeyname1] = 'empty_value';
							}
						}
					} else {
						$this->data[$count][$AttrNodekeyName] = 'empty_value';
					}
				}
			}
			

			$count++;
			if((int)$count == (int)$this->rowLimit) break;
		}
        return $this->data;
	}

	function getResult() {
		$this->getXML();
		$this->LoadValidateXML();
		
		if($this->errorFlag == 1) {
			if ($this->debug) {
				return $this->errorStr;
			} else {
				return "Can't load the rss";
			}
		}
		
		$lResult = $this->getRows();
		return $lResult;
	}
	
}
?>