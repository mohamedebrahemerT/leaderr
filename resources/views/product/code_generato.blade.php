@extends('layout.main') @section('content')
@if(session()->has('not_permitted'))
  <div class="alert alert-danger alert-dismissible text-center"><button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">&times;</span></button>{{ session()->get('not_permitted') }}</div> 
@endif
 

 
<section class="forms">
    <div class="container-fluid">
        <div class="row">
        	@php
             
 
 
echo '<img src="data:image/png;base64,' . DNS1D::getBarcodePNG('sadsd', 'C39+',11.23,591) . '" alt="barcode"   />';


@endphp

        </div>
    </div>

     
</section>
 
@endsection