<?php
$serverName = "db";
$connectionOptions = array(
    "Database" => "master",
    "Uid" => "sa",
    "PWD" => "Password.1"
);

$target_user_id = 1;

$conn = sqlsrv_connect($serverName, $connectionOptions);

if ($conn === false) {
    http_response_code(500);
    die("Database connection failed.");
}

$updated_name = "Auto-Updated @ " . date("H:i:s");
$sql_update = "UPDATE Users SET name = ? WHERE id = ?";
$params_update = array(&$updated_name, &$target_user_id);
sqlsrv_query($conn, $sql_update, $params_update);

$sql_select = "SELECT id, name FROM Users ORDER BY id ASC";
$stmt_select = sqlsrv_query($conn, $sql_select);

$table_html = "<table border='1' style='border-collapse: collapse; width: 100%; font-family: Arial, sans-serif;'>";
$table_html .= "<caption style='font-size: 1.2em; margin-bottom: 10px; font-weight: bold;'>TABLE: Users</caption>";
$table_html .= "<thead><tr><th>ID</th><th>Name</th></tr></thead>";
$table_html .= "<tbody>";

if ($stmt_select !== false) {
    while ($row = sqlsrv_fetch_array($stmt_select, SQLSRV_FETCH_ASSOC)) {
        $highlight = ($row['id'] == $target_user_id) ? 'style="background-color: #d1e7dd; font-weight: bold;"' : '';
        $table_html .= "<tr $highlight><td>" . htmlspecialchars($row['id']) . "</td><td>" . htmlspecialchars($row['name']) . "</td></tr>";
    }
}

$table_html .= "</tbody></table>";

echo $table_html;

sqlsrv_close($conn);
?>
