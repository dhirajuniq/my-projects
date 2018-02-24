<?php $__env->startSection('title','Add New Post'); ?>

<?php $__env->startSection('content'); ?>

<h1>Add New Post</h1>

<div class="col-sm-8 col-sm-offset-2">
	<form action="<?php echo e(route('posts.store')); ?>" method="post">
		<?php echo e(csrf_field()); ?>



		<div class="form-group">
			<label for="title">Title:</label>
			<input type="text" name="title" class="form-control">
		</div>

		<div class="form-group">
			<label for="body">Body:</label>
			<textarea name="body" id="" cols="30" rows="10" class="form-control"></textarea>
			
		</div>
		<button type="submit" class="btn btn-primary">submit</button>
		<a href="<?php echo e(route('posts.index')); ?>" class="btn btn-default pull-right">Go Back</a>
	</form>
</div>

<?php $__env->stopSection(); ?>

<?php echo $__env->make('layouts.template', array_except(get_defined_vars(), array('__data', '__path')))->render(); ?>