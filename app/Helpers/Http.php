<?php

namespace App\Helpers;

use \GuzzleHttp\Client as HttpClient;

class Http
{    
    public static function get(String $url, Array $params) {
        $client = new HttpClient();
        $response = $client->request('GET', $url, [
            'query' => $params
        ]);

        // parse response
        $statusCode = $response->getStatusCode();
        $body = json_decode($response->getBody());

        return $body;
    }    
}
