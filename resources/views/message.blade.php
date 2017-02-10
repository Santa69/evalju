@extends('layouts.app')
@section('css')
<link href="/css/message.css" rel="stylesheet">
@endsection
@section('content')
    <div class="container">
       <div class="row">
         <div class="col-md-12">
                   <h3><i class="fa fa-envelope" aria-hidden="true"></i> Messages</h3>
                     <div class="col-md-8 col-md-offset-2" id="msg">
                 @if(! empty($contacts))
                   @foreach ($contacts as $contact)

                       <div class="content">
                     <div class="name">
                     <span>Name :  </span>{{ $contact->name }}
                   </div>
                   <div class="firstname">
                     <span>Firstname : </span>{{ $contact->firstname }}
                   </div><br>
                    <div class="message">
                     {{ $contact->content }}
                   </div><br>
                     <a href='/message/{{ $contact->id }}/delete'><i class="fa fa-trash-o fa-3x" aria-hidden="true"></i></a><br>
                  <div class="sended">  <span>Send At : </span>{{ $contact->created_at}}
                  </div>
                    </div>

                   @endforeach
                 @elseif(! empty($contact))
                   {{ $contact->name }}
                 @else
                   Aucun Message affiché
                 @endif
 <br><br><br>
</div>

            </div>
           </div>
        </div>
     </div>
@endsection
