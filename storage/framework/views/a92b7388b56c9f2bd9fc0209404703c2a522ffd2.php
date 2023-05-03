 <?php $__env->startSection('content'); ?>
<?php if(session()->has('not_permitted')): ?>
  <div class="alert alert-danger alert-dismissible text-center"><button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">&times;</span></button><?php echo e(session()->get('not_permitted')); ?></div> 
<?php endif; ?>
 

 
<section class="forms">
    <div class="container-fluid">
        <div class="row">
        	<?php
             
 
 
echo '<img src="data:image/png;base64,' . DNS1D::getBarcodePNG('sadsd', 'C39+',11.23,591) . '" alt="barcode"   />';


?>

        </div>
    </div>

     
</section>
 
<?php $__env->stopSection(); ?>
<?php echo $__env->make('layout.main', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH C:\xampp\htdocs\dashboard\salepro-3.3.8\salepropos\resources\views/product/code_generato.blade.php ENDPATH**/ ?>