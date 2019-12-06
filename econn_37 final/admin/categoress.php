<select class="form-control text-center custom-select"multiple="multiple"name="category[]">
    <option selected>Choose Your Product Category</option>
    
    <?php
    $conn->table_name = "categories";
    $allcat = $conn->get_all();
    foreach ($allcat as $value) {
        if ($value['id'] == $rowtoEdit['cid']) {
            echo '<option value="' . $value['id'] . '"selected>' . $value['name'] . '</option>';
        } else {
            echo '<option value="' . $value['id'] . '">' . $value['name'] . '</option>';
        }
    }

    ?>
  </select>