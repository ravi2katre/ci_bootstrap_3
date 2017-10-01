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



    /**
     * @SWG\Post(path="/users",
     *   tags={"users"},
     *   summary="Logs user into the system",
     *   description="",
     *   operationId="loginUser",
     *   produces={"application/xml", "application/json"},
     *   @SWG\Parameter(
     *     name="username",
     *     in="query",
     *     description="The user name for login",
     *     required=true,
     *     type="string"
     *   ),
     *   @SWG\Parameter(
     *     name="password",
     *     in="query",
     *     description="The password for login in clear text",
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
    public function index_post()
    {
        //echo "gfdggdgf";
        /*$this->response([
            'returned from delete:' => 7878
        ]);*/
        $this->created("sdsddsdsdss");

    }
}
