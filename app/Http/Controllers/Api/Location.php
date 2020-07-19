<?php

namespace App\Http\Controllers\Api;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use \GuzzleHttp\Client as HttpClient;
use App\Models\Item as ItemModel;

class Location extends Controller
{
    const FOURSQUARE_VENUE_SEARCH = 'https://api.foursquare.com/v2/venues/search';
    const RANGE = 10;
    
    public function search(Request $request)
    {
        // foursquare api venue search request
        $client = new HttpClient();
        $response = $client->request('GET', self::FOURSQUARE_VENUE_SEARCH, [
            'query' => [
                'near' => $request->near,
                'query' => $request->q,
                'limit' => $request->limit ? $request->limit : self::RANGE,
                'client_id' => env('FOURSQUARE_CLIENT_ID'),
                'client_secret' => env('FOURSQUARE_CLIENT_SECRET'),
                'v' => env('FOURSQUARE_VERSION_DATE')
            ]
        ]);

        // parse response
        $statusCode = $response->getStatusCode();
        $body = json_decode($response->getBody());

        // parse response body
        $result = $body->response->venues;

        // response
        return [
            'message' => 'Success',
            'error' => false,
            'data'  => $result
        ];
    }
}
