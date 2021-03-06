
@extends('layouts.viewPostTemplate')

@section('title','View Post #'. $id)

@section('content')


<div id="fbCommentCount" style="display: none;">
	<span class="fb-comments-count" data-href="{{ Request::url() }}"></span>
	
</div>



<form style="display: none;" action="{{ route('posts.update',['id'=>$id]) }}" method="POST">
	{{ csrf_field() }}

	<input type="hidden" name="_method" value="PUT">

	<input type="text" name="commentCount" id="fbFormCommentCount">

	<input type="submit" value="submit comment count">

	<input type="text" name="visitCount" value="{{ $post->visit_count }}" id="postVisitCount">
	
</form>
  

<div class="row">
	<a href="http://localhost/Blog/public">Go Back to Home</a>
</div>

<div class="row">
	<h1>{{ $post->title }}</h1>
	<p>{{ $post->body }}</p>
</div>

<div class="row text-center" id="facebookCommentContainer">

	<div class="fb-comments" data-href="http://localhost/Blog/public/posts/{{ $id }}" data-width="800" data-numposts="10"></div>
	
</div>

<script>
	var fbCommentCount = document.getElementById('fbCommentCount').getElementsByClassName('fb_comments_count');

	setTimeout(function(){
		  document.getElementById('fbFormCommentCount').value = fbCommentCount[0].innerHTML;

		var visitCount = document.getElementById('postVisitCount').value;
		var visitCountPlusOne = parseInt(visitCount) + 1;

		document.getElementById('postVisitCount').value = visitCountPlusOne;

		var $formVar = $('form');

		$.ajax({
			url: $formVar.prop('{{ route('posts.update',['id'=>$id]) }}'),
			method: 'PUT',
			data: $formVar.serialize()
		});
	}, 1000);

	
</script>
	
@endsection