<?php

require '../app/config/error_handling.php';
require '../app/config/config.php';

require '../app/lib/app.php';
require '../app/lib/controller.php';
require '../app/lib/model.php';

$app = new Sovrin\App();
$app->run();