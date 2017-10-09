<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Students extends API_Controller {

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


    public function __construct()
    {
        parent::__construct();
        $this->load->model('Users_model');
    }

    /**
     * @SWG\Get(path="/students/student",
     *   tags={"students"},
     *   summary="get student record",
     *   description="",
     *   operationId="student_get",
     *   produces={"application/xml", "application/json"},
     *   @SWG\Parameter(
     *     name="phone",
     *     in="query",
     *     description="Phone No to get student details",
     *     required=true,
     *     type="string"
     *   ),
     *   @SWG\Parameter(
     *     name="x-api-key",
     *     in="header",
     *     description="anonymous",
     *     required=true,
     *     type="string"
     *   ),
     *   @SWG\Response(
     *         response=201,
     *         description="successful operation",
     *
     *     ),
     *     @SWG\Response(
     *         response="400",
     *         description="Invalid status value",
     *     )
     * )
     */
    public function student_get()
    {
        $output =array();
        $phone =  $this->input->get_post('phone');
        $output['status'] = false;
        if(!empty($phone)){
            $condition['phone'] = $phone;
            $output = $this->Users_model->get_by_condition($condition);
            if(isset($output->id)){
                $this->response($output,REST_Controller::HTTP_OK);
            }else{
                $output['status'] = false;
            }
        }

        $this->response($output,REST_Controller::HTTP_BAD_REQUEST);

    }
}
