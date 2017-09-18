<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Users extends API_Controller {

	public function index()
	{
		// API Doc page only accessible during development/testing environments
		if (in_array(ENVIRONMENT, array('development', 'testing')))
		{
			$this->mBodyClass = 'swagger-section';
			$this->render('home', 'empty');
		}
		else
		{
			redirect();
		}
	}

    public function index_get()
    {
        //echo "gfdggdgf";
        /*$this->response([
            'returned from delete:' => 7878
        ]);*/
        $this->created("sdsddsdsdss");

    }
}
