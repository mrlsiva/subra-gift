<div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel">
	<div class="carousel-inner" role="listbox">
  <?php  $val = 0; ?>
    @foreach($dashboard_image as $dashboard_image)
    <?php $val = ++$val; ?>
		<div class="carousel-item <?php if($val == 1) { ?> active <?php } ?>"> <a href="{{$dashboard_image->di_link}}"><img class="d-block img-fluid" src="storage/app/public/uploads/img/dashboardimage/{{$dashboard_image->di_image}}" alt="{{$dashboard_image->di_name}}"> </a></div>
    @endforeach
  </div>
	<a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev"> <span class="carousel-control-prev-icon" aria-hidden="true"></span> <span class="sr-only">Previous</span> </a>
	<a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next"> <span class="carousel-control-next-icon" aria-hidden="true"></span> <span class="sr-only">Next</span> </a>
</div>