<?php
require_once 'classes/district.php';
require_once 'classes/datetime.php';

$district = new district();
$district_id = $_POST['id'];
$file = $district->find_by_id($district_id);
$data = $file->fetch_array();

?>
<!-- Row -->
<div class="row-fluid">

    <!-- Column -->
    <div class="span12">

        <!-- Group -->
                                      
                    <div class="control-group">
                        <label class="control-label" for="location_name">Location Name</label>
                        <div class="controls"><input class="span12" id="location_name" name="location_name" value="<?php echo $data['location_name']; ?>" type="text" /></div>
                    </div>                        
                    <div class="control-group">
                        <label class="control-label" for="lvl">Level</label>
                        <div class="controls">
                            <select name="lvl" id="lvl" class="span12">
<!--                                <option value="National" <?php if($data['lvl']=='National') { ?>selected=""<?php } ?>>National</option>
                                <option value="Province" <?php if($data['lvl']=='Province') { ?>selected=""<?php } ?>>Province</option>-->
                                <option value="District" <?php if($data['lvl']=='District') { ?>selected=""<?php } ?>>District</option>
                                <option value="Posting Place" <?php if($data['lvl']=='Posting Place') { ?>selected=""<?php } ?>>Posting Place</option>
                                <option value="Received From" <?php if($data['lvl']=='Received From') { ?>selected=""<?php } ?>>Received From</option>
                            </select>
                            </div>
                    </div>
                 
        
    </div>
    <!-- // Column END -->



</div>

<input type="hidden" name="districtid" value="<?php echo $district_id; ?>"/>