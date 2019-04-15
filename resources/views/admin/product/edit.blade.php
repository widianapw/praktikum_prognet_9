<html lang="en">
<head>
  <title></title>
  
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
</head>
<body>
  <div class="container">
      @if (count($errors) > 0)
      <div class="alert alert-danger">
        <strong>Whoops!</strong> There were some problems with your input.<br><br>
        <ul>
          @foreach ($errors->all() as $error)
              <li>{{ $error }}</li>
          @endforeach
        </ul>
      </div>
      @endif

        @if(session('success'))
        <div class="alert alert-success">
          {{ session('success') }}
        </div> 
        @endif

    <h3 class="jumbotron">Laravel Multiple File Upload</h3>
<form method="post" action="/admin/product" enctype="multipart/form-data">
  @csrf
	Nama :<input type="text" name="nama_produk" value="{{$test->product_name}}" required=""><br>
	Harga : <input type="number" name="harga" value="{{$test->price}}" required=""><br>
	Stok : <input type="number" name="stok" value="{{$test->stock}}" required=""><br>
	Berat : <input type="number" name="berat" value="{{$test->weight}}" required=""><br>
	kategori : 
		@foreach ($category as $category)
			<input type="checkbox" name="kategori[]" value="{{$category->id}}" 
			@foreach ($cat as $cat1)  
				@if ($category->id == $cat1['category_id'])
					checked=""
				@endif
			@endforeach>
				{{$category->category_name}}  
		@endforeach
  	<br><br>
	Foto:
        <div class="input-group control-group increment" >
          <input type="file" name="filename[]" class="form-control" >
          <div class="input-group-btn"> 
            <button class="btn btn-success" type="button"><i class="glyphicon glyphicon-plus"></i>Add</button>
          </div>
        </div>
        <div class="clone hide">
          <div class="control-group input-group" style="margin-top:10px">
            <input type="file" name="filename[]" class="form-control">
            <div class="input-group-btn"> 
              <button class="btn btn-danger" type="button"><i class="glyphicon glyphicon-remove"></i> Remove</button>
            </div>
          </div>
		</div>
    Deskripsi : <br><textarea type="text" name="deskripsi" rows="5" required="">{{$test->description}}</textarea><br>
    
    Diskon: 
    <input type="checkbox" id="myCheck" name="dis"value="1" onclick="myFunction()">
    
    <input id="text" type="text" name="persentase" style="display:none" placeholder="Persentase diskon"><br>
    <input id="text1" type="date" name="tanggal_mulai" style="display:none" placeholder="tanggal mulai" ><br>
    <input id="text2" type="date" name="tanggal_akhir" style="display:none" placeholder="tanggal akhir" ><br>
    <button type="submit" class="btn btn-primary" style="margin-top:10px">Submit</button>

  </form>        
  </div>

  
<script type="text/javascript">


    $(document).ready(function() {

      $(".btn-success").click(function(){ 
          var html = $(".clone").html();
          $(".increment").after(html);
      });

      $("body").on("click",".btn-danger",function(){ 
          $(this).parents(".control-group").remove();
      });

    });

    
    function myFunction() {
      var checkBox = document.getElementById("myCheck");
      var text = document.getElementById("text");
      var text1 = document.getElementById("text1");
      var text2 = document.getElementById("text2");
      if (checkBox.checked == true){
        text.style.display = "block";
        text1.style.display = "block";
        
        text2.style.display = "block";
      } else {
        text.style.display = "none";
        text1.style.display = "none";
        text2.style.display = "none";
        
      }
    }

</script>
</body>
</html>