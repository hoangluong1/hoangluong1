
<!DOCTYPE html>
<html>
<head>
	<title></title>
	<!-- <script src="https://kit.fontawesome.com/78ac9ff2a8.js" crossorigin="anonymous"></script> -->
	<link rel="stylesheet" href="https://pro.fontawesome.com/releases/v5.10.0/css/all.css" integrity="sha384-AYmEC3Yw5cVb3ZcuHtOA93w35dYTsvhLPVnYs9eStHfGJvOvKxVfELGroGkvsg+p" crossorigin="anonymous"/>
	<link rel="stylesheet" type="text/css" href="assets/frontend/css/style.css">
	<link rel="stylesheet" type="text/css" href="assets/frontend/js/jquery.min.js">
</head>
<body>
<!--End of Tawk.to Script-->
	<?php include "views/HeaderView.php"; ?>
	<!-- -------------------------------------------------------------------- -->
	<section id="Slider">
		<div class="aspect-ratio-169">
            <img src="assets/frontend/images/banner.jpg" width="100%">
            <img src="assets/frontend/images/banner2a.jpg" width="100%">
            <img src="assets/frontend/images/banner3a.jpg" width="100%">
		</div>
		<div class="dot-container">
			<div class="dot active"></div>
			<div class="dot"></div>
			<div class="dot"></div>
		</div>
	</section>
	<!-- ------------------------------------------------------------------------ -->
	<!-- main -->
          <?php echo $this->view; ?>
        <!-- end main --> 
	<!-- ------------------------------------------------------------------------ -->
	<?php include "views/FooterView.php"; ?>
</body>
<script>
    const header = document.querySelector("header")
    window.addEventListener("scroll",function(){
        x = window.pageXOffset
        if(x>0){
            header.classList.add("sticky")
        }else{
            header.classList.remove("sticky")
        }
    })

    const imgPosition = document.querySelectorAll(".aspect-ratio-169 img")
    const imgContainer = document.querySelector('.aspect-ratio-169')
    const dotItem = document.querySelectorAll(".dot")
    let imgNuber = imgPosition.length
    let index = 0
    //console.log(imgPosition)
    imgPosition.forEach(function(image,index){
        image.style.left = index*100+ "%"
        dotItem[index].addEventListener("click", function(){
            slider(index)
        })
    })
    function imgSlide (){
        index++;
        console.log(index)
        if(index>=imgNuber){index=0}
        slider(index)

    }
    function slider (index){
        imgContainer.style.left = "-" +index*100+ "%"
        const dotActive = document.querySelector('.active')
        dotActive.classList.remove("active")
        dotItem[index].classList.add("active")
        
    }
    setInterval(imgSlide,5000)

</script>
<script type="text/javascript" src="assets/frontend/js/jquery.min.js"></script>
</html>