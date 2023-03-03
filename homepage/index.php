<?php 
  $path = "../";

  session_start();

  require_once $path.'classes/user.class.php';
  require_once $path.'tools/variables.php';
  $page_title = "Homepage";
  $home = "nav-current";

  require_once $path.'includes/starterOne.php';
?>
<link rel="stylesheet" href="index.css" />
<script type="module" src="index.js" defer></script>
<?php require_once $path.'includes/starterTwo.php'; ?>

<body>
  <!-- HEADER -->
  <header>
    <!-- website tag -->
    <?php require_once $path.'includes/websitetag.php'; ?>
    <!-- navigator -->
    <?php require_once $path.'includes/navigator.php'; ?>

    <!-- main content hero header -->
    <main>
      <div class="sizing-secondary">
        <div class="main-text ">
          <h1 class="text-uppercase">
            Reach your RND<span class="text-initial">s</span> from anywhere
          </h1>
          <p>
            Home Economics education can play a crucial role in promoting health and wellness by teaching individuals
            and families about the importance of healthy food choices, physical activity, stress management, and disease
            prevention.
          </p>
          <a href="consultation/consultation.php" class="button button-primary">Book now!</a>
        </div>
        <div class="main-image">
          <img src="../asset/deleon.jpg" alt="" />
        </div>
      </div>
    </main>
  </header>

  <!-- DATA INFO -->
  <div class="data-info-parent flex-center">
    <div class="data-info-container flex-center text-uppercase text-center">
      <div class="data-info-box flex-center card">
        <h3>18</h3>
        <p>RND<span class="text-initial">s</span></p>
      </div>
      <div class="data-info-box flex-center card">
        <h3>18</h3>
        <p>RND<span class="text-initial">s</span></p>
      </div>
    </div>
  </div>

  <!-- SECTION - Quick Solution -->
  <section class="quick-solution-parent sizing-secondary">

    <div class="section-header-parent text-center">
      <h2 class="text-capital">Quick solution for scheduling with <span class="text-initial">RNDs</span></h2>
    </div>

    <div class="quick-solution-step-container flex-center grid-container">
      <!-- 1 -->
      <div class="quick-step-box flex-center grid-box card">
        <div class="quick-emoji card">
          <i class="fa-solid fa-calendar-plus"></i>
        </div>
        <div class="quick-text">
          <h3 class="text-uppertext">Appoint</h3>
          <p>Secure a date with the available time of the RNDs.</p>
        </div>
        <p class="hidden">1</p>
      </div>
      <!-- 2 -->
      <div class="quick-step-box flex-center grid-box card">
        <div class="quick-emoji card">
          <i class="fa-solid fa-comment-medical"></i>
        </div>
        <div class="quick-text">
          <h3 class="text-uppertext">Consult</h3>
          <p>Communicate with the assigned RND and have your concerns fixed.</p>
        </div>
        <p class="hidden">1</p>
      </div>
      <!-- 3 -->
      <div class="quick-step-box flex-center grid-box card">
        <div class="quick-emoji card">
          <i class="fa-solid fa-desktop"></i>
        </div>
        <div class="quick-text">
          <h3 class="text-uppertext">Monitor</h3>
          <p>Monitor your progress with our monitor system tool.</p>
        </div>
        <p class="hidden">1</p>
      </div>
    </div>
  </section>

  <!-- SECTION - Tool Banner -->
  <section class="tool-banner text-center">

    <div class="tool-container-box bmi-tool card sizing-main">

      <div class="tool-header text-center">
        <h2 class="text-uppercase">Body mass index</h2>
      </div>

      <form class="form">

        <!-- height group -->
        <div class="form-group">
          <div class="form-group-header">
            <p>Your height</p>
          </div>
          <div class="form-input-parent text-center">
            <!-- feet -->
            <div class="form-input-box">
              <input type="number" name="feet" id="feet" min=0>
              <label for="feet">feet</label>
            </div>
            <!-- inches -->
            <div class="form-input-box">
              <input type="number" name="inches" id="inches" min=0>
              <label for="inches">inches</label>
            </div>
          </div>
        </div>

        <!-- weight group -->
        <div class="form-group">
          <div class="form-group-header">
            <p>Your weight</p>
          </div>
          <div class="form-input-parent text-center">
            <div class="form-input-box">
              <input type="number" name="pounds" id="pounds" min=0>
              <label for="pounds">pounds</label>
            </div>
          </div>
        </div>

        <div class="tool-result text-center card hidden">
          <p>Your Body Mass Index is 14.5</p>
          <h3 class="text-uppercase">underweight</h3>
        </div>

        <button class="button button-secondary submit-bmi-tool">Compute bmi</button>
      </form>

    </div>
    <a href="tools/tools.php" class="button button-primary">See more tools</a>
  </section>

  <!-- SECTION - List of RND -->
  <section class="list-rnd-parent sizing-secondary text-center">

    <div class="section-header-parent">
      <h2 class="text-capital">Meet our <span class="text-initial">RNDs</span></h2>
    </div>

    <div class="list-rnd-container flex-center grid-container">
      <!-- 1 -->
      <div class="list-rnd-box grid-box card">
        <div class="list-rnd-image">
          <img src="../asset/deleon.jpg" alt="">
        </div>
        <div class="list-rnd-info">
          <p>Gregory Yames RND</p>
        </div>
      </div>
      <!-- 2 -->
      <div class="list-rnd-box grid-box card">
        <div class="list-rnd-image">
          <img src="../asset/doctor-bulk-billing-doctors-chapel-hill-health-care-medical-3.png" alt="">
        </div>
        <div class="list-rnd-info">
          <p>Gregory Yames RND</p>
        </div>
      </div>
      <!-- 3 -->
      <div class="list-rnd-box grid-box card">
        <div class="list-rnd-image">
          <img src="../asset/doctor-bulk-billing-doctors-chapel-hill-health-care-medical-3.png" alt="">
        </div>
        <div class="list-rnd-info">
          <p>Gregory Yames RND</p>
        </div>
      </div>
    </div>

    <a href="rnds/rnds.php" class="button button-primary">See more</a>
  </section>

  <!-- SECTION - SLIDE -->
  <section class="feedback-parent flex-center">
    <div class="section-header-parent text-center">
      <h2 class="text-capital">Our patients feedback about us</h2>
    </div>
    <div class="feedback-container flex-center sizing-secondary">
      <div class="feedback-box">
        <div class="feedback-image flex-center">
          <img src="../asset/doctor-bulk-billing-doctors-chapel-hill-health-care-medical-3.png" alt="">
        </div>
        <div class="feedback-info">
          <h3 class="text-capital feedback-name">Wilhelmus Ole Jr</h3>
          <p class="feedback-message">It was a great experience to be assist by this health clinic. My problems are now
            solved with the help of the passionate RNDs.</p>
        </div>
      </div>
    </div>
  </section>

  <!-- footer -->
  <?php require_once $path.'includes/footer.php'; ?>

  <!-- FLOATERS -->
  <!-- MODAL -->
  <?php require_once $path.'includes/loginRegModal.php'; ?>

</body>

</html>