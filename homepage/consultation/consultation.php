<?php 
    $path = "../../";

    require_once $path.'classes/appoint.class.php';
    require_once $path.'classes/user.class.php';
    require_once $path.'classes/consult.class.php';

    require_once $path.'tools/variables.php';
    $page_title = "Consultation";
    $consultation = 'nav-current';

    session_start();

    $board_page = 1;
    
    $appoint = new appoint;
    $consult = new consult;
    $clientData = new user;


    // move the user to rnd page if the user is RND
    if(isset($_SESSION['user_loggedIn'])) {
      if($_SESSION['user_loggedIn']['user_privilege'] == "rnd") {
        header("location: rnd/consultation.php");
      }
    }

    $user = new user;
    $rndList = $user -> getAllRnd();

    // print_r($rndList);
    

    require_once $path.'includes/starterOne.php';
?>
<link rel="stylesheet" href="consultation.css" />
<link rel="stylesheet" href="../rnds/rnds.css" />
<link rel="stylesheet" href="status.css">
<script type="module" src="../index.js" defer></script>
<script src="consultation.js" defer></script>

<link rel="stylesheet" href="//code.jquery.com/ui/1.13.2/themes/base/jquery-ui.css">
<link rel="stylesheet" href="/resources/demos/style.css">
<script src="https://code.jquery.com/jquery-3.6.0.js" defer></script>
<script src="https://code.jquery.com/ui/1.13.2/jquery-ui.js" defer></script>
<link rel="stylesheet" href="https://unicons.iconscout.com/release/v4.0.0/css/line.css">
<?php require_once $path.'includes/starterTwo.php'; ?>

