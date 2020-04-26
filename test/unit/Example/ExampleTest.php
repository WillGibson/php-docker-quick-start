<?php declare(strict_types=1);

namespace Test\Unit\Example;

use App\Example\Example;
use Faker\Factory;
use PHPUnit\Framework\TestCase;

class ExampleTest extends TestCase
{
    public function testReturnConcatenatedProperties_returnsContructorArgumentsAsConcatenatedString(): void
    {
        $faker = Factory::create();
        $inputString = $faker->word();
        $inputNumber = $faker->randomNumber();
        $example = new Example($inputString, $inputNumber);

        $result = $example->returnConcatenatedProperties();

        $this->assertEquals($result, "{$inputString} {$inputNumber}");
    }
}
