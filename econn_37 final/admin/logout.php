<?php
require __DIR__ . '/../vendor/autoload.php';
use App\Session;
Session::setSessionData('loggedin',false);
Session::clearSessionData(userinfo);
header("location: index.php");