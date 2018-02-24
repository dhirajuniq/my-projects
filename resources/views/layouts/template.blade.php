<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">


<link href="{{ asset('css/app.css') }}" rel="stylesheet">

    <script src="{{ asset('js/app.js') }}"></script>

   


	<title>@yield('title')</title>
	
</head>
<body>
	<div class="container">
		
		@yield('content')
	</div>
	
	
</body>
</html>