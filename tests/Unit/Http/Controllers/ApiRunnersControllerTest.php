<?php

namespace Http\Controllers;

use App\Http\Controllers\ApiRunnersController;
use PHPUnit\Framework\TestCase;

class ApiRunnersControllerTest extends TestCase
{
    public function testGettingRunnerDetail()
    {
        $response = $this->json('GET', '/api/v1/runner/{id}/form-data', );
        $response->assertStatus(200);

        $response->assertJsonStructure(
            [
                [
                    'id',
                    'name',
                    'description',
                    'units',
                    'price',
                    'image',
                    'created_at',
                    'updated_at'
                ]
            ]
        );
    }

}
