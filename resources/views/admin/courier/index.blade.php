<a href="/admin/courier/create">Tambah Kurir</a>
    <table border="1">
        <thead>
            <th>No</th>
            <th>Nama Kurir</th>
            <th>Aksi</th>
        </thead>
        <tbody>
            
            @foreach($index as $index)
            
            <tr>
                <td>{{$loop->iteration}}</td>
                <td>{{$index['courier']}}</td>
                <td><form action="/admin/courier/{{$index->id}}/edit" method="GET">
                	@csrf
                	<button>Edit</button>
                	</form>

            	</td> 
            </tr>
           @endforeach
        </tbody>
    </table>
