<?php

namespace App\Http\Controllers;

use App\Models\Student;
use Carbon\Carbon;
use Illuminate\Http\Request;

class StudentController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $student = Student::all();
        return response()->json($student);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        if (empty($request->number)) {
            $number = $this->generateUniqueNumber($request->birth);
            $request->merge(['number' => $number]);
        }

        Student::create($request->all());
        return [
            'status' => 'success',
            'student' => [
                $request->all()
            ]
        ];
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        $student = Student::where('id', $id)->get();
        return response()->json($student);
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        $student = Student::where('id', $id)->get();
        return response()->json($student);
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        if (empty($request->number)) {
            $number = $this->generateUniqueNumber($request->birth);
            $request->merge(['number' => $number]);
        }

        Student::where('id', $id)->update($request->all());
        return [
            'status' => 'success',
            'student' => [
                $request->all()
            ]
        ];
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $student = Student::where('id', $id)->get();
        Student::where('id', $id)->delete();
        return [
            'status' => 'success',
            'student' => $student
        ];
    }

    public function generateUniqueNumber($date)
    {
        $i = 1;
        do {
            $number = str_replace('-', '', $date).sprintf('%03d', $i++);
        } while (Student::where("number", $number)->first());

        return $number;
    }
}
