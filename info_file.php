<?php
$connection_Var; // Create vriable

function Open_Connection() // Create function that will be used to estabilish a connection with the database
{

    global $connection_Var; // Make variable global
    $connection_Var = mysqli_connect("localhost", "root", "", "bus_db"); //Sets the variable to a mysli query
    if (mysqli_connect_errno($connection_Var)) //Check if the database is connected.
		{
        echo "Failed to connect to MySQL:" . mysqli_connect_error(); // If database is not conne outputs error message
    }
}

function Close_Connection() //Create function to close the connection with the database
{
    global $connection_Var;
    mysqli_close($connection_Var);
}

function Show_Content() //Function to output data from the database
{
    global $connection_Var;
    $result = mysqli_query($connection_Var, "SELECT * FROM bus_driver"); //Create a new varibale, that is used as a mysli query. It contains the MySQL query to retreive data from the table

	// Outputs a HTML table
  echo "<table border='1'>
	<tr>
	<th>Employee ID</th>
	<th>License number</th>
	<th>Expiry date</th>
	<th>Aquired date</th>
	<th>Penalty point</th>
	</tr>";

		// Create a loop, that outputs row by row all the data from the table
    while ($row = mysqli_fetch_array($result)) {
        echo "<tr>";
        echo "<td>" . $row['employee_id_fk'] . "</td>";
        echo "<td>" . $row['license_num'] . "</td>";
        echo "<td>" . $row['expiry_date'] . "</td>";
        echo "<td>" . $row['aquired_date'] . "</td>";
        echo "<td>" . $row['penalty_point'] . "</td>";
        echo "</tr>";
    }
    echo "</table>"; // Ends the HTML table
}

function insert_records($employee_id, $license_num, $expiry_date, $aquired_date, $penalty_point) // Create fucntion to insert records
{
    global $connection_Var;

    $date  = new DateTime($expiry_date); // Converts the date from the HTML format (DD/MM/YYYY) to one that is compatible with MySQL
    $date2 = new DateTime($aquired_date);

		//Query used to insert data into the database
    mysqli_query($connection_Var, "INSERT INTO bus_driver (`employee_id_fk`,`license_num`,`expiry_date`,`aquired_date`,`penalty_point`)
   										VALUES ('" . $employee_id . "', '" . $license_num . "','" . $date->format('Y-m-d') . "','" . $date2->format('Y-m-d') . "','" . $penalty_point . "')");
}
?>
