<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');
class Users extends Admin_Controller{
    var $table = 'users';
    var $primary_key_field = 'id';
    var $model_name = 'Users_model';
    public function __construct()
  {
      parent::__construct();
      $this->load->model($this->model_name);
      $this->add_stylesheet(BASE_URL.'assets/bootstrap/css/bootstrap.min.css',true,'screen');
      $this->add_stylesheet(BASE_URL.'assets/datatables/css/dataTables.bootstrap.css',true,'screen');

      //$this->add_script(BASE_URL.'assets/jquery/jquery.js',true,'foot');
      //$this->add_script(BASE_URL.'assets/bootstrap/js/bootstrap.min.js',true,'foot');
      $this->add_script(BASE_URL.'assets/datatables/js/jquery.dataTables.min.js',true,'foot');
      $this->add_script(BASE_URL.'assets/datatables/js/dataTables.bootstrap.js',true,'foot');
      $this->mViewData['primary_key_field'] = $this->primary_key_field;

  }

  public function index()
  {
      $this->load->helper('url');
      $this->mViewData['list'] = $this->{$this->model_name}->get_rows();
      $this->render('users/list');
  }

  public function ajax_list()
  {
      $list = $this->{$this->model_name}->get_datatables();
      $data = array();
      $no = $this->input->post('start');
      foreach ($list as $menus) {
          $no++;
          $row = array();
          $row[] = '<input type="checkbox" class="data-check" value="'.$menus->{$this->primary_key_field}.'" onclick="showBottomDelete()"/>';
          $row[] = $menus->first_name;
          $row[] = $menus->email;


          //add html for action
          $row[] = '<a class="btn btn-sm btn-primary" href="javascript:void()" title="Edit" onclick="edit_menu('."'".$menus->{$this->primary_key_field}."'".')"><i class="glyphicon glyphicon-pencil"></i> Edit</a>
                <a class="btn btn-sm btn-danger" href="javascript:void()" title="Hapus" onclick="delete_menu('."'".$menus->{$this->primary_key_field}."'".')"><i class="glyphicon glyphicon-trash"></i> Delete</a>';
          $data[] = $row;
      }
      $output = array(
                      "draw" => $this->input->post('draw'),
                      "recordsTotal" => $this->{$this->model_name}->count_all(),
                      "recordsFiltered" => $this->{$this->model_name}->count_filtered(),
                      "data" => $data,
              );
      //output to json format
      $this->render_json($output);
  }

  public function ajax_edit($id)
  {
      $data = $this->{$this->model_name}->get_by_id($id);
      $this->render_json($data);
  }

  public function ajax_add()
  {
      $this->_validate();
      $data = array(
              'name' => $this->input->post('name'),
              'icon' => $this->input->post('icon'),
              'url' => $this->input->post('url'),
              'parent_id' => $this->input->post('parent_id'),
          );
      $insert = $this->{$this->model_name}->save($data);
      $this->render_json(array("status" => TRUE));
  }

  public function ajax_update()
  {
      $this->_validate();
      $data = array(
          'name' => $this->input->post('name'),
          'icon' => $this->input->post('icon'),
          'url' => $this->input->post('url'),
          'parent_id' => $this->input->post('parent_id'),
          );
      $this->{$this->model_name}->update(array('{$this->primary_key_field}' => $this->input->post($this->primary_key_field)), $data);
      $this->render_json(array("status" => TRUE));
  }

  public function ajax_delete($id)
  {
      $this->{$this->model_name}->delete_by_id($id);
      $this->render_json(array("status" => TRUE));
  }

  public function ajax_list_delete()
   {
       $list_id = $this->input->post('id');
       foreach ($list_id as $id) {
           $this->{$this->model_name}->delete_by_id($id);
       }
       $this->render_json(array("status" => TRUE));
   }

  private function _validate()
  {
      $data = array();
      $data['error_string'] = array();
      $data['inputerror'] = array();
      $data['status'] = TRUE;

      if($this->input->post('name') == '')
      {
          $data['inputerror'][] = 'name';
          $data['error_string'][] = 'First name is required';
          $data['status'] = FALSE;
      }else{

        if(!$this->_validate_string($this->input->post('icon')))
        {
          $data['inputerror'][] = 'icon';
          $data['error_string'][] = 'Invalid value';
          $data['status'] = FALSE;
        }

      }

      if($this->input->post('url') == '')
      {
          $data['inputerror'][] = 'url';
          $data['error_string'][] = 'First lastname is required';
          $data['status'] = FALSE;
      }

      if($data['status'] === FALSE)
      {
          $this->render_json($data);
          exit();
      }
  }

  private function _validate_string($string)
  {
      $allowed = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz";
      for ($i=0; $i<strlen($string); $i++)
      {
          if (strpos($allowed, substr($string,$i,1))===FALSE)
          {
              return FALSE;
          }
      }

     return TRUE;
  }

  private function _validate_number($string)
  {
      $allowed = "0123456789";
      for ($i=0; $i<strlen($string); $i++)
      {
          if (strpos($allowed, substr($string,$i,1))===FALSE)
          {
              return FALSE;
          }
      }

     return TRUE;
  }
}
