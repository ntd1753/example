<?php

namespace App\Http\Controllers;

use App\Models\Book;
use Illuminate\Http\Request;

class bookController extends Controller
{
    function book(){
        $book=Book::all();

        return view("book", ['book' => $book]);
    }
}