<body>
  <p class="path_locator hidden"><?php echo $path ?></p>

  <header>
    <!-- website tag -->
    <?php require_once $path.'includes/websitetag.php'; ?>
    <!-- navigator -->
    <?php require_once $path.'includes/navigator.php'; ?>

    <main>
      <div class="sizing-secondary">
        <div class="main-text text-center">
          <h1 class="text-uppercase">
            Reach your RND<span class="text-initial">s</span> from anywhere
          </h1>
          <p>
            Consulting oneself in a hospital is important for early detection and treatment of illnesses or injuries. It
            also helps to keep track of one's overall health and prevent the progression of any potential health issues.
          </p>
          <a href="#board-parent" class="button button-primary">Book now!</a>
        </div>
      </div>

    </main>

  </header>

  <section id="board-parent" class="board-parent ">

    <!-- Set up your appointment -->
    <form action="consultation.php" class="form search-form" method="get">

      <!-- search appoint id  -->
      <div class="form-input-parent search-parent">
        <div class="form-input-box">
          <input type="number" name="transact_id" placeholder="Enter your appointment number">
          <button type="submit" value="submit" class="button-primary">Search</button>
        </div>
      </div>

    </form>

    <div class="board-container card">
      <!-- Progress -->
      <div class="board-progress">
        <div class="main flex-center">
          <ul class="text-center">
            <!-- 1 -->
            <li data-board-page="1" class="current">
              <i class="icon uil uil-capture"></i>
              <div class="progress one">
                <p>1</p>
                <i class="uil uil-check"></i>
              </div>
              <p class="text">Appointment</p>
            </li>
            <!-- - -->
            <li data-board-page="2" class="small-checkpoint">
              <i class="icon uil uil-clipboard-notes"></i>
              <div class="progress two">
                <!-- <p>2</p> -->
                <i class="uil uil-check"></i>
              </div>
            </li>
            <!-- 2 -->
            <li data-board-page="3">
              <i class="icon uil uil-credit-card"></i>
              <div class="progress three">
                <p>2</p>
                <i class="uil uil-check"></i>
              </div>
              <p class="text">Consultation</p>
            </li>
            <!-- - -->
            <li data-board-page="4" class="small-checkpoint">
              <i class="icon uil uil-exchange"></i>
              <div class="progress four">
                <!-- <p>4</p> -->
                <i class="uil uil-check"></i>
              </div>
            </li>
            <!-- 3 -->
            <li data-board-page="5">
              <i class="icon uil uil-map-marker"></i>
              <div class="progress five">
                <p>3</p>
                <i class="uil uil-check"></i>
              </div>
              <p class="text">Solution</p>
            </li>
          </ul>
        </div>
      </div>

      <form action="consultation.php">
        <!-- <input type="hidden" class="board-page" value="<?php echo $board_page ?>"> -->
        <input type="hidden" class="path" value="<?php echo $path ?>">
      </form>

      <!-- 1 -->
      <!-- Appointment -->
      <div data-board-page="1" class="appointment-stage board-page <?php echo $board_page == 1?"":"hidden" ?>">
        <!-- Board Header -->
        <div class="board-header text-uppercase text-center">
          <h2>Set your appoinment</h2>
        </div>
        <!-- Form -->
        <form action="php/set-appoint.php" method="post" class="form form-appoint-submit" enctype="multipart/form-data">
          <!-- - Appointment for -->
          <div class="appointment-for">
            <div class="form-input-parent">
              <div class="form-input-box">
                <label for="appointment-for">Appointment for</label>
                <div class="radio-box flex-center">
                  <div>
                    <input type="radio" id="myself" name="appointment-for" value="myself" checked>
                    <label for="myself">Myself</label>
                  </div>
                  <div>
                    <input type="radio" id="other" name="appointment-for" value="other">
                    <label for="other">Other</label>
                  </div>
                </div>
              </div>
            </div>
          </div>
          <!-- Tab -->
          <div class="tabset">
            <!-- Tab 5 -->
            <input class='personal-tab hidden' type="radio" name="tabset" id="tab5" aria-controls="dunkles">
            <label class='personal-tab hidden' for="tab5">Personal Information</label>
            <!-- Tab 1 -->
            <input type="radio" name="tabset" id="tab1" aria-controls="marzen" checked>
            <label for="tab1">Consultation Information</label>
            <!-- Tab 2 -->
            <input type="radio" name="tabset" id="tab2" aria-controls="rauchbier">
            <label for="tab2">Food Information</label>
            <!-- Tab 3 -->
            <input type="radio" name="tabset" id="tab3" aria-controls="dunkles">
            <label for="tab3">Physical Information</label>
            <!-- Tab 4 -->
            <input type="radio" name="tabset" id="tab4" aria-controls="dunkles">
            <label for="tab4">Medical Information</label>

            <div class="tab-panels">

              <!-- Personal Information -->
              <section id="personal-tab" class="personal-tab tab-panel hidden">
                <!-- - Form Header -->
                <div class="form-header text-uppercase hidden">
                  <h3>Personal Information</h3>
                </div>
                <!-- form parent -->
                <div class="divider">
                  <!-- left -->
                  <div class="form-input-parent">
                    <!-- first name -->
                    <div class="form-input-box input-two">
                      <label for="firstname" class="text-capital">First name <span>*</span></label>
                      <input type="text" name="firstname" id="firstname" value="test"
                        placeholder="Enter your first name" required>
                      <p class="form-error-message hidden">Error</p>
                    </div>
                    <!-- middle name -->
                    <div class="form-input-box input-two">
                      <label for="middlename" class="text-capital">Middle name </label>
                      <input type="text" name="middlename" id="middlename" value="test"
                        placeholder="Enter your middle name">
                      <p class="form-error-message hidden">Error</p>
                    </div>
                    <!-- last name -->
                    <div class="form-input-box input-two">
                      <label for="lastname" class="text-capital">Last name <span>*</span></label>
                      <input type="text" name="lastname" required id="lastname" value="test"
                        placeholder="Enter your last name">
                      <p class="form-error-message hidden">Error</p>
                    </div>
                    <!-- gender -->
                    <div class="gender-form form-input-box input-two">
                      <label for="gender" class="text-capital">Gender <span>*</span></label>
                      <div class="gender-con radio-box flex-center">
                        <div>
                          <input type="radio" id="male" name="gender" value="Male" checked>
                          <label for="male">Male</label>
                        </div>
                        <div>
                          <input type="radio" id="female" name="gender" value="Female">
                          <label for="female">Female</label>
                        </div>
                      </div>
                      <p class="form-error-message hidden">Error</p>
                    </div>
                    <!-- birth date -->
                    <div class="form-input-box input-two">
                      <label for="birthdate" class="text-capital">Birthdate <span>*</span></label>
                      <input type="date" required name="birthdate" id="birthdate" value="2002-01-01">
                      <p class="form-error-message hidden">Error</p>
                    </div>
                    <!-- Relationship status -->
                    <div class="form-input-box input-two">
                      <label for="relationship-status">Relationship status <span>*</span></label>
                      <input list="list-relationship" name="relationship-status" id="relationship-status"
                        placeholder="Specify relationship">
                      <datalist id="list-relationship">
                        <option value="Husbund">
                        <option value="Brother">
                        <option value="Sister">
                        <option value="Mother">
                        <option value="Relative">
                      </datalist>
                      <p class="form-error-message hidden">Error</p>
                    </div>
                  </div>
                  <!-- right -->
                  <div class="form-input-parent">
                    <!-- Mobile -->
                    <div class="form-input-box input-two">
                      <label for="reg-mob" class="text-capital">Mobile number <span>*</span></label>
                      <input type="text" name="reg-mob" required id="reg-mob" value="09972976807"
                        placeholder="Enter your mobile number">
                      <p class="form-error-message hidden">Error</p>
                    </div>
                    <!-- Email -->
                    <div class="form-input-box input-two">
                      <label for="reg-email" class="text-capital">Email address <span>*</span></label>
                      <input type="email" required name="reg-email" id="reg-email" value="test@gmail.com"
                        placeholder="Enter your middle name">
                      <p class="form-error-message hidden">Error</p>
                    </div>
                  </div>
                </div>
              </section>

              <!-- Consultation Information -->
              <section id="consultation-tab" class="tab-panel">
                <!-- - Form Header -->
                <div class="form-header text-uppercase hidden hidden">
                  <h3>Consultation Information</h3>
                </div>
                <!-- form parent -->
                <div class="divider">

                  <!-- left -->
                  <div class="form-input-parent divider-grow">
                    <!-- Chief complaint -->
                    <div class="form-input-box input-one">
                      <label for="appoint-chief-complaint">Nutrional Concern <span>*</span></label>
                      <input list="list-complaints" name="appoint-chief-complaint" id="appoint-chief-complaint"
                        placeholder="Diet meal plan" value="<?php echo $sampleText ?>" required>
                      <datalist id="list-complaints">
                        <option value="Diet Meal Plan">
                        <option value="Nutrition Counseling">
                        <option value="Weight Management">
                        <option value="Dietary Management">
                        <option value="Nutrition Counseling">
                      </datalist>
                      <p class="form-error-message hidden">Error</p>
                    </div>
                    <!-- Appointment date -->
                    <div class="form-input-box input-two">
                      <label for="appointment-date" class="text-capital">Appointment date <span>*</span></label>
                      <input type="date" name="appointment-date" id="appointment-date"
                        placeholder="Enter your middle name" value="<?php echo $randomDate ?>" required
                        min="<?php echo date("Y-m-d") ?>">
                      <p class="form-error-message hidden">Error</p>

                    </div>
                    <!-- Appointment time -->
                    <div class="form-input-box input-two">
                      <label for="appointment-time" class="text-capital">Appointment time <span>*</span></label>
                      <input type="time" name="appointment-time" id="appointment-time" value="<?php echo $randomTime ?>"
                        min="08:00:00" max="17:00:00" required>
                      <p class="form-error-message hidden">Error</p>
                      <!-- value="01:0s0" -->
                    </div>
                    <!-- Referral form -->
                    <div class="form-input-box input-two">
                      <label for="appointment-referral" class="text-capital">Referral form</label>
                      <input type="file" name="appointment-referral" id="appointment-referral">
                      <p class="form-error-message"></p>
                    </div>
                    <!-- Medical record -->
                    <div class="form-input-box input-two">
                      <label for="appointment-medical" class="text-capital">Medical record </label>
                      <input type="file" name="appointment-medical" id="appointment-medical">
                      <p class="form-error-message"></p>
                    </div>
                  </div>

                  <!-- middle -->
                  <div class="form-input-parent divider-grow">
                    <!-- More Information -->
                    <div class="form-input-box input-one">
                      <label for="appointment-more-info" class="text-capital">More information</label>
                      <textarea name="appointment-more-info" class="" id="appointment-more-info"
                        placeholder="Give additional information about your Nutrional Concern."></textarea>
                    </div>
                  </div>

                  <!-- right -->
                  <div class="form-input-parent">
                    <!-- family condition -->
                    <div class="form-input-box form-radio-box family-past-condition">
                      <label>Preferred RND <span>*</span></label>
                      <div class="gender-con radio-default checkbox-container-parent">


                        <?php foreach($rndList as $rnd) {
                          $id = "rnd-".$rnd['user_id'];
                          ?>
                        <div>
                          <input type="checkbox" id="<?php echo $id ?>" name="preferred-rnd[]"
                            value="<?php echo $rnd['user_id']?>">
                          <label
                            for="<?php echo $id ?>"><?php echo "RND ".$rnd['first_name']." ".$rnd['last_name'] ?></label>
                        </div>
                        <?php } ?>
                      </div>
                    </div>
                  </div>


                </div>
              </section>

              <!-- Food Information -->
              <section id="food-tab" class="tab-panel">
                <!-- - Form Header -->
                <div class="form-header text-uppercase hidden">
                  <h3>Food Information</h3>
                </div>
                <!-- form parent -->
                <div class="divider">
                  <!-- left -->
                  <div class="form-input-parent">
                    <!-- food allergies -->
                    <div class="form-input-box input-two food-allergy">
                      <label for="appoint-food-allergies">Do you have any food allergies? <span>*</span></label>
                      <div class="tooltip checkbox-container-parent">
                        <input type="text" name="appoint-food-allergies" id="appoint-food-allergies"
                          placeholder="E.g Peanut, Shrimp" value="<?php echo $multipleInputSample ?>" required>
                        <span class="tooltiptext"><?php echo $multipleInputMessage ?></span>
                      </div>
                      <p class="form-error-message hidden">Error</p>
                    </div>
                    <!-- Foods you like -->
                    <div class="form-input-box input-two food-like">
                      <label for="appoint-food-like" class="text-capital">Foods you like <span>*</span></label>
                      <div class="tooltip checkbox-container-parent">
                        <input type="text" name="appoint-food-like" id="appoint-food-like" placeholder="E.g Salad, Egg"
                          value="<?php echo $multipleInputSample ?>" required>
                        <span class="tooltiptext"><?php echo $multipleInputMessage ?></span>
                      </div>
                      <p class="form-error-message hidden">Error</p>
                    </div>
                    <!-- Foods you dislike -->
                    <div class="form-input-box input-two food-dislike">
                      <label for="appoint-food-like" class="text-capital">Foods you dislike <span>*</span></label>
                      <div class="tooltip checkbox-container-parent">
                        <input type="text" name="appoint-food-dislike" id="appoint-food-dislike"
                          placeholder="E.g Seaweed, Fish" value="<?php echo $multipleInputSample ?>" required>
                        <span class="tooltiptext"><?php echo $multipleInputMessage ?></span>
                      </div>
                      <p class="form-error-message hidden">Error</p>
                    </div>
                    <!-- type of diet -->
                    <div class="form-input-box input-two">
                      <label for="appoint-type-diet">Are you on specific type of diet? <span>*</span></label>
                      <input list="list-diet" name="appoint-type-diet" id="appoint-type-diet"
                        value="<?php echo $sampleText ?>" required>
                      <datalist id="list-diet">
                        <option value="Veganism diet" selected>
                        <option value="Fasting diet">
                        <option value="Ketogenic diet">
                        <option value="Gluten-free diet">
                        <option value="Low-fat diet">
                      </datalist>
                      <p class="form-error-message hidden">Error</p>
                    </div>
                  </div>
                  <!-- right -->
                  <div class="form-input-parent">
                    <!-- Smoke -->
                    <div class="form-input-box form-radio-box">
                      <p>How often do you smoke <span>*</span></p>
                      <div class="gender-con radio-default">

                        <?php foreach($appoint -> getOftenessForm() as $data) {
                          $name = "smoke-".$data['status_name']
                        ?>
                        <div>
                          <input type="radio" id="<?php echo $name ?>" name="smoke-level"
                            value="<?php echo $data['status_id'] ?>" <?php echo $isRadio ? "checked" : "" ?> required>
                          <label for="<?php echo $name ?>"><?php echo $data['status_name'] ?></label>
                        </div>
                        <?php } ?>

                      </div>
                    </div>
                    <!-- Drink liquor -->
                    <div class="form-input-box form-radio-box">
                      <p>How often do you drink liquor?
                        <span>*</span>
                      </p>
                      <div class="gender-con radio-default">

                        <?php foreach($appoint -> getOftenessForm() as $data) {
                          $name = "drink-".$data['status_name']
                        ?>
                        <div>
                          <input type="radio" id="<?php echo $name ?>" name="drink-level"
                            value="<?php echo $data['status_id'] ?>" <?php echo $isRadio ? "checked" : "" ?> required>
                          <label for="<?php echo $name ?>"><?php echo $data['status_name'] ?></label>
                        </div>
                        <?php } ?>

                      </div>
                    </div>
                  </div>
                </div>
              </section>

              <!-- Physical Information -->
              <section id="physical-tab" class="tab-panel">
                <!-- - Form Header -->
                <div class="form-header text-uppercase hidden">
                  <h3>Physical Information</h3>
                </div>
                <!-- form parent -->
                <div class="divider">
                  <!-- left -->
                  <div class="left-form form-input-parent">
                    <!-- Actual weight -->
                    <div class="form-input-box need-metric tooltip">
                      <label for="appoint-actual-weight">Actual weight <span>*</span></label>
                      <input type="number" class="need-metrics" min='0' name="appoint-actual-weight"
                        id="appoint-actual-weight" placeholder="E.g 60" value=<?php echo $inputWeight ?> required>
                      <span class="tooltiptext"><?php echo $tootTipWeight ?></span>

                      <select name="metric" class="metric hidden">
                        <option value="kg">kg</option>
                        <option value="lbs">lbs</option>
                      </select>
                      <p class="form-error-message hidden">Error</p>
                    </div>
                    <!-- Current height -->
                    <div class="form-input-box need-metric tooltip">
                      <label for="appoint-current-height" class="text-capital">Current height <span>*</span></label>
                      <input type="number" min='0' name="appoint-current-height" id="appoint-current-height"
                        placeholder="E.g 170" value=<?php echo $inputHeight ?> required>
                      <span class="tooltiptext"><?php echo $tootTipHeight ?></span>

                      <select name="metric" class="metric hidden">
                        <option value="">ft</option>
                        <option value="spider">m</option>
                        <option value="goldfish" selected>cm</option>
                      </select>
                      <p class="form-error-message hidden">Error</p>
                    </div>
                  </div>
                  <!-- right -->
                  <div class="form-input-parent physical-body-type ">
                    <!-- Body type -->
                    <div class="form-input-box form-radio-box ">
                      <p>Body type <span>*</span></p>

                      <div class="gender-con radio-default tooltip">

                        <?php $index = 0; foreach($appoint -> getBodyTypeForm() as $data) { 
                          $name = "body-type--".$data['body_type_name'];
                        ?>
                        <div class="  ">
                          <input type="checkbox" id="<?php echo $name ?>" name="body-type[]"
                            value="<?php echo $data['physical_body_type_id'] ?>" required>
                          <label for="<?php echo $name ?>"><?php echo $data['body_type_name'] ?></label>
                        </div>
                        <?php $index++; } ?>

                        <span class="tooltiptext"><img style="width:500px" src="../../uploads/body_types_visual.jpg"
                            alt=""></span>

                      </div>
                    </div>
                    <!-- Physical activity -->
                    <div class="form-input-box form-radio-box physical-activity">
                      <p>Physical activity <span>*</span></p>
                      <div class="gender-con radio-default">

                        <?php foreach($appoint -> getPhysicalActivtyForm() as $data) { 
                          $name = "physical-".$data['physical_act_name'];
                        ?>
                        <div>
                          <input type="radio" id="<?php echo $name ?>" name="physical-activity"
                            value="<?php echo $data['physical_activity_id'] ?>" <?php echo $isRadio ? "checked" : "" ?>>
                          <label for="<?php echo $name ?>"><?php echo $data['physical_act_name'] ?></label>
                        </div>
                        <?php } ?>

                      </div>
                    </div>
                    <!-- Gain weight -->
                    <div class="form-input-box form-radio-box physical-weight-gain">
                      <p>Do you gain weight <span>*</span></p>
                      <div class="gender-con radio-default">

                        <?php foreach($appoint -> getWeightForm() as $data) { 
                          $name = "gain-".$data['status_name'];
                        ?>
                        <div>
                          <input type="radio" id="<?php echo $name ?>" name="gain-weight-level"
                            value="<?php echo $data['gain_lose_status_id'] ?>" <?php echo $isRadio ? "checked" : "" ?>>
                          <label for="<?php echo $name ?>"><?php echo $data['status_name'] ?></label>
                        </div>
                        <?php } ?>

                      </div>
                    </div>
                    <!-- Lose weight -->
                    <div class="form-input-box form-radio-box physical-weight-lose">
                      <p>Do you lose weight <span>*</span></p>
                      <div class="gender-con radio-default">


                        <?php foreach($appoint -> getWeightForm() as $data) { 
                          $name = "lose-".$data['status_name'];
                        ?>
                        <div>
                          <input type="radio" id="<?php echo $name ?>" name="lose-weight-level"
                            value="<?php echo $data['gain_lose_status_id'] ?>" <?php echo $isRadio ? "checked" : "" ?>>
                          <label for="<?php echo $name ?>"><?php echo $data['status_name'] ?></label>
                        </div>
                        <?php } ?>

                      </div>
                    </div>
                  </div>
                </div>
              </section>

              <!-- Medical Information -->
              <section id="medical-tab" class="tab-panel">
                <!-- - Form Header -->
                <div class="form-header text-uppercase hidden">
                  <h3>Medical Information</h3>
                </div>
                <!-- form parent -->
                <div class="divider">
                  <!-- left -->
                  <div class="left-form form-input-parent">
                    <!-- Current Medication -->
                    <div class="form-input-box medical-current-med">
                      <label for="appoint-actual-weight">Medication that you are currently taking <span>*</span></label>
                      <div class="tooltip checkbox-container-parent">
                        <input type="text" name="appoint-medical-current-med" id="appoint-medical-current-med"
                          placeholder="E.g Ascorbic Acid, Vitamin D" value="<?php echo $multipleInputSample ?>"
                          required>
                        <span class="tooltiptext"><?php echo $multipleInputMessage ?></span>
                      </div>
                      <p class="form-error-message hidden">Error</p>
                    </div>
                  </div>
                  <!-- right -->
                  <div class=" form-input-parent ">
                    <!-- health condition -->
                    <div class="form-input-box form-radio-box self-past-condition ">
                      <label>Do you have any health condition or have been diagnosed in the past? <span>*</span></label>
                      <div class="gender-con radio-default checkbox-container-parent">
                        <!-- Endomorph -->
                        <div>
                          <input type="checkbox" id="self-conditions-diabetes" name="self-condition[]" value="Diabetes">
                          <label for="self-conditions-diabetes">Diabetes</label>
                        </div>
                        <!-- Ectomorph -->
                        <div>
                          <input type="checkbox" id="self-conditions-hypertension" name="self-condition[]"
                            value="Hypertension">
                          <label for="self-conditions-hypertension">Hypertension</label>
                        </div>
                        <!-- Mesomorph -->
                        <div>
                          <input type="checkbox" id="self-conditions-obese" name="self-condition[]" value="Obese">
                          <label for="self-conditions-obese">Obese</label>
                        </div>
                        <!-- Mesomorph -->
                        <div>
                          <input type="checkbox" id="self-conditions-anemia" name="self-condition[]" value="Anemia">
                          <label for="self-conditions-anemia">Anemia</label>
                        </div>
                        <!-- Mesomorph -->
                        <div class="hiddens ">
                          <input type="checkbox" id="self-conditions-one-other">
                          <label for="self-conditions-one-other">If others, specify</label>
                          <div class="tooltip">
                            <input type="text" id="self-conditions-otherValue" name="self-condition-other"
                              placeholder="E.g Ulcer, UTI" class="hiddens" />
                            <span class="tooltiptext "><?php echo $multipleInputMessage ?></span>
                          </div>
                        </div>
                      </div>
                    </div>
                    <!-- family condition -->
                    <div class="form-input-box form-radio-box family-past-condition">
                      <label>Do your family has any health condition in the past? <span>*</span></label>
                      <div class="gender-con radio-default checkbox-container-parent">
                        <!-- Endomorph -->
                        <div>
                          <input type="checkbox" id="family-conditions-diabetes" name="family-condition[]"
                            value="Diabetes">
                          <label for="family-conditions-diabetes">Diabetes</label>
                        </div>
                        <!-- Ectomorph -->
                        <div>
                          <input type="checkbox" id="family-conditions-hypertension" name="family-condition[]"
                            value="Hypertension">
                          <label for="family-conditions-hypertension">Hypertension</label>
                        </div>
                        <!-- Mesomorph -->
                        <div>
                          <input type="checkbox" id="family-conditions-obese" name="family-condition[]" value="Obese">
                          <label for="family-conditions-obese">Obese</label>
                        </div>
                        <!-- Mesomorph -->
                        <div>
                          <input type="checkbox" id="family-conditions-anemia" name="family-condition[]" value="Anemia">
                          <label for="family-conditions-anemia">Anemia</label>
                        </div>
                        <!-- Mesomorph -->
                        <div class="hiddens ">
                          <input type="checkbox" id="family-conditions-one-other">
                          <label for="family-conditions-one-other">If others, specify</label>
                          <div class="tooltip">
                            <input type="text" id="family-conditions-otherValue" name="family-condition-one-other"
                              class="hiddens" placeholder="E.g Ulcer, UTI" />
                            <span class="tooltiptext "><?php echo $multipleInputMessage ?></span>
                          </div>

                        </div>
                      </div>
                    </div>
                  </div>
                </div>
              </section>

            </div>
          </div>

          <div class="form-button">
            <!-- prev -->
            <div class="button-tab-next">
              <a class="button button-primary">Next</a>
            </div>
            <!-- middle -->
            <div>
              <button class="button hidden" disabled>Submit</button>
            </div>
            <!-- next -->
            <div class="tooltip">
              <a class="button button-semi button-disabled button-primary">Submit
              </a>
              <!-- NEEDS WORK -->
              <span class="tooltiptext ">Please fill up the necesarry form</span>
            </div>
            <!-- class="button-semi-submit" -->
            <div class="button-next hidden">
              <a class="button button-primary">Next
              </a>
            </div>


          </div>

          <!-- MODAl - CONFIRMATION -->
          <div class="modal-parent modal-notif-parent modal-appointment-confirmation overlay-black flex-center hidden">

            <!-- hidden - fox ajax -->
            <input type="hidden" name="submit" value='true' id="submit">

            <div class="modal-container modal-notif-container sizing-secondary">
              <div class="modal-header text-center">
                <h2 class="text-uppercase">Confirm appointment</h2>
              </div>
              <div class="modal-message">
                <p class="text-center">Are you sure you want to submit this form?</p>
              </div>
              <div class="modal-buttons">
                <a class="button button-cancel">Go back</a>
                <button type="submit" name='submit' value="submit" class="button button-primary">Submit</button>
              </div>

              <div class="stopper hidden"></div>

            </div>

            <?php require_once $path."includes/spinner.php" ?>

          </div>

        </form>

      </div>

      <!-- 2 -->
      <!-- Appointment checkpoint -->
      <div data-board-page="2"
        class="appointment-checkpoint-stage board-page <?php echo $board_page == 2?"":"hidden" ?>">
        <!-- Board Header -->
        <div class="board-header text-uppercase text-center">
          <h2>Appointment details</h2>
        </div>
        <!-- Form -->
        <form action="/" class="form" method="post">
          <!-- Tab -->
          <div class="divider">
            <!-- 1 -->
            <div class="form-input-parent">
              <!-- Appointment Numbuh -->
              <div class="form-input-box input-one">
                <label for="firstname">Appointment number</label>
                <input type="text" name="transact_id" value="LOADING" disabled>
              </div>
              <!-- chief complaint -->
              <div class="form-input-box input-one">
                <label for="firstname">Nutrional Concern</label>
                <input type="text" name="appoint-chief-complaint" value="LOADING" disabled>
              </div>
              <!-- Date appointment submitted -->
              <div class="form-input-box input-one ">
                <label for="middlename">Date appointment submitted</label>
                <input type="text" name="appoint-date-submitted" id="appoint-date-submitted" value="LOADING" disabled>
              </div>

            </div>
            <!-- 2 -->
            <div class="form-input-parent">
              <!-- Appointment status -->
              <div class="form-input-box input-one">
                <label for="lastname">Appointment status</label>
                <input type="text" class="status-pendings" name="appoint-status" id="lastname" value="LOADING" disabled>
              </div>
              <!-- Assigned RDN -->
              <div class="form-input-box input-one">
                <label for="lastname">Assigned RDN</label>
                <input class="status-pendings" type="text" name="rdn-assigned" value="LOADING" disabled>
              </div>
            </div>
            <!-- 3 -->
            <div class="form-input-parent flex-center">
              <!-- img -->
              <div class="list-rnd-box ka-talk-box grid-box card">
                <div class="list-rnd-image flex-center">
                  <img src="../../uploads/dummy_user.jpg" alt="">
                </div>
                <div class="list-rnd-info text-center">
                  <p class="assigned-rnd">LOADING</p>
                  <a target="_blank" href="#" class="text-uppercase text-center profile-link">view profile</a>
                </div>
              </div>
            </div>
          </div>

          <div class="form-button">

            <!-- prev -->
            <div class="button-prev">
              <button class="button">prev</button>
            </div>
            <!-- middle -->
            <div>
              <p class="text-uppercase appoint-status-time"><i class="fa-regular fa-clock"></i>
                <span>Waiting for appoinment approval</span>
              </p>
            </div>
            <!-- next -->
            <div class="button-next">
              <button class="button button-primary" disabled>Next
              </button>
            </div>

          </div>

        </form>

      </div>

      <!-- 3 -->
      <!-- consultation -->
      <div data-board-page="3" class="consultation-stage board-page <?php echo $board_page == 3?"":"hidden" ?>">
        <!-- Board Header -->
        <div class="board-header text-uppercase text-center">
          <h2>Consultation</h2>
        </div>
        <!-- Form -->
        <div class="form">
          <div class="divider">
            <!-- 1 -->
            <div class="form-input-parent">
              <!-- Appointment Numbuh -->
              <div class="form-input-box ">
                <label for="firstname">Appointment number</label>
                <input type="text" name="transact_id" value="LOADING" disabled>
              </div>
              <!-- Upcoming schedule -->
              <div class="form-input-box schedule-container">
                <div class="container-header text-center flex-center text-uppercase">
                  <p>Upcoming schedule</p>
                </div>
                <div class="list-schedule">
                  <ul>
                  </ul>
                </div>
              </div>
            </div>
            <!-- 2 -->
            <div class="form-input-parent divider-grow">
              <!-- Appointment Numbuh -->
              <div class="form-input-box input-one">
                <label for="firstname">Nutrional Concern</label>
                <input type="text" name="appoint-chief-complaint" value="LOADING" disabled>
              </div>

              <!-- Date appointment submitted -->
              <div class="form-input-box input-one messenger-container">

                <!-- actual sms  -->
                <div class="actual-message-container">
                  <P style="width: 100%; height:100%; background-color: grey;" class="flex-center card">
                    loading</P>
                </div>

                <!-- sms box input -->
                <div class="sms-box-container">
                  <input type="text" name="sms_chat" id="sms_chat" placeholder="Your message here"
                    <?php echo $board_page > 3? 'disabled':"" ?>>
                  <button class="button button-primary button-sendMessage">SEND</button>
                </div>

              </div>
            </div>
            <!-- 3 -->
            <div class="form-input-parent flex-center">
              <!-- img -->
              <div class="list-rnd-box ka-talk-box grid-box card">
                <div class="list-rnd-image flex-center">
                  <img src="../../uploads/dummy_user.jpg" alt="">
                </div>
                <div class="list-rnd-info text-center">
                  <p class="assigned-rnd">DUMMY</p>
                  <a target="_blank" href="#" class="text-uppercase text-center profile-link">view profile</a>
                </div>
              </div>
              <!-- virtual room -->
              <div class="form-input-box virtual-room-container">
                <div class="container-header text-center flex-center text-uppercase">
                  <p>in virtual room</p>
                  <a href="#" target="_blank" class="button button-join mini-button">JOIN</a>
                </div>
                <div class="list-schedule">
                  <ul>
                    <li data-userId="0" class="client-join join-user hidden">
                      <div class="circle"></div>
                      <p>RND Gregory Yames</p>
                    </li>
                    <li data-userId="0" class="rnd-join join-user hidden">
                      <div class="circle"></div>
                      <p>RND Gregory Yames</p>
                    </li>
                  </ul>
                </div>
              </div>
            </div>
          </div>

          <div class="form-button">

            <!-- prev -->
            <div class="button-prev">
              <button class="button">prev</button>
            </div>
            <!-- middle -->
            <div>
              <button class="button hidden" disabled>Submit</button>
            </div>
            <!-- next -->
            <div class="button-next">
              <button class="button  button-next button-primary" disabled>Next
              </button>
            </div>

          </div>

        </div>

      </div>

      <!-- 4 -->
      <!-- consultation checkpoint -->
      <div data-board-page="4"
        class="consultation-checkpoint-stage board-page <?php echo $board_page == 4?"":"hidden" ?>">
        <!-- Board Header -->
        <div class="board-header text-uppercase text-center">
          <h2>Consultation result</h2>
        </div>
        <!-- Form -->
        <form action="/" class="form" method="post">
          <div class="divider">
            <!-- 1 -->
            <div class="form-input-parent">
              <!-- Appointment Numbuh -->
              <div class="form-input-box input-one">
                <label for="firstname">Appointment number</label>
                <input type="text" name="transact_id" value="LOADING" disabled>
              </div>
              <!-- Date appointment submitted -->
              <div class="form-input-box input-one ">
                <label for="middlename">Date appointment submitted</label>
                <input type="text" name="appoint-date-submitted" id="appoint-date-submitted" value="LOADING" disabled>
              </div>
              <!-- Date consultation finished -->
              <div class="form-input-box input-one">
                <label for="firstname">Date consultation completed</label>
                <input type="text" name="date-completed" id="date-completed" value="LOADING" disabled>
              </div>
            </div>
            <!-- 2 -->
            <div class="form-input-parent divider-grow">
              <!-- Appointment Numbuh -->
              <div class="form-input-box input-one">
                <label for="firstname">Nutrional Concern</label>
                <input type="text" name="appoint-chief-complaint" value="LOADING" disabled>
              </div>
            </div>
            <!-- 3 -->
            <div class="form-input-parent flex-center">
              <!-- Consultation result -->
              <div class="form-input-box">
                <label for="firstname">Consultation result</label>
                <input type="text" name="consultation-status" id="firstname" class="status-pending" value="LOADING"
                  disabled>
              </div>
            </div>
          </div>

          <div class="form-button">

            <!-- prev -->
            <div class="button-prev">
              <button class="button">prev</button>
            </div>
            <!-- middle -->
            <div>
              <button class="button hidden" disabled>Submit</button>
            </div>
            <!-- next -->
            <div class="button-next">
              <button class="button button-next button-primary" disabled>Next
              </button>
            </div>

          </div>

        </form>

      </div>

      <!-- 5 -->
      <!-- Solution -->
      <div data-board-page="5" class="solution-stage board-page <?php echo $board_page == 5?"":"hidden" ?>">
        <!-- Board Header -->
        <div class="board-header text-uppercase text-center">
          <h2>Solution</h2>
        </div>
        <!-- Form -->
        <form action="/" class="form" method="post">
          <div class="divider">
            <!-- 1 -->
            <div class="form-input-parent">
              <!-- Appointment Numbuh -->
              <div class="form-input-box input-one">
                <label for="firstname">Appointment number</label>
                <input type="text" name="transact_id" value="LOADING" disabled>
              </div>
              <!-- Date appointment submitted -->
              <div class="form-input-box input-one ">
                <label for="middlename">Date appointment submitted</label>
                <input type="text" name="appoint-date-submitted" value="LOADING" disabled>
              </div>
              <!-- Date consultation finished -->
              <div class="form-input-box input-one">
                <label for="firstname">Date consultation completed</label>
                <input type="text" name="date-completed" value="LOADING" disabled>
              </div>
            </div>
            <!-- 2 -->
            <div class="form-input-parent divider-grow">
              <!-- Appointment Numbuh -->
              <div class="form-input-box input-one">
                <label for="appoint-chief-complaint">Nutrional Concern</label>
                <input type="text" name="appoint-chief-complaint" value="LOADING" disabled>
              </div>
            </div>
            <!-- 3 -->
            <div class="form-input-parent">
              <!-- Upcoming schedule -->
              <div class="form-input-box schedule-container upload-box">
                <div class="container-header text-center flex-center text-uppercase">
                  <p>Files</p>
                </div>
                <div class="divider">
                  <div class="form-input-parent">
                    <!-- Referral form -->
                    <div class="form-input-box input-one">
                      <label for="appointment-referral">Consultation result file</label>
                      <!-- <input type="file" name="appointment-referral" id="appointment-referral" value="test.mp4"
                      disabled> -->
                      <div class="download-form">
                        <a class="consultationSolution" href="#">LOADING</a>
                      </div>
                    </div>
                  </div>
                </div>

              </div>
            </div>
          </div>

          <div class="form-button">

            <!-- prev -->
            <div class="button-prev">
              <button class="button">prev</button>
            </div>
            <!-- middle -->
            <div class="hidden">
              <button class="button button-tertiary">Request for monitoring</button>
            </div>
            <!-- next -->
            <div class="">
              <a href="<?php echo $path.'homepage/index.php' ?>" class="button button-primary">Home
              </a>
            </div>

          </div>

        </form>

      </div>

    </div>

    <!-- MODAl - OTHER ACCOUNT IS LOGGED IN -->
    <div class="modal-parent modal-notif-parent modal-oops-notif overlay-black flex-center hidden">

      <!-- hidden - fox ajax -->
      <input type="hidden" name="submit" value='true' id="submit">

      <div class="modal-container modal-notif-container sizing-secondary modal-wait">
        <div class="modal-header text-center">
          <h2 class="text-uppercase">Something went wrong</h2>
        </div>
        <div class="modal-message">
          <p class="text-center">Error poewes</p>
        </div>
        <div class="modal-buttons">
          <a class="button button-back">Go back</a>
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