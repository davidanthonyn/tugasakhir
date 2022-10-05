<?php

namespace App\Controllers;

use App\Models\UsersModel;

class User extends BaseController
{
    protected $db, $builder;

    public function __construct()
    {
        $this->db      = \Config\Database::connect();
        $this->builder = $this->db->table('users');
    }

    public function index()
    {
        $data['title'] = 'User Detail';

        $userid = user()->id;

        $this->builder->select('users.id as userid, username, email, name, fullname, user_image');
        $this->builder->join('auth_groups_users', 'auth_groups_users.user_id = users.id');
        $this->builder->join('auth_groups', 'auth_groups_users.group_id = auth_groups.id');
        $this->builder->where('users.id', $userid);
        $query =  $this->builder->get();

        $data['user'] = $query->getRow();

        if (empty($data['user'])) {
            return redirect()->to('/admin');
        }

        return view('user/index', $data);
    }



    public function tambah()
    {
        $user = new UsersModel;
        //Set waktu untuk created at dan updated at
        $timezone = date_default_timezone_set('Asia/Jakarta'); # add your city to set local time zone
        $now = date('Y-m-d H:i:s');
        $data = [
            'fullname' => $this->request->getPost('fullname'),
            'username' => $this->request->getPost('username'),
            'email' => $this->request->getPost('email'),
            'password_hash' => PASSWORD_BCRYPT($this->request->getPost('passwordhash')),
            'active' => 1,
            'created_at' => $now,
            'updated_at' => $now
        ];

        $user->save($data);
        $data = ['status' => 'User Inserted Successfully'];
        return $this->responses->setJSON($data);
    }
}
