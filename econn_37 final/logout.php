<?php
require __DIR__ . '/vendor/autoload.php';
use App\Session;
Session::setSessionData('userloggedin',false);
Session::clearSessionData(userinfo);
header("location: account.php");