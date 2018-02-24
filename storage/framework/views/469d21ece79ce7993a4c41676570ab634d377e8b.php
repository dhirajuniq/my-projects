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
		
			
		<div class="loginBox nav navbar-nav pull-right">
			 <?php if(auth()->guard()->guest()): ?>
                            <li><a href="<?php echo e(route('login')); ?>">Login</a></li>
                            <li><a href="<?php echo e(route('register')); ?>">Register</a></li>
                        <?php else: ?>
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
                        <?php endif; ?>
		
		
		</div>

		<div>
			<h1>Welcome to the Blog</h1>
		</div>
		

		
		<nav class="navbar navbar-default">
			<div class="container-fluid">
				<ul class="nav navbar-nav">
					<li class="dropdown">
						<a href="" class="dropdown-toggle" data-toggle="dropdown">Sort Posts By <span class="caret"></span></a>
					<ul class="dropdown-menu">
						<li><a href="<?php echo e(route('getPublic',['type'=>'recentPosts'])); ?>">Top 10 Most Recent Posts</a></li>
							<li><a href="<?php echo e(route('getPublic',['type'=>'mostCommented'])); ?>">Top 10 Most Commented Posts</a></li>
							<li><a href="<?php echo e(route('getPublic',['type'=>'mostVisited'])); ?>">Top 10 Most Visited Posts</a></li>
						</ul>
					
				</li>
			</ul>

			<?php if(Auth::check()): ?>

			<ul class="nav navbar-nav navbar-right">
				<li><a href="<?php echo e(route('posts.index')); ?>">Manage Blog Posts</a></li>
			</ul>
			<?php endif; ?>


			</div>
			
		</nav>

		<div>
			
		
		<?php echo $__env->yieldContent('content'); ?>

			<div class="footer text-center" style="margin: 20px 0 60px 0;">
				<p>&copy; Begin programming</p>
			</div>
	</div>
	
</body>
</html>