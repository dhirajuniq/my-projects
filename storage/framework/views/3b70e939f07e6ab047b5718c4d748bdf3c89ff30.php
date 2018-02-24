<?php $__env->startSection('title','Blog Admin Panel'); ?>

<?php $__env->startSection('content'); ?>
<div class="nav navbar-nav pull-right">
	<li class="dropdown">
                                <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false">
                                    <?php echo e(Auth::user()->name); ?> <span class="caret"></span>
                                </a>

                                <ul class="dropdown-menu" role="menu">
                                    <li>
                                        <a href="<?php echo e(route('logout')); ?>"
                                            onclick="event.preventDefault();
                                                     document.getElementById('logout-form').submit();">
                                            Logout
                                        </a>

                                        <form id="logout-form" action="<?php echo e(route('logout')); ?>" method="POST" style="display: none;">
                                            <?php echo e(csrf_field()); ?>

                                        </form>
                                    </li>
                                </ul>
                            </li>

</div>

 
	<h1>Admin Panel</h1>

	<a href="<?php echo e(route('posts.create')); ?>" class="btn btn-primary pull-right">Add New Blog Post</a>

	<br>
	<br>
	<br>

	<table class="table">
		<thead>
			<th>id</th>
			<th>title</th>
			<th>body</th>
			<th>edit</th>
			<th>delete</th>
		</thead>

		<tbody>
			<?php $__currentLoopData = $posts; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $post): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
					<tr>
						<th><?php echo e($post->id); ?></th>
						<td><?php echo e($post->title); ?></td>
						<td><?php echo e($post->body); ?></td>
						<td><a href="<?php echo e(route('posts.edit',['id'=>$post->id])); ?>" class="btn btn-info">Edit</a></td>
						<td>
							<form action="<?php echo e(route('posts.destroy',['id'=>$post->id])); ?>" method="post">
								<?php echo e(csrf_field()); ?>

								<input type="hidden" name="_method" value="Delete">

								<input type="submit" class="btn btn-danger" value="Delete">
								
							</form>
								
						</td>
					</tr>
			<?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
			
		</tbody>
	</table>


<?php $__env->stopSection(); ?>
<?php echo $__env->make('layouts.template', array_except(get_defined_vars(), array('__data', '__path')))->render(); ?>