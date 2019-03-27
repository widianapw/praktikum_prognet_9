<!DOCTYPE html>
<html>
<head>
	<title></title>
</head>
<body>
<form action="/admin/courier/{{$test->id}}" method="POST" >
	{{csrf_field()}}
	@method("PUT")
	<input type="text" name="courier" value="{{$test->courier}}" required=""><br>
	<input type="submit" name="submit" value="update">
</form>
</body>
</html>
