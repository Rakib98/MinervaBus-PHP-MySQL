<!DOCTYPE html>
<html>
   <head>
      <meta charset="utf-8">
      <meta name="viewport" content="width=device-width">
      <title>Minerva Bus</title>
      <link rel="stylesheet" href="./css/style.css">
      <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
      <script src="https://code.jquery.com/jquery-3.3.1.js"></script>
<?php include 'info_file.php';
Open_Connection();
 ?>

 <style>
    table
{
  border-collapse: collapse;
  width: 90%;
  margin-left: auto;
  margin-right: auto;
  }
  th, td
  {
    text-align: center;
    padding: 8px;
  }
  tr:nth-child(odd)
  {
    background-color: #f4844b;
  }
  tr:nth-child(even)
  {
    background-color: #ffdbbf;
  }

 </style>
   </head>
   <body>
      <header>
         <div class="container">
            <nav>
               <div class="menu-icon">
                  <i class="fa fa-bars fa-2x"></i>
               </div>
               <div class="logo">MINERVA BUS</div>
               <div class="menu">
                  <ul>
                  <li><a href="index.php" accesskey= 1>HOME</a></li>
                     <li  class="current"><a href="view.php" accesskey=5>VIEW</a></li>
                     <li><a href="insert.php" accesskey=2>INSERT</a></li>
                  </ul>
               </div>
            </nav>
         </div>
      </header>
      <section id="showcase" style="background: url(img/bg.jpg) no-repeat 0px -400px">
         <div class="container" style="width: 75%">
            <h1>MINERVA BUS: VIEW</h1>
         </div>
      </section>
      <section id="intro">
         <h2>VIEW RECORDS</h2>
         <div class="container" style="padding-left: 10%">

               <div class="paragraph" style="border-top: #d66a31 1px solid; width: 75%; padding-bottom :15px;">
               <?php
          Show_Content(); // Calls the function resposable to output the content from the database
          Close_Connection();
           ?>
            </div>


         </div>
      </section>
      <footer>
         <p>Rakib Abdur, Copyright &copy; 2018</p>
      </footer>
      <script type="text/javascript">
         // Menu-toggle button

         $(document).ready(function() {
               $(".menu-icon").on("click", function() {
                     $("nav ul").toggleClass("showing");
               });
         });

         // Scrolling Effect

         $(window).on("scroll", function() {
               if($(window).scrollTop()) {
                     $('nav').addClass('black');
               }

               else {
                     $('nav').removeClass('black');
               }
         })
      </script>
   </body>
</html>
