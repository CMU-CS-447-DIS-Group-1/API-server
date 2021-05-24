<?php

namespace App\Http\Controllers\API;

use App\Models\Dish;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;

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

        return json_encode([
            'code' => 1,
            'data' => $data,
        ]);
    }

    /**
     * Store a newly created resource in storage.
     *
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

            return json_encode([
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
     * @param  int                         $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        $dish = Dish::find($id);
        if ($dish != null) {
            return json_encode([
                'code' => $dish != null,
                'data' => $dish,
            ]);
        }

        return json_encode([
            'code' => 0,
        ]);
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request    $request
     * @param  int                         $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int                         $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        return json_encode([
            'code' => Dish::destroy($id),
        ]);
    }
}
