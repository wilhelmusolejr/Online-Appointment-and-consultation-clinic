<?php
  $path = "../";

  require $path.'functions/functions.php';
  require_once $path."../classes/user.class.php";

  session_start();

  if (!isset($_SESSION['logged-in'])){
    header('location: '.$path.'login/login.php');
  }

  $current_page = $_SERVER['PHP_SELF'];

  $user = new user;

  $isRegistered = 0;
  if(isset($_POST['submit'])) {
    // print_r($_POST);

    $user -> user_type = "instructor";
    $user -> user_privilege = "rnd";
    $user -> first_name = $_POST['first_name'];
    $user -> middle_name = $_POST['middle_name'];
    $user -> last_name = $_POST['last_name'];
    $user -> contact = $_POST['phone_num'];
    $user -> gender = $_POST['gender'];
    $user -> birthdate = $_POST['birthdate'];
    
    $user -> email = $_POST['email_add'];
    $user -> pass = $_POST['password'];
    $user -> status = "VERIFIED";

    $result = $user -> register();
    // $result = 1;

    if($result) {
      print_r("good");
      $user -> profile_img = $_POST['profile_image'];
      $result = $user -> updateProfileImage();
      if($result) {
        $isRegistered = 1;
        header("location: personal.php");
        exit();
      }
    }
  }

?>
<!DOCTYPE html>

<html lang="en" dir="ltr">

<head>
  <meta charset="UTF-8">
  <!--<title> Drop Down Sidebar Menu | CodingLab </title>-->
  <link rel="stylesheet" href="../specialist/Specialist.css">
  <link rel="stylesheet" href="../specialist/add-rnd.css">
  <link rel="stylesheet" href="<?php echo $path."global.css" ?>">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css"
    integrity="sha512-9usAa10IRO0HhonpyAIVpjrylPvoDwiPUiKdWk5t3PyolY1cOd4DSE0Ga+ri4AuTroPR5aQvXU9xC6qOPnzFeg=="
    crossorigin="anonymous" referrerpolicy="no-referrer" />
  <link href='https://unpkg.com/boxicons@2.0.7/css/boxicons.min.css' rel='stylesheet'>
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Admin</title>
</head>

<body>
  <?php require_once $path."includes/side-bar.php" ?>

  <section class="home-section ">
    <i class='bx bx-menu'></i>
    <span class="text">MANAGE INSTRUCTOR</span>

    <div class="modal-parent">
      <!-- modal container -->
      <div class="modal-container">
        <!-- modal header -->
        <div class="modal-header text-uppercase">
          <h2>Add instructor</h2>
        </div>

        <form action="<?php echo $current_page ?>" method="post" class="form">

          <div class="form-group-parent-parent">

            <!-- profile image -->
            <div class="input-parent profile-image">
              <label for="profile_image">Profile image <span>*</span></label>
              <input type="file" id="profile_image" name="profile_image" required>
              <p class="error-text"></p>
            </div>

            <div class="form-group">
              <!-- profile first name -->
              <div class="input-parent">
                <label for="first_name">First name <span>*</span></label>
                <input type="text" id="first_name" name="first_name" value="Jenny">
              </div>

              <!-- profile middle name -->
              <div class="input-parent">
                <label for="middle_name">Middle name <span>*</span></label>
                <input type="text" id="middle_name" name="middle_name" value="Hackerman">
              </div>
            </div>

            <div class="form-group">
              <!-- profile last name -->
              <div class="input-parent">
                <label for="last_name">Last name <span>*</span></label>
                <input type="text" id="last_name" name="last_name" value="Hackerman">
              </div>

              <!-- profile last name -->
              <div class="input-parent">
                <label for="birthdate">Birthdate <span>*</span></label>
                <input type="date" id="birthdate" name="birthdate" value="2001-01-01" required>
              </div>
            </div>

            <div class="input-parent radio-parent">
              <label for="gender">Gender <span>*</span></label>
              <div>
                <input type="radio" id="gender_male" name="gender" value="male" checked>
                <label for="gender_male">Male</label><br>
              </div>
              <div>
                <input type="radio" id="gender_female" name="gender" value="femail">
                <label for="gender_female">Female</label><br>
              </div>
            </div>

            <div class="form-group">
              <!-- profile phone number -->
              <div class="input-parent">
                <label for="phone_num">Phone number <span>*</span></label>
                <input type="text" id="phone_num" name="phone_num" value="09972976807">
              </div>

              <!-- profile email number -->
              <div class="input-parent">
                <label for="email_add">Email address <span>*</span></label>
                <input type="email" id="email_add" name="email_add" value="jenny.hackerman@gmail.com">
              </div>
            </div>

            <div class="form-group">
              <!-- profile password -->
              <div class="input-parent">
                <label for="password">Password <span>*</span></label>
                <input type="password" id="password" name="password" value="qw09058222">
              </div>

              <!-- profile confirm password -->
              <div class="input-parent">
                <label for="confirm_password">Confirm Password <span>*</span></label>
                <input type="password" id="confirm_password" name="confirm_password" value="qw09058222">
              </div>
            </div>
          </div>

          <button type="submit" name="submit" class="button button-primary">Submit</button>
        </form>

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