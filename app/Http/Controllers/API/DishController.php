<?php

namespace App\Http\Controllers\API;

use App\Models\Dish;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;

/**
 * @group Dish API
 */
class DishController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $data = Dish::all();

        return response()->json($data);
    }

    /**
     * Store a newly created resource in storage.
     *
     * @queryParam name string Name of dish
     * @queryParam price double Price of dish
     * @queryParam description Description of dish
     * @param  \Illuminate\Http\Request    $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $request = $request->only('name', 'price', 'description');
        if (isset($request['name']) && isset($request['price'])) {
            $data = Dish::create([
                'name' => $request['name'],
                'price' => $request['price'],
                'description' => $request['description'],
            ]);

            return response()->json([
                'code' => 1,
                'data' => $data,
            ]);
        }

        return json_encode([
            'code' => 0,
        ]);
    }

    /**
     * Display the specified resource.
     *
     * @urlParam dish int required Id of dish. Example: 1
     * @param  int                         $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        $dish = Dish::find($id);
        if ($dish != null) {
            return response()->json([
                'code' => $dish != null,
                'data' => $dish,
            ]);
        }

        return response()->json([
            'code' => 0,
        ]);
    }

    /**
     * Update the specified resource in storage.
     *
     * @urlParam dish int Id of dish. Example: 1
     * @queryParam name string required Name of dish
     * @queryParam price double required Price of dish
     * @queryParam description Description of dish
     * @param  \Illuminate\Http\Request    $request
     * @param  int                         $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        $request = $request->only('name', 'price', 'description');
        if (isset($request['name']) && isset($request['price'])) {
            $data = Dish::create([
                'name' => $request['name'],
                'price' => $request['price'],
                'description' => $request['description'],
            ]);

            return response()->json([
                'code' => 1,
                'data' => $data,
            ]);
        }

        return response()->json([
            'code' => 0,
        ]);
    }

    /**
     * Remove the specified resource from storage.
     *
     * @urlParam dish int Id of dish. Example: 1
     * @response 200 {
     *  "code": 1
     * }
     * @param  int                         $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        return response()->json([
            'code' => Dish::destroy($id),
        ]);
    }
}
