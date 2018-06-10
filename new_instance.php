<?php include 'info_file.php';
Open_Connection();

  $empl = $_POST['employee_id']; //Create variable for the table employee_id
  $check = mysqli_query($connection_Var, "SELECT employee_id_fk FROM bus_driver WHERE employee_id_fk= '$empl'"); // Create the string to retreive the table

  if(mysqli_num_rows($check)>=1){ // Checks if the employee ID selected from the PHP form, already exists in the databse

    //If the ID selcted already exsits, it outputs and error. Error is written in javascript
    echo '<script type="text/javascript">';
    echo 'alert("Employee is already a driver");';
    echo 'window.location.href = "insert.php";';  // When the user clicks ok, redrects to the insert page
    echo '</script>';
   }
   else
   {
     //If the ID does not exists execute the query to save the new record in the database
     insert_records($_POST["employee_id"],$_POST["license_num"],$_POST["expiry_date"],$_POST["aquired_date"],$_POST["penalty_point"]);
     header( 'Location:view.php'); // Redriects the user to the view page
     Close_Connection();
     $a = false;
   }
?>
