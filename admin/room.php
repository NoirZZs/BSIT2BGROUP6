<?php  
session_start();
if(!isset($_SESSION["user"])) {
    header("location:home.php");
}
include('db.php');

// Pagination variables
$records_per_page = 20; // Number of records to display per page
$page = isset($_GET['page']) ? (int)$_GET['page'] : 1; // Get current page number, default is 1

// Calculate the starting record for the query
$start_from = ($page - 1) * $records_per_page;

// SQL query to fetch records based on pagination
$sql = "SELECT * FROM room LIMIT $start_from, $records_per_page";
$re = mysqli_query($con, $sql);

// Query to get total number of records
$query = "SELECT COUNT(*) AS total_rows FROM room";
$result = mysqli_query($con, $query);
$row = mysqli_fetch_assoc($result);
$total_pages = ceil($row["total_rows"] / $records_per_page);
?>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>HYPNOS HOTEL</title>
    <link href="assets/css/bootstrap.css" rel="stylesheet" />
    <link href="assets/css/font-awesome.css" rel="stylesheet" />
    <link href="assets/css/custom-styles.css" rel="stylesheet" />
    <link href='http://fonts.googleapis.com/css?family=Open+Sans' rel='stylesheet' type='text/css' />
</head>
<body>
    <div id="wrapper">
        <nav class="navbar navbar-default top-navbar" role="navigation">
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".sidebar-collapse">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand" href="home.php">MAIN MENU</a>
            </div>

            <ul class="nav navbar-top-links navbar-right">
                <li class="dropdown">
                    <a class="dropdown-toggle" data-toggle="dropdown" href="#" aria-expanded="false">
                        <i class="fa fa-user fa-fw"></i> <i class="fa fa-caret-down"></i>
                    </a>
                    <ul class="dropdown-menu dropdown-user">
                        <li><a href="usersetting.php"><i class="fa fa-user fa-fw"></i> User Profile</a></li>
                        <li><a href="settings.php"><i class="fa fa-gear fa-fw"></i> Settings</a></li>
                        <li class="divider"></li>
                        <li><a href="logout.php"><i class="fa fa-sign-out fa-fw"></i> Logout</a></li>
                    </ul>
                </li>
            </ul>
        </nav>
        <nav class="navbar-default navbar-side" role="navigation">
            <div class="sidebar-collapse">
                <ul class="nav" id="main-menu">
                    <li>
                        <a href="settings.php"><i class="fa fa-dashboard"></i>Room Status</a>
                    </li>
                    <li>
                        <a class="active-menu" href="room.php"><i class="fa fa-plus-circle"></i>Add Room</a>
                    </li>
                    <li>
                        <a href="roomdel.php"><i class="fa fa-pencil-square-o"></i> Delete Room</a>
                    </li>
                </ul>
            </div>
        </nav>
    
        <div id="page-wrapper">
            <div id="page-inner">
                <div class="row">
                    <div class="col-md-12">
                        <h1 class="page-header">NEW ROOM <small></small></h1>
                    </div>
                </div>
                 
                <div class="row">
                    <div class="col-md-5 col-sm-5">
                        <div class="panel panel-primary">
                            <div class="panel-heading">ADD NEW ROOM</div>
                            <div class="panel-body">
                                <form name="form" method="post">
                                    <div class="form-group">
                                        <label>Type Of Room *</label>
                                        <select name="troom" class="form-control" required>
                                            <option value selected></option>
                                            <option value="VIP Room">VIP ROOM</option>
                                            <option value="Deluxe Room">DELUXE ROOM</option>
                                            <option value="Luxury Room">LUXURY ROOM</option>
                                            <option value="Boutique Room">BOUTIQUE ROOM</option>
                                        </select>
                                    </div>
                                    <div class="form-group">
                                        <label>Bedding Type</label>
                                        <select name="bed" class="form-control" required>
                                            <option value selected></option>
                                            <option value="Single">Single</option>
                                            <option value="Double">Double</option>
                                            <option value="Triple">Triple</option>
                                            <option value="Quad">Quad</option>
                                            <option value="Triple">None</option>
                                        </select>
                                    </div>
                                    <input type="submit" name="add" value="Add New" class="btn btn-primary"> 
                                </form>
                                <?php
                                if(isset($_POST['add'])) {
                                    $room = $_POST['troom'];
                                    $bed = $_POST['bed'];
                                    $place = 'Free';
                                    
                                    $check = "SELECT * FROM room WHERE type = '$room' AND bedding = '$bed'";
                                    $rs = mysqli_query($con, $check);
                                    $data = mysqli_fetch_array($rs, MYSQLI_NUM);
                                    if($data[0] > 1) {
                                        echo "<script type='text/javascript'> alert('Room Already Exists')</script>";
                                    } else {
                                        $sql = "INSERT INTO `room`( `type`, `bedding`, `place`) VALUES ('$room','$bed','$place')";
                                        if(mysqli_query($con, $sql)) {
                                            echo '<script>alert("New Room Added") </script>';
                                        } else {
                                            echo '<script>alert("Sorry! Check The System") </script>';
                                        }
                                    }
                                }
                                ?>
                            </div>
                        </div>
                    </div>

                    <div class="col-md-6 col-sm-6">
                        <div class="panel panel-primary">
                            <div class="panel-heading">ROOMS INFORMATION</div>
                            <div class="panel-body">
                                <div class="panel panel-default">
                                    <div class="panel-body">
                                        <div class="table-responsive">
                                            <table class="table table-striped table-bordered table-hover" id="dataTables-example">
                                                <thead>
                                                    <tr>
                                                        <th>Room ID</th>
                                                        <th>Room Type</th>
                                                        <th>Bedding</th>
                                                    </tr>
                                                </thead>
                                                <tbody>
                                                    <?php
                                                    while($row = mysqli_fetch_array($re)) {
                                                        $id = $row['id'];
                                                        if($id % 2 == 0) {
                                                            echo "<tr class='odd gradeX'>
                                                                    <td>".$row['id']."</td>
                                                                    <td>".$row['type']."</td>
                                                                    <td>".$row['bedding']."</td>
                                                                </tr>";
                                                        } else {
                                                            echo "<tr class='even gradeC'>
                                                                    <td>".$row['id']."</td>
                                                                    <td>".$row['type']."</td>
                                                                    <td>".$row['bedding']."</td>
                                                                </tr>";
                                                        }
                                                    }
                                                    ?>
                                                </tbody>
                                            </table>
                                        </div>
                                    </div>
                                </div>       
                            </div>
                            <div class="panel-footer">
                                <div class="text-center">
                                    <ul class="pagination">
                                        <?php
                                        // Generate page numbers
                                        for ($i = 1; $i <= $total_pages; $i++) {
                                            if ($i == $page) {
                                                echo '<li class="active"><a href="#">' . $i . '</a></li>';
                                            } else {
                                                echo '<li><a href="?page=' . $i . '">' . $i . '</a></li>';
                                            }
                                        }
                                        ?>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <script src="assets/js/jquery-1.10.2.js"></script>
    <script src="assets/js/bootstrap.min.js"></script>
    <script src="assets/js/jquery.metisMenu.js"></script>
    <script src="assets/js/custom-scripts.js"></script>
</body>
</html>
