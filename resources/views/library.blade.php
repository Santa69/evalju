@extends('layouts.app')

@section('css')
  <link rel="stylesheet" href="/css/library.css">
@endsection

@section('content')
    <div class="container">
       <div class="row">
           <div class="col-md-8 col-md-offset-2">
               <div class="panel panel-default">
                 <div class="panel-heading">Library</div>
                 <table>
                    <tr>
                      <th>Name</th>
                      <th>Style</th>
                      <th>Note</th>
                      <th>Description</th>
                    </tr>
                    <tr>
                    @if(! empty($videogames))
                    @foreach ($videogames as $videogame)
                      <td><img src="{{$videogame->img}}" alt=""></td>

                        <td>  {{ $videogame->name}} </td>
                        <td>  {{ $videogame->genre}} </td>
                        <td>  {{ $videogame->note}} </td>
                    </tr>
                    <br>
                        @endforeach
                        @elseif(! empty($videogame))
                          {{ $videogame->name }}
                        @else
                          Library Video Games Is Empty
                        @endif
                  </table>
                  <div class="panel-body">
                </div>
             </div>
           </div>
        </div>
     </div>
@endsection
