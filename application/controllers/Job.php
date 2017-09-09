<?php
/**
* 
*/
class Job extends MY_Controller
{
	private $serverID = '1';
	
	
	function __construct()
	{
		parent::__construct();
		//$this->load->library('job_scheduler');
		$this->load->helper('array');	//This model loads the categories locally
	}
	


    public function import_frm()
    {
        $this->render("import/import",'empty');
    }
}
