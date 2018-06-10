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
         text-align: left;
         padding: 8px;
         }
         tr:nth-child(odd)
         {
         background-color: #f4844b;
         }
         tr:nth-child(even)
         {
         background-color: #f2b987;
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
                     <li><a href="view.php" accesskey=5>VIEW</a></li>
                     <li  class="current"><a href="insert.php" accesskey=2>INSERT</a></li>
                  </ul>
               </div>
            </nav>
         </div>
      </header>
      <section id="showcase" style="background: url(img/bg.jpg) no-repeat 0px -400px">
         <div class="container" style="width: 75%">
            <h1>MINERVA BUS: INSERT</h1>
         </div>
      </section>
      <section id="intro">
         <h2>INSERT RECORDS</h2>
         <div class="container" style="padding-left: 10%">
            <div class="paragraph" style="border-top: #d66a31 1px solid; width: 75%; padding-bottom :15px;">
               <form action="new_instance.php" method="post" onsubmit="return validateForm()" name="myForm">

                  <p>Employee ID:
                     <?php
                        $sql = "SELECT employee_id FROM employees"; //Create variable containing SQL query
                        $res = mysqli_query($connection_Var,$sql); //Uses the $connection_Var to login in the database, and then uses $sql to insert the query

                        echo "<select name='employee_id'>"; // Create a select option in HTML, to enable a dropdown menu
                        while ($row1 = mysqli_fetch_array($res)) { // Selects the data from the table to populate the dropdown
                            echo "<option value='" . $row1['employee_id'] . "'>" . $row1['employee_id'] . "</option>";
                        }
                        echo "</select>"; // Ends the select

                        ?>
                  </p>

                  <p>License Number: <input type="text" name="license_num" placeholder="License number"
											pattern= "[a-zA-Z0-9]{9}" maxlength="9"></p>
                  <p>Expiry date: <input type="date" name="expiry_date" placeholder="DD-MM-YYYY"></p>
                  <p>Aquired data: <input type="date" name="aquired_date"  placeholder="DD-MM-YYYY"></p>
                  <p>Penalty point: <input type="number" name="penalty_point" placeholder="Numbers only"></p>
                  <input type="submit" value="Submit"/>
               </form>
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
