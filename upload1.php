<?php

require_once __DIR__ . '/vendor/autoload.php';

use Slim\Http\Request;
use Slim\Http\Response;

$app = new Slim\App();

$app->post('/upload', function ($request, $response, $args) {
    $files = $request->getUploadedFiles();
    if (empty($files['newfile'])) {
        throw new Exception('Expected a newfile');
    }
 
    $newfile = $files['newfile'];
    // do something with $newfile
	
	if ($newfile->getError() === UPLOAD_ERR_OK) {
    $uploadFileName = $newfile->getClientFilename();
    $newfile->moveTo(__DIR__ . '/uploads/'.$uploadFileName);
   }
});



$app->run();