<?php 
  $path = "";

  session_start();

  if (!isset($_SESSION['logged-in'])){
    header('location: login/login.php');
  }

  require_once $path."../classes/monitor.class.php";
  require_once $path."../classes/appoint.class.php";
  require_once $path."../classes/user.class.php";

  $appoint = new appoint;
  $totalAppoint = $appoint -> totalAppointment()[0];

  $monitor = new monitor;
  $totalMonitor = $monitor -> totalMonitoring()[0];

  $user = new user;
  $totalPatient = $user -> totalUsers()[0];
?>

<!DOCTYPE html>

<html lang="en" dir="ltr">

<head>
  <meta charset="UTF-8">
  <!--<title> Drop Down Sidebar Menu | CodingLab </title>-->
  <link rel="stylesheet" href="css/style.css">
  <link rel="stylesheet" href="<?php echo $path."global.css" ?>">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css"
    integrity="sha512-9usAa10IRO0HhonpyAIVpjrylPvoDwiPUiKdWk5t3PyolY1cOd4DSE0Ga+ri4AuTroPR5aQvXU9xC6qOPnzFeg=="
    crossorigin="anonymous" referrerpolicy="no-referrer" />
  <link href='https://unpkg.com/boxicons@2.0.7/css/boxicons.min.css' rel='stylesheet'>
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.3/jquery.min.js" defer></script>
  <script type="module" src="<?php echo $path ?>../node_modules/chart.js/dist/chart.umd.js" defer></script>
  <script src="dashboard.js" defer></script>
  <title>Admin</title>
</head>

<body>
  <?php require_once "includes/side-bar.php" ?>

  <section class="home-section">
    <i class='bx bx-menu'></i>
    <span class="text">DASHBOARD</span>
    <div class="home-contents">
      <div class="name">
        <div class="overview-boxes">
          <?php { ?>

          <!-- Total patient -->
          <div class="box">
            <div class="right-side">
              <div class="number"><?php echo $totalPatient ?></div>
              <div class="box-topic">TOTAL PATIENT</div>
              <div class="time hidden">Yesterday</div>
            </div>
          </div>

          <!-- Total appoinement -->
          <div class="box">
            <div class="right-side">
              <div class="number"><?php echo $totalAppoint ?></div>
              <div class="box-topic">TOTAL APPOINTMENT</div>
              <div class="time hidden">Today</div>
            </div>
          </div>

          <!-- Total monitoring -->
          <div class="box">
            <div class="right-side">
              <div class="number"><?php echo $totalMonitor ?></div>
              <div class="box-topic">TOTAL MONITORING</div>
              <div class="time hidden">Last Seven Days</div>
            </div>
          </div> <?php
                 }?>

        </div>

        <div id="container"></div>


        <div class="overview-boxes">
          <?php {?>
          <!-- sex -->
          <div class="chart chart-one flex-center">
            <canvas id="sex"></canvas>
          </div>

          <!-- appointment -->
          <div class="chart chart-two flex-center">
            <canvas id="appointment"></canvas>
          </div>

          <!-- date -->
          <div class="chart chart-two flex-center hidden">
            <canvas id="dateStat"></canvas>
          </div>
          <?php
             }?>
        </div>
      </div>

    </div>
  </section>

  <script>
  let arrow = document.querySelectorAll(".arrow");
  for (var i = 0; i < arrow.length; i++) {
    arrow[i].addEventListener("click", (e) => {
      let arrowParent = e.target.parentElement.parentElement; //selecting main parent of arrow
      arrowParent.classList.toggle("showMenu");
    });
  }
  let sidebar = document.querySelector(".sidebar");
  let sidebarBtn = document.querySelector(".bx-menu");
  console.log(sidebarBtn);
  sidebarBtn.addEventListener("click", () => {
    sidebar.classList.toggle("close");
  });
  </script>
</body>

</html>