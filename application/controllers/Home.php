<?php
defined('BASEPATH') OR exit('No direct script access allowed');

/**
 * Home page
 */
class Home extends MY_Controller {

	public function index()
	{
	    //echo "fddfdfdf";
        $this->system_message->add_success("nnnnnnnnnnnnn");

		$this->render('home', 'full_width');
	}
}
