<!DOCTYPE html>

<html>

  <head>

    <meta charset="utf-8">

    <meta http-equiv="X-UA-Compatible" content="IE=edge">

    <link rel="icon" type="image/png" href="{{url('public/logo', $general_setting->site_logo)}}"  />

    <title>{{$general_setting->site_title}}</title>

    <meta name="description" content="">

    <meta name="viewport" content="width=device-width, initial-scale=1">

    <meta name="robots" content="all,follow">



    <style type="text/css">

        * {

            font-size: 14px;

            line-height: 24px;

            font-family: 'Ubuntu', sans-serif;

            text-transform: capitalize;

            text-align: center;

            font-family: 'Tajawal', sans-serif;

        }

        .btn {

            padding: 7px 10px;

            text-decoration: none;

            border: none;

            display: block;

            text-align: center;

            margin: 7px;

            cursor:pointer;

        }



        .btn-info {

            background-color: #999;

            color: #FFF;

        }



        .btn-primary {

            background-color: #6449e7;

            color: #FFF;

            width: 100%;

        }

        td,

        th,

        tr,

        table {

            border-collapse: collapse;

        }

    

 



        table {width: 100%;

direction: rtl;

text-align: center;

        }

        tfoot tr th:first-child {text-align: left;}



        .centered {

            text-align: center;

            align-content: center;

        }

        small{font-size:11px;}



        @media print {

            * {

                font-size:12px;

                line-height: 20px;

            }

            td,th {padding: 5px 0;}

            .hidden-print {

                display: none !important;

            }

            @page { margin: 0; } body { margin: 0.5cm; margin-bottom:1.6cm; } 

        }

    </style>

     <link rel="preconnect" href="https://fonts.googleapis.com">

<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>

<link href="https://fonts.googleapis.com/css2?family=Tajawal&display=swap" rel="stylesheet"> 

  </head>

<body style="font-family: 'Tajawal', sans-serif;">



<div style="max-width:400px;margin:0 auto">

    @if(preg_match('~[0-9]~', url()->previous()))

        @php $url = '../../pos'; @endphp

    @else

        @php $url = url()->previous(); @endphp

    @endif

    <div class="hidden-print">

        <table>

            <tr>

                <td><a href="{{$url}}" class="btn btn-info"><i class="fa fa-arrow-left"></i> {{trans('file.Back')}}</a> </td>

                <td><button onclick="window.print();" class="btn btn-primary"><i class="dripicons-print"></i> {{trans('file.Print')}}</button></td>

            </tr>

        </table>

        <br>

    </div>

        

    <div id="receipt-data">

        <div class="centered">
 
    

           
         <div style="width: 50%;float: left;margin-left: -7%;">

                     @if($general_setting->site_logo)

                <img src="{{url('public/logo', $general_setting->site_logo)}}" height="150" width="150" style="margin:10px 0;filter: brightness(0);  
">

            @endif
             
         </div>
            
     

        
    <div style="width: 50%;float: left; font-size: 12px">
             <h2>{{$lims_biller_data->company_name}}</h2>

            

            <p>   {{trans('file.Address')}} :  {{$lims_warehouse_data->address}} 

                <br>{{trans('file.Phone Number')}}: {{$lims_warehouse_data->phone}}

            </p>
 

        <p>{{trans('file.Date')}}: {{$lims_sale_data->created_at}}<br>

            {{$lims_sale_data->reference_no}} :  {{trans('file.reference')}}<br>


        </p>
   
        </div>

        <div  class="centered">
             <h2> {{trans('file.customer')}} : {{$lims_customer_data->name}}</h2>

                
         </div>
              
          </div>


   <table style="  border: 1px solid black !important;">
        <thead>
              <tr>
                    <td  style="  border: 1px solid black !important;">مسلسل </td>
                <td style="  border: 1px solid black !important;">  الصنف  </td>
                <td style="  border: 1px solid black !important;">   الكمية   </td>
                <td style="  border: 1px solid black !important;">    السعر    </td>
                <td style="  border: 1px solid black !important;">     الاجمالي     </td>
              </tr>
            </thead>



            <tbody>

                   <?php $total_product_tax = 0;?>

                @foreach($lims_product_sale_data as $key => $product_sale_data)

                <?php 

                    $lims_product_data = \App\Product::find($product_sale_data->product_id);

                    if($product_sale_data->variant_id) {

                        $variant_data = \App\Variant::find($product_sale_data->variant_id);

                        $product_name = $lims_product_data->name.' ['.$variant_data->name.']';

                    }

                    else

                        $product_name = $lims_product_data->name;

                ?>

                <tr>
                    <td style="  border: 1px solid black !important;"> {{$key + 1}}</td>
                    <td style="  border: 1px solid black !important;">{{$product_name}}</td>
                    <td style="  border: 1px solid black !important;"> {{$product_sale_data->qty}}</td>
                    <td style="  border: 1px solid black !important;">
                       {{ $product_sale_data->total / $product_sale_data->qty }}
                    </td>
                        <td style="border: 1px solid black !important;">{{number_format((float)$product_sale_data->total, 2, '.', '')}}</td>

                        

                    
                </tr>

                @endforeach
            </tbody>
             
         </table>
     

        <table>

            <tbody>

                
  @php
                              $tot=0;
                               foreach($lims_product_sale_data as $key => $product_sale_data)
                                          {
                                    $tot=$tot + number_format((float)$product_sale_data->total, 2, '.', '');

                                          }
                               
                              @endphp
                <tr style="background-color:#ddd;">

                    <td style="padding: 5px;width:30%;  border: 1px solid black !important;"> الاجمالي 

                    </td>

                    <td style="padding: 5px;width:40%;  border: 1px solid black !important;"> {{$tot}}</td>

                    

                </tr>                

               
 
                 

                  

                      @foreach($lims_payment_data as $payment_data)
                       <tr style="background-color:#ddd;">

                    <td style="padding: 5px;width:30%;  border: 1px solid black !important;"> الخصم 

                    </td>

                    <td style="padding: 5px;width:40%;  border: 1px solid black !important;"> 
                       {{  $payment_data->amount - $tot  }}
                     
                 </td>

                <tr style="background-color:#ddd;">

                    <td style="padding: 5px;width:30%;  border: 1px solid black !important;">   المطلوب سداده  

                    </td>

                    <td style="padding: 5px;width:40%;  border: 1px solid black !important;">  {{number_format((float)$payment_data->amount, 2, '.', '')}}</td>

                    

                </tr>                

                @endforeach

                    

                </tr>   

                <tr><td  class="centered" colspan="3">{{trans('file.Thank you for shopping with us. Please come again')}}</td></tr>

                <tr>

                    <td class="centered" colspan="3">

                    <?php echo '<img style="margin-top:10px;" src="data:image/png;base64,' . DNS1D::getBarcodePNG($lims_sale_data->reference_no, 'C128') . '" width="300" alt="barcode"   />';?>

                    <br>

                    <?php echo '<img style="margin-top:10px;" src="data:image/png;base64,' . DNS2D::getBarcodePNG($lims_sale_data->reference_no, 'QRCODE') . '" alt="barcode"   />';?>    

                    </td>

                </tr>

            </tbody>

        </table>

        <!-- <div class="centered" style="margin:30px 0 50px">

            <small>{{trans('file.Invoice Generated By')}} {{$general_setting->site_title}}.

            {{trans('file.Developed By')}} LionCoders</strong></small>

        </div> -->

    </div>

</div>



<script type="text/javascript">

    function auto_print() {     

        window.print()

    }

    setTimeout(auto_print, 1000);

</script>



</body>

</html>

