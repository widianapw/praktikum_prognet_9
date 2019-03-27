<a href="/admin/product/create">Tambah Produk</a>
    <table border="1">
        <thead>
            <th>No</th>
            <th>Nama Produk</th>
            <th>Harga</th>
            <th>Deskripsi</th>
            <th>Rating</th>
            <th>Stok</th>
            <th>Berat</th>
            <th>Aksi</th>
        </thead>
        <tbody>
            
            @foreach($index as $index)
            
            <tr>
                <td>{{$loop->iteration}}</td>
                <td>{{$index['product_name']}}</td>
                <td>{{$index['price']}}</td>
                <td>{{$index['description']}}</td>
                <td>{{$index['product_rate']}}</td>
                <td>{{$index['stock']}}</td>
                <td>{{$index['weight']}}</td>
                <td><form action="/admin/product/{{$index->id}}/edit" method="GET">
                	@csrf
                	<button>Edit</button>
                	</form>

            	</td> 
            </tr>
           @endforeach
        </tbody>
    </table>
