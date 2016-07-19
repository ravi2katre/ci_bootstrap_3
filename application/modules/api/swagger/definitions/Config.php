<?php
defined('BASEPATH') OR exit('No direct script access allowed');

namespace MySwaggerDefinitions;

/**
 * @SWG\Definition()
 */
class Config {

	/**
	 * Unique ID
	 * @var int
	 * @SWG\Property()
	 */
	public $id;

	/**
	 * @var string
	 * @SWG\Property()
	 */
	public $app_version;
}