<?php $__env->startSection('title','Blog Public Home Page'); ?>

<?php $__env->startSection('content'); ?>

    <div>
        <h2><?php echo e($organization); ?></h2>

		<?php $__currentLoopData = $posts; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $post): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
		 <div class="well well-lg">
            <h3><?php echo e($post->title); ?></h3>
            <p><?php echo e($post->body); ?></p>
            <br>
            <br>
            <p>visit Count:<?php echo e($post->visit_count); ?></p>
            <p>Comment Count:<?php echo e($post->comment_count); ?></p>
            
            <p>Post Created At:<?php echo e(date('F d, Y', strtotime($post->created_at))); ?> at <?php echo e(date('g:ia', strtotime($post->created_at))); ?></p>

            <a href="<?php echo e(route('posts.show',['id'=>$post->id])); ?>" class="btn btn-default pull-right">View Post</a>
            &nbsp;
        </div>

		<?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>

        <div class="row text-center">
        	<?php echo e($posts->links()); ?>

        </div>
    </div>
<?php $__env->stopSection(); ?>

    


<?php echo $__env->make('layouts.PublicHomePageTemplate', array_except(get_defined_vars(), array('__data', '__path')))->render(); ?>