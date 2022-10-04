<?php

namespace App\Controllers;

use App\Models\ActivityLogModel;

class Admin extends BaseController
{
    protected $db, $builder;

    public function __construct()
    {
        $this->db      = \Config\Database::connect();
        $this->builder = $this->db->table('users');
    }

    public function index()
    {
        return view('admin/index');
    }


    public function allusers()
    {
        $data['title'] = 'User List';

        //Satu tabel user
        // $users = new \Myth\Auth\Models\UserModel();
        // $data['users'] = $users->findAll();


        //Beberapa table menggunakan join, untuk memunculkan role 1/2 di database, jadi admin/kasir pada tampilan web
        $this->builder->select('users.id as userid, username, email, name');
        $this->builder->join('auth_groups_users', 'auth_groups_users.user_id = users.id');
        $this->builder->join('auth_groups', 'auth_groups_users.group_id = auth_groups.id');
        $query =  $this->builder->get();

        $data['users'] = $query->getResult();

        return view('admin/allusers', $data);
    }

    public function detailuser($id = 0)
    {
        $data['title'] = 'User Detail';

        $this->builder->select('users.id as userid, username, email, name, fullname, user_image');
        $this->builder->join('auth_groups_users', 'auth_groups_users.user_id = users.id');
        $this->builder->join('auth_groups', 'auth_groups_users.group_id = auth_groups.id');
        $this->builder->where('users.id', $id);
        $query =  $this->builder->get();

        $data['user'] = $query->getRow();

        if (empty($data['user'])) {
            return redirect()->to('/admin');
        }

        return view('admin/detailuser', $data);
    }

    public function activitylog()
    {
        $data['title'] = 'Activity Log';

        //Cara connect db tanpa model
        // $db = \Config\Database::connect();
        // $auth = $db->query("SELECT * FROM auth_logins");
        // foreach ($auth->getResultArray() as $row) {
        //     d($row);
        // }

        // Satu tabel user
        // $users = new \Myth\Auth\Models\UserModel();
        // $data['auth_logins'] = $users->findAll();


        //Beberapa table menggunakan join, untuk memunculkan role 1/2 di database, jadi admin/kasir pada tampilan web
        //$this->builder->select('users.id as userid, username, email, name');
        //$this->builder->join('auth_groups_users', 'auth_groups_users.user_id = users.id');
        //$this->builder->join('auth_groups', 'auth_groups_users.group_id = auth_groups.id');
        //$query =  $this->builder->get();

        //$data['users'] = $query->getResult();

        //$activityModel = new \App\Models\ActivityLogModel();
        $activityModel = new ActivityLogModel();
        $data['auth_logins'] = $activityModel->findAll();
        return view('admin/activitylog', $data);
    }
}
