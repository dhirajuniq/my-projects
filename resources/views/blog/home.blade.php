
@extends('layouts.PublicHomePageTemplate')

@section('title','Blog Public Home Page')

@section('content')

    <div>
        <h2>{{ $organization }}</h2>

		@foreach($posts as $post)
		 <div class="well well-lg">
            <h3>{{$post->title}}</h3>
            <p>{{ $post->body }}</p>
            <br>
            <br>
            <p>visit Count:{{ $post->visit_count }}</p>
            <p>Comment Count:{{ $post->comment_count }}</p>
            
            <p>Post Created At:{{ date('F d, Y', strtotime($post->created_at)) }} at {{ date('g:ia', strtotime($post->created_at)) }}</p>

            <a href="{{ route('posts.show',['id'=>$post->id]) }}" class="btn btn-default pull-right">View Post</a>
            &nbsp;
        </div>

		@endforeach

        <div class="row text-center">
        	{{ $posts->links() }}
        </div>
    </div>
@endsection

    

