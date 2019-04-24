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
	Nama :<input type="text" name="nama_produk" required=""><br>
	Harga : <input type="number" name="harga" required=""><br>
	
	
	Stok : <input type="number" name="stok" required=""><br>
  
  kategori : 
  @foreach ($category as $category)
      <input type="checkbox" name="kategori[]" value="{{$category->id}}">{{$category->category_name}}  
  @endforeach
  <br><br>
  
  Foto:
  {{--       <div class="input-group control-group increment" >
          <input type="file" name="filename[]" class="form-control">
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
    </div> --}}
  
  <div class="gallery"></div>
  <input type="file" name="filename[]" class="form-control" multiple="multiple" id="gallery-photo-add">
        {{-- <img style="display: none;" id="output_image"/>
        <div class="input-group control-group increment" >
          <input type="file" name="filename[]" class="form-control" accept="image/*" onchange="preview_image(event)">
          <div class="input-group-btn"> 
            <button class="btn btn-success" type="button"><i class="glyphicon glyphicon-plus"></i>Add</button>
          </div>
        </div>
        <div class="clone hide">
          <img height="300px" weight="300px" id="output_image"/>
          <div class="control-group input-group" style="margin-top:10px">
            <input type="file" name="filename[]" class="form-control" accept="image/*" onchange="preview_image(event)">
            <div class="input-group-btn"> 
              <button class="btn btn-danger" type="button"><i class="glyphicon glyphicon-remove"></i> Remove</button>
            </div>
          </div>
		</div> --}}
    Deskripsi : <br><textarea type="text" name="deskripsi" rows="5``" required=""></textarea><br>
    
    Diskon: 
    <input type="checkbox" id="myCheck" name="dis" onclick="myFunction()">
    <div style="display: none" id="text">
      <input type="text" name="persentase" placeholder="Persentase diskon"><br>
      <input type="date" name="tanggal_mulai" placeholder="tanggal mulai" ><br>
      <input type="date" name="tanggal_akhir" placeholder="tanggal akhir" ><br>
    </div><br>
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
      if (checkBox.checked == true){
        text.style.display = "block";
        
      } else {
        text.style.display = "none";
        
      }
    }

    function preview_image(event) 
    {
      var reader = new FileReader();
      reader.onload = function()
      {
        var output = document.getElementById('output_image');
        output.src = reader.result;
      }
     reader.readAsDataURL(event.target.files[0]);
    }
    $(function() {
    // Multiple images preview in browser
    var imagesPreview = function(input, placeToInsertImagePreview) {

        if (input.files) {
            var filesAmount = input.files.length;

            for (i = 0; i < filesAmount; i++) {
                var reader = new FileReader();

                reader.onload = function(event) {
                    $($.parseHTML('<img>')).attr('height',100).attr('widht',300).attr('src', event.target.result).appendTo(placeToInsertImagePreview);
                }

                reader.readAsDataURL(input.files[i]);
            }
        }

    };

    $('#gallery-photo-add').on('change', function() {
        imagesPreview(this, 'div.gallery');
    });
});


</script>
</body>
</html>