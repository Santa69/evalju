@extends('layouts.app')

@section('css')
  <link href="/css/library.css" rel="stylesheet">
@endsection


@section('content')
    <div class="container">
       <div class="row">
         @if(Auth::check())
         <div class="col-md-12" >Create New Video Game</div>
         <div class="col-md-12"id="create">
           {{ Form::open(['url' => '/products/insertOne']) }}
               {{ Form::label('name', 'Name') }}
               {{ Form::text('name') }}
               {{ Form::label('genre', 'Genre') }}
               {{ Form::text('genre') }}
               {{ Form::label('note', 'Note') }}
               {{ Form::text('note') }}
               {{ Form::label('description', 'Description') }}
               {{ Form::textarea('description') }}
               {{ Form::submit('Submit')}}
             {{ Form::close() }}
         </div>
         @endif
                 <div class="panel-heading" id="product">Welcome to the Best Library</div><br>
                 @if(! empty($products))
                   @foreach ($products as $product)
                     <div class="col-md-3 col-md-offset-2" id="list">
                     <h3>{{ $product->name }}
                       @if(Auth::check())
                      <a href='/products/{{ $product->id }}/delete'><i class="fa fa-trash-o" aria-hidden="true"></i></a>
                      @endif</h3>

                     <img src="{{ $product->img }}" ><br>
                     <table>
                       <tr><th>Genre</th>
                       <th>Note</th></tr>
                       <tr><td>{{ $product->genre }}</td>
                       <td>{{ $product->note }}/10</td></tr>
                     </table><br>
                      <p>{{ $product->description }}</p>
                    </div>
                   @endforeach
                 @elseif(! empty($product))
                   {{ $product->name }}
                 @else
                   Aucun product affiché
                 @endif

     </div>
   </div>



@endsection
