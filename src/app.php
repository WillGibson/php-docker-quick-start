<?php declare(strict_types=1);

namespace App;

use App\Example\Example;

require_once ('vendor/autoload.php');

$example = new Example('ABC', 123);

echo $example->returnConcatenatedProperties() .PHP_EOL;
