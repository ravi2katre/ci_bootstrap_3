<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');
class Menus extends Admin_Controller{

  public function __construct()
  {
      parent::__construct();
      $this->load->model('Menus_model');
  }

  public function index()
  {
      $this->load->helper('url');
      $this->mViewData['list'] = $this->Menus_model->get_rows();
      $this->render('menus', 'empty');
  }

  public function ajax_list()
  {
      $list = $this->Menus_model->get_datatables();
      $data = array();
      $no = $_POST['start'];
      foreach ($list as $menus) {
          $no++;
          $row = array();
          $row[] = '<input type="checkbox" class="data-check" value="'.$menus->menu_id.'" onclick="showBottomDelete()"/>';
          $row[] = $menus->name;
          $row[] = $menus->url;
          $row[] = $menus->icon;

          //add html for action
          $row[] = '<a class="btn btn-sm btn-primary" href="javascript:void()" title="Edit" onclick="edit_menu('."'".$menus->menu_id."'".')"><i class="glyphicon glyphicon-pencil"></i> Edit</a>
                <a class="btn btn-sm btn-danger" href="javascript:void()" title="Hapus" onclick="delete_menu('."'".$menus->menu_id."'".')"><i class="glyphicon glyphicon-trash"></i> Delete</a>';
          $data[] = $row;
      }
      $output = array(
                      "draw" => $_POST['draw'],
                      "recordsTotal" => $this->Menus_model->count_all(),
                      "recordsFiltered" => $this->Menus_model->count_filtered(),
                      "data" => $data,
              );
      //output to json format
      echo json_encode($output);
  }

  public function ajax_edit($id)
  {
      $data = $this->Menus_model->get_by_id($id);
      echo json_encode($data);
  }

  public function ajax_add()
  {
      $this->_validate();
      $data = array(
              'name' => $this->input->post('name'),
              'icon' => $this->input->post('icon'),
              'url' => $this->input->post('url'),

          );
      $insert = $this->Menus_model->save($data);
      echo json_encode(array("status" => TRUE));
  }

  public function ajax_update()
  {
      $this->_validate();
      $data = array(
          'name' => $this->input->post('name'),
          'icon' => $this->input->post('icon'),
          'url' => $this->input->post('url'),
          );
      $this->Menus_model->update(array('menu_id' => $this->input->post('menu_id')), $data);
      echo json_encode(array("status" => TRUE));
  }

  public function ajax_delete($id)
  {
      $this->Menus_model->delete_by_id($id);
      echo json_encode(array("status" => TRUE));
  }

  public function ajax_list_delete()
   {
       $list_id = $this->input->post('id');
       foreach ($list_id as $id) {
           $this->Menus_model->delete_by_id($id);
       }
       echo json_encode(array("status" => TRUE));
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
          echo json_encode($data);
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
