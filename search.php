<?php		
	$keyword = strval($_POST['query']);
	$search_param = "{$keyword}%";
	$conn =new mysqli('localhost', 'root', '' , 'photohost');

	$sql = $conn->prepare("SELECT tag_name FROM tags WHERE tag_name LIKE ?");
	$sql->bind_param("s",$search_param);			
	$sql->execute();
	$result = $sql->get_result();
	if ($result->num_rows > 0) {
		while($row = $result->fetch_assoc()) {
		$countryResult[] = $row["tag_name"];
		}
		echo json_encode($countryResult);
	}
	$conn->close();
?>


