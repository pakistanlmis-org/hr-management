<?php

session_start();
require_once 'classes/family.php';
require_once 'classes/personal.php';

$family = new family();
$personal= new personal();

if(isset($_REQUEST['familyid']) && !empty($_REQUEST['familyid'])){
    $family->pk_id = $_REQUEST['familyid'];
}

$family->spouse_id = $_POST['family_id'];
$family->personal_record_id = $_POST['pers_spouse_id'];

echo $family_id = $family->save();
exit;

//$result = $personal->find_by_personal($_POST['pers_spouse_id']);
//
//  if ($result) {
//            ?>

       <!-- Table -->

<!--            <table class=" table table-striped table-bordered table-condensed">
                <thead>
                    <tr>
                        <th style="width: 1%;" class="center">No.</th>
                        <th>Name</th>
                        <th>Father/Husband Name</th>
                        <th>Gender</th>
                        <th>CNIC</th>
                        <th>District of Domicile</th>
                        <th>Marital Status</th>
                        <th>Actions</th>
                    </tr>
                </thead>
                <tbody>-->
                    <!-- Table row -->
                    //<?php
//                    $count = 1;
//                    while ($row = $result->fetch_array()) {
//
//                        $class = "gradeX";
//                        if ($count % 2 == 0) {
//                            $class = "gradeC";
//                        }
//                        //$attchment = new attachments();
//                        //$att_count = $attchment->count_all($row['pk_id']);
//                        ?>
<!--                        <tr class="//<?php echo $class; ?>">
                            <td class="center">//<?php echo $count; ?></td>
                            <td>//<?php echo $row['name']; ?></td>
                            <td class="important">//<?php echo $row['father_name']; ?></td>
                            <td class="important">//<?php echo $row['gender']; ?></td>
                            <td>//<?php echo $row['cnic']; ?></td>
                            <td class="important">//<?php echo $row['district_of_domicile']; ?></td>
                            <td class="important">//<?php echo $row['marital_status']; ?></td>
                            <td class="center" style="width: 200px;">
                                <a onclick="return confirm('Are you sure you want to delete?');" href="delete_personal.php?id=//<?php echo $row['pk_id']; ?>" class="btn-action glyphicons bin" title="delete"><i></i></a>
                            </td>
                        </tr>-->
                        //<?php
//                        $count++;
//                    }
//                    ?>
                    <!-- // Table row END -->
                    <!-- Table row -->

                    <!-- // Table row END -->
                </tbody>
            </table>
            <!-- // Table END -->
            //<?php
//        } else {
//            echo "<hr><h5> No records found!</h5>";
//        }