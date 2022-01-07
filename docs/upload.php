<?php
require('../config/db.php');
require('../config/config.php');

if (isset($_FILES['file']['name'])) {
    if (!$_FILES['file']['error']) {
        $name = rand(100, 1000) . '_' . date('Ymd');
        $ext = pathinfo($_FILES['file']['name'], PATHINFO_EXTENSION);
        $filename = $name . '.' . $ext;
        $destination = '../images/' . $filename; //change this directory
        $location = $_FILES["file"]["tmp_name"];
        move_uploaded_file($location, $destination);
        echo ROOT_URL . 'images/' . $filename;
    } else {
        echo 'Ooops!  Your upload triggered the following error:  ' . $_FILES['file']['error'];
    }
}
