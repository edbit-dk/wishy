<?php

ini_set('display_errors', 1);
ini_set('display_startup_errors', 1);
error_reporting(E_ALL);

require 'classes/db.class.php';
require 'classes/simple.db.class.php';

session_start();

$app['version'] = '1.0';

$app['year'] = date('Y');

define('KB', 1024);
define('MB', 1048576);
define('GB', 1073741824);
define('TB', 1099511627776);

$app['cookie_name'] = 'session';
$app['session_name'] = 'user';
$app['list_name'] = 'list';
$db_prefix = 'wishy_';

$app['db'] = new SimpleDB(['host' => 'localhost', 'user' => 'root','pass' => 'mysql','database' => 'wishy']);

$app['url'] = 'http://server-pc/wishy';

$app['asset'] = $app['url'] . '/public/assets';

$app['name'] = 'Wishy';

$app['title'] = 'Wishy - Ønskelister til alle begivenheder';