<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class UserModel extends Model
{
    use HasFactory;

    protected $table = "user";
    protected $primaryKey = "id";

    static $rules = [
        'nama_user_akun'=>'required',
        'level'=>'required',
        'password'=>'required'
    ];

    static $rulesEdit = [
        'nama_user_akun'=>'required',
        'level'=>'required',
    ];


}
