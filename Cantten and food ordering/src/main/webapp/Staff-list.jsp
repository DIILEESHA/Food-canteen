<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
<title>FOOD MASTER</title>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
	integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
	crossorigin="anonymous">



<style type="text/css">
.myInput {
	background-image: url('/css/searchicon.png');
	background-position: 10px 10px;
	background-repeat: no-repeat;
	width: 100%;
	font-size: 16px;
	padding: 12px 20px 12px 40px;
	border: 1px solid #ddd;
	margin-bottom: 12px;
}

.header {
	background-color: #2C3E50;
	padding: 20px;
	text-align: center;
	font-family: "Lucida Console", "Courier New", monospace;
	font-size: 55px;
	color: white;
}
</style>

<link rel="stylesheet" type="text/css" href="CSS/List.css">
<link href="css/index-styles.css" rel="stylesheet" />
<script src="https://use.fontawesome.com/releases/v5.15.4/js/all.js"
	crossorigin="anonymous"></script>
<!-- Google fonts-->
<link href="https://fonts.googleapis.com/css?family=Montserrat:400,700"
	rel="stylesheet" type="text/css" />
<link
	href="https://fonts.googleapis.com/css?family=Lato:400,700,400italic,700italic"
	rel="stylesheet" type="text/css" />

</head>
<body>
	<input type="hidden" id="status"
		value="<%=request.getAttribute("status")%>">
	<header>

		<div class="header">
			<h1>FOOD MASTER</h1>
		</div>

		<img
			style="border-radius: 0px; position: absolute; width: 100%; height: 100vh; background-color: #222"
			class="img-fluid"
			src="https://images.pexels.com/photos/914388/pexels-photo-914388.jpeg?cs=srgb&dl=pexels-igor-starkov-914388.jpg&fm=jpg"
			alt="..." />
	</header>

	<div class="bg">

		<br>

		<div class="container">

			<div class="col-lg-12">

				<div class="card">
					<div class="card-body">
						<div class="row">

							<div class="container">
								<h2 class="text-center">Member List</h2>

								<div style="margin-left: 860px" class="container text-left">

									<a href="Staff-insert.jsp" class="btn btn-secondary">ADD
										New Member</a>

								</div>
								<br>
								<table class="table table-bordered table table-hover"
									id="myTable">
									<thead class="thead-dark">
										<tr>
											<th>Staff ID</th>
											<th>Member Name</th>
											<th>Email</th>
											<th>Phone Number</th>
											<th>Address</th>
											<th>Type Of Work</th>
											<th>Action</th>


										</tr>
									</thead>
									<tbody>

										<c:forEach var="staff" items="${listStaff}">

											<tr>
												<td><c:out value="${staff.id}" /></td>
												<td><c:out value="${staff.name}" /></td>
												<td><c:out value="${staff.email}" /></td>
												<td><c:out value="${staff.phoneNumber}" /></td>
												<td><c:out value="${staff.address}" /></td>
												<td><c:out value="${staff.typeOfWork}" /></td>

												<td>
													<div class="btn-group">
														<label class="p-0 mr-1 my-0"> <a
															href="edit?id=<c:out value='${staff.id}' />"><button style="width:
																	type="submit" class="btn btn-primary">Edit</button></a>
														</label> <label class="p-0 my-0"> <a
															href="delete?id=<c:out value='${staff.id}' />"><button
																	type="submit" class="btn btn-danger" value="delete"
																	onclick="return confirm('Are you sure you want to delete?')">Delete</button></label>
													</div>
												</td>
											</tr>
										</c:forEach>

									</tbody>

								</table>

								<script>
									function myFunction() {
										// Declare variables
										var input, filter, table, tr, td, i, txtValue;
										input = document
												.getElementById("myInput");
										filter = input.value.toUpperCase();
										table = document
												.getElementById("myTable");
										tr = table.getElementsByTagName("tr");

										// Loop through all table rows, and hide those who don't match the search query
										for (i = 0; i < tr.length; i++) {
											td = tr[i]
													.getElementsByTagName("td")[0];
											if (td) {
												txtValue = td.textContent
														|| td.innerText;
												if (txtValue.toUpperCase()
														.indexOf(filter) > -1) {
													tr[i].style.display = "";
												} else {
													tr[i].style.display = "none";
												}
											}
										}
									}
								</script>

								<a href="index.jsp">
									<button type="button" class="btn btn-success">Back to
										Home</button>
								</a>

							</div>
						</div>

						<!-- FOOTER -->
						<footer class="container"> </footer>

					</div>

				</div>
			</div>
		</div>
	</div>
	<br />
	<script src="vendor/jquery/jquery.min.js"></script>
	<script src="js/main.js"></script>
	<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
	<link rel="stylesheet" href="alert/dist/sweetalert.css">

	<script type="text/javascript">
		var status = document.getElementById("status").value;
		if (status == "success") {
			swal("Congrats", "Account Created Successfully", "success");
		}
	</script>
</body>
</html>
