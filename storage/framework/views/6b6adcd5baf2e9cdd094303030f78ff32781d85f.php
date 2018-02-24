<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">


<link href="<?php echo e(asset('css/app.css')); ?>" rel="stylesheet">

    <script src="<?php echo e(asset('js/app.js')); ?>"></script>

   


	<title><?php echo $__env->yieldContent('title'); ?></title>
	
</head>
<body>
	<div class="container">
		
		<?php echo $__env->yieldContent('content'); ?>
	</div>
	
	
</body>
</html>