<?php

namespace App\Http\Controllers\Api;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Helpers\Http;

class Location extends Controller
{
    const FOURSQUARE_VENUE_SEARCH = 'https://api.foursquare.com/v2/venues/search';
    const RANGE = 5;
    
    public function search(Request $request)
    {
        if (!$request->q) {
            return [
                'message' => 'Invalid request query',
                'error' => true
            ];
        }

        // foursquare api venue search request
        $location = Http::get(self::FOURSQUARE_VENUE_SEARCH, [
            'query' => $request->q,
            'near' => $request->near ? $request->near : 'Tokyo,JP',
            'limit' => $request->limit ? $request->limit : self::RANGE,
            'client_id' => env('FOURSQUARE_CLIENT_ID'),
            'client_secret' => env('FOURSQUARE_CLIENT_SECRET'),
            'v' => env('FOURSQUARE_VERSION_DATE')
        ]);

        // parse response body
        $result = $location->response->venues;

        // response
        return [
            'message' => 'Success',
            'error' => false,
            'result' => $result
        ];
    }
}
