<?php
namespace App\Http\Controllers;
use Illuminate\Http\Request;
use App\Videogame;
    class LibraryController extends Controller
    {
     public function __construct()
        {
           $this->middleware('auth');
      }
        public function index()
      {
        $videogames = Videogame::all();
         return view('library', ['videogames' => $videogames]);
        }
        public function getOne($id)
      {
          $videogame = Videogame::find($id);
        return view('library', ['videogame' => $videogame]);
        }
    }
