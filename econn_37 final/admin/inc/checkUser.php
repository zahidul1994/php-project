<?php
namespace App\inc;
require __DIR__ . '/../../vendor/autoload.php';
use App\Session;
class checkUser{
    public static function isAdmin(){        
        if(Session::getSessionData('loggedin')){
            return true;
        }
        else return false;
    }
    public static function isUser(){
        if(Session::getSessionData('userloggedin')){
            return true;
        }
        else return false;
    }
}