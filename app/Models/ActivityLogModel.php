<?php

namespace App\Models;

use CodeIgniter\Model;

class ActivityLogModel extends Model
{
    protected $table = 'auth_logins';
    protected $allowedFields = [
        'email',
        'date',
        'success'
    ];
}
