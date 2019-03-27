<!DOCTYPE html>
<html>
<head>
	<title></title>
</head>
<body>
<form action="/admin/product/{{$test->id}}" method="POST" >
	{{csrf_field()}}
	@method("PUT")
	<input type="text" name="nama_produk" value="{{$test->product_name}}" required=""><br>
	<input type="number" name="harga" value="{{$test->price}}" required=""><br>
	<input type="text" name="deskripsi" value="{{$test->description}}" required=""><br>
	<input type="number" name="rating" value="{{$test->product_rate}}" required=""><br>
	<input type="number" name="stok" value="{{$test->stock}}" required=""><br>
	<input type="number" name="berat" value="{{$test->weight}}" required=""><br>
	<input type="submit" name="submit" value="update">
</form>
</body>
</html>
