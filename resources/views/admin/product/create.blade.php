<form method="post" action="/admin/product">
	@csrf
	<input type="text" name="nama_produk" required=""><br>
	<input type="number" name="harga" required=""><br>
	<input type="text" name="deskripsi" required=""><br>
	<input type="number" name="rating" required=""><br>
	<input type="number" name="stok" required=""><br>
	<input type="number" name="berat" required=""><br>
	<input type="submit" name="submit" value="tambahkan">
</form>