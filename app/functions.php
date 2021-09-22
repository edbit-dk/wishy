<?php

include 'config.php';

function app($key, $echo = true) {
    global $app;

    if($app[$key] && $echo) {
        echo $app[$key];
    } else {
        return $app[$key];
    }
}

function url($path = '') {
    global $app;
    echo $app['url'] . $path;
}

function login($user_id) {
    global $app;
    $name = app('session_name', false);
    if(!isset($_SESSION[$name])) {
       return $_SESSION[$name] = $user_id;
    }
    return false;
}

function logout() {
    global $app;
    $name = app('session_name', false);
    if(isset($_SESSION[$name])) {
        unset($_SESSION[$name]);
        return true;
    }
    return false;
}

function auth() {
    global $app;
    $name = app('session_name', false);
    if(isset($_SESSION[$name])) {
        return true;
    }
    return false;
}

function is_auth() {
    global $app;
    $name = app('session_name', false);
    if(isset($_SESSION[$name])) {
        return true;
    }
    return redirect('/auth/login');
}


function user() {
    global $app;
    $name = app('session_name');
    if(isset($_SESSION[$name])) {
        return $_SESSION[$name];
    }
    return false;
}


function redirect($url) {
    global $app;
    return header('Location: ' . $app['url'] . $url);
}