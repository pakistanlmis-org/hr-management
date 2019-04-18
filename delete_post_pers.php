<?php
require_once 'classes/posting.php';
$posting = new posting();

$posting->pk_id = $_POST['id'];
$res = $posting->delete();

$result = $posting->find_by_personal($_POST['pers_post_id']);

if ($result) {
    ?>
    <!-- Table -->

    <table class="dynamicTable table table-striped table-bordered table-condensed">
        <thead>
            <tr>
                <th style="width: 1%;" class="center">No.</th>
                <th>Name</th>
                <th>Designation </th>
                <th>BPS</th>
                <th>District</th>
                <th>Date of Appointment</th>
                <th>Letter</th>
                <th>Actions</th>
            </tr>
        </thead>
        <tbody>
            <!-- Table row -->
            <?php
            $count = 1;
            while ($row = $result->fetch_array()) {

                $class = "gradeX";
                if ($count % 2 == 0) {
                    $class = "gradeC";
                }
                //$attchment = new attachments();
                //$att_count = $attchment->count_all($row['pk_id']);
                ?>
                <tr class="<?php echo $class; ?>">
                    <td class="center"><?php echo $count; ?></td>
                    <td><?php echo $row['name']; ?></td>
                    <td class="important"><?php echo $row['designation']; ?></td>
                    <td class="important"><?php echo $row['bps']; ?></td>
                    <td class="important"><?php echo $row['location_name']; ?></td>
                    <td class="important"><?php echo $row['date_of_appointment']; ?></td>
                    <td class="important"><a style="cursor: pointer" onclick="window.open('upload/<?php echo $row['file']; ?>', 'Appointment Letter', 'width:800,height=600')"><?php echo $row['file']; ?></a></td>
                    <td class="center" style="width: 200px;">
                        <a id="<?php echo $row['pk_id']; ?>-delposting" class="btn-action glyphicons bin" title="delete"><i></i></a>
                    </td>
                </tr>
                <?php
                $count++;
            }
            ?>
            <!-- // Table row END -->
            <!-- Table row -->

            <!-- // Table row END -->
        </tbody>
    </table>
    <!-- // Table END -->
    <?php
} else {
    echo "<hr><h5> No records found!</h5>";
}

