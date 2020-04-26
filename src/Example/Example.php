<?php declare(strict_types=1);

namespace App\Example;

class Example
{
    private string $string;
    private int $number;

    public function __construct(string $string, int $number)
    {
        $this->string = $string;
        $this->number = $number;
    }

    public function returnConcatenatedProperties(): string
    {
        return "{$this->string} {$this->number}";
    }
}
