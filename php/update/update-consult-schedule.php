<?php 
require_once '../../classes/consult.class.php';

session_start();

print_r($_POST);

if(isset($_POST['submits'])) {
  $consult = new consult;
  $consult -> transact_id = $_SESSION['transact_id'];
  $consult -> consult_id = $consult -> getConsultId();

  $consult -> client_id = $_SESSION['acc_no'];
  $consult -> rnd_id =  $_SESSION['rnd_id'];

  $consult -> sched_date = $_POST['appointment-date'];
  $consult -> sched_time = $_POST['appointment-time'];

  $res = $consult -> updateSchedule();
  if($res){
    echo "success";
  } else {
    echo "failed";
  }
}

// $query->bindParam(':client_id', $this-> client_id);
// $query->bindParam(':rnd_id', $this-> rnd_id);
// $query->bindParam(':sched_date', $this-> sched_date);
// $query->bindParam(':sched_time', $this-> sched_time);