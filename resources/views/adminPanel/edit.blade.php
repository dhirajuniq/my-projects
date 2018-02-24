@extends('layouts.template')

@section('title','Edit Post #'.$post->id)

@section('content')

<h1>Edit Post # {{ $post->id }}</h1>

<div class="col-sm-8 col-sm-offset-2">
	<form action="{{ route('posts.update',['id'=>$post->id]) }}" method="POST">
		{{ csrf_field() }}

<input type="hidden" name="_method" value="PUT">
		<div class="form-group">
			<label for="title">Title:</label>
			<input type="text" name="title" class="form-control" value="{{ $post->title }}">
		</div>

		<div class="form-group">
			<label for="body">Body:</label>
			  <textarea name="body" id="" cols="30" rows="10" class="form-control">    {{ $post->body }}</textarea>
			
		</div>

		<input type="hidden" name="editForm" value="editForm">
		<button type="submit" class="btn btn-primary">submit</button>
		<a href="{{ route('posts.index') }}" class="btn btn-default pull-right">Go Back</a>
	</form>
</div>

@endsection
