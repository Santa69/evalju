@extends('layouts.app')

@section('css')
  <link href="/css/contact.css" rel="stylesheet">
@endsection


@section('content')
<div class="container">
    <div class="row">
        <div class="col-md-8 col-md-offset-2" id="row">
                <div class="panel-heading" id="titlesend">Send a New Message</div><br>

                <div class="col-md-8 col-md-offset-2" id="content">
                      {{ Form::open(['url' => '/contact/insertOne']) }}
                          {{ Form::label('name', 'Name') }}
                          {{ Form::text('name') }}
                          {{ Form::label('firstname', 'Firstname') }}
                          {{ Form::text('firstname') }}<br><br>
                          {{ Form::label('content', 'Message') }}
                          {{ Form::textarea('content') }}<br><br>
                          {{ Form::submit('Submit')}}
                        {{ Form::close() }}
                </div>
            </div>
        </div>
    </div>
@endsection
