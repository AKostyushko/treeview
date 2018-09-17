<?php

$connect = mysqli_connect('localhost', 'root', '', 'artur');

$query =
<<<SQL
select
       users.id,
       parents.id as parent_id,
       users.name,
       users.surname
from users as users
left join users as parents
    on users.referred_by = parents.affiliate_id
SQL;
$result = mysqli_query($connect, $query);

while ($row = mysqli_fetch_array($result)) {
    $sub_data["id"] = $row["id"];
    $sub_data["name"] = $row["name"];
   // $sub_data["surname"] = $row["surname"];
   // $sub_data["inn"] = $row["inn"];
    $sub_data["parent_id"] = $row["parent_id"];
    $sub_data["text"] = $row["name"]." ".$row["surname"];
    //$sub_data["referral_full_name"] = $row["referral_full_name"];
    $data[] = $sub_data;
}

foreach($data as $key => &$value)
{
    $output[$value["id"]] = &$value;
}
foreach($data as $key => &$value)
{
    if($value["parent_id"] && isset($output[$value["parent_id"]]))
    {
        $output[$value["parent_id"]]["nodes"][] = &$value;
    }
}
foreach($data as $key => &$value)
{
    if($value["parent_id"] && isset($output[$value["parent_id"]]))
    {
       unset($data[$key]);
    }
}

//echo '<pre>';
echo json_encode($data);
//echo '<pre>';


/*echo "Hi";
*/
/*
echo '<pre>';
print_r($data);
echo '</pre>';
*/

