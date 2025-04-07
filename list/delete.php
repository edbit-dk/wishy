<?php

include '../app/includes/functions.php';

$list_id = $app['db']->CleanDBData($_GET['id']);

$app['db']->Delete("{$db_prefix}lists", ['list_id' => $list_id]);

$gifts = $app['db']->Select("SELECT * FROM {$db_prefix}gifts WHERE gift_list = " . $list_id);

if(!empty($gifts)) {
    foreach($gifts as $gift) {
        if(!empty($gift['gift_image'])) {
    
            $gift_img = $gift['gift_image'];
            
            $file = "../public/uploads/$list_id/$gift_img";
        
            if(file_exists($file)) {
            unlink($file);
            }
        
        }
    }

    $app['db']->Delete("{$db_prefix}gifts", ['gift_list' => $list_id]);
}

$app['db']->Delete("{$db_prefix}sessions", ['session_list' => $list_id]);

header('Location: ' . $app['url'] . '/list/read');