<?php

namespace App\Http\Controllers\Api;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Helpers\Http;

class Weather extends Controller
{
    const OPEN_WEATHER_FORECAST = 'https://api.openweathermap.org/data/2.5/forecast';
    const OPEN_WEATHER_CURRENT = 'https://api.openweathermap.org/data/2.5/weather';
    
    public function current(Request $request) {
        if (!$request->q) {
            return [
                'message' => 'Invalid request query',
                'error' => true
            ];
        }

        // open weather current weatheer request
        $weather = Http::get(self::OPEN_WEATHER_CURRENT, [
            'q' => $request->q,
            'units' => 'metric',
            'appid' => env('OPEN_WEATHER_API_KEY')
        ]);

        // response
        return [
            'message' => 'Success',
            'error' => false,
            'result' => $weather
        ];
    }

    public function forecast(Request $request)
    {
        if (!$request->q) {
            return [
                'message' => 'Invalid request query',
                'error' => true
            ];
        }

        // open weather forecast request
        $weather = Http::get(self::OPEN_WEATHER_FORECAST, [
            'q' => $request->q,
            'units' => 'metric',
            'appid' => env('OPEN_WEATHER_API_KEY')
        ]);

        // response
        return [
            'message' => 'Success',
            'error' => false,
            'result' => $weather
        ];
    }
}
