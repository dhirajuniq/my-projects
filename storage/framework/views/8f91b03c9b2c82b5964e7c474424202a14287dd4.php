<?php $__env->startSection('title','View Post #'. $id); ?>

<?php $__env->startSection('content'); ?>


<div id="fbCommentCount" style="display: none;">
	<span class="fb-comments-count" data-href="<?php echo e(Request::url()); ?>"></span>
	
</div>



<form style="display: none;" action="<?php echo e(route('posts.update',['id'=>$id])); ?>" method="POST">
	<?php echo e(csrf_field()); ?>


	<input type="hidden" name="_method" value="PUT">

	<input type="text" name="commentCount" id="fbFormCommentCount">

	<input type="submit" value="submit comment count">

	<input type="text" name="visitCount" value="<?php echo e($post->visit_count); ?>" id="postVisitCount">
	
</form>
  

<div class="row">
	<a href="http://localhost/Blog/public">Go Back to Home</a>
</div>

<div class="row">
	<h1><?php echo e($post->title); ?></h1>
	<p><?php echo e($post->body); ?></p>
</div>

<div class="row text-center" id="facebookCommentContainer">

	<div class="fb-comments" data-href="http://localhost/Blog/public/posts/<?php echo e($id); ?>" data-width="800" data-numposts="10"></div>
	
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
			url: $formVar.prop('<?php echo e(route('posts.update',['id'=>$id])); ?>'),
			method: 'PUT',
			data: $formVar.serialize()
		});
	}, 1000);

	
</script>
	
<?php $__env->stopSection(); ?>
<?php echo $__env->make('layouts.viewPostTemplate', array_except(get_defined_vars(), array('__data', '__path')))->render(); ?>