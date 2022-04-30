<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
<style type="text/css">
body {
	background: url("iamges/login.png");
}

.headert {
	background-color: teal;
	padding: 0px;
	text-align: center;
	font-family: "Lucida Console", "Courier New", monospace;
	font-size: 55px;
	color: white;
}

.well {
	background-color: white;
	padding: 10px;
	border-radius: 13px
}

.dtr {
	font-family: 'Oswald', sans-serif;
	font-weight: bold;
	font-size: 40px;
}
</style>
<title>FOOD MASTER</title>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
	integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
	crossorigin="anonymous">

<link rel="stylesheet" type="text/css" href="css/InsertForm.css">
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

<input type="hidden" id="status"
	value="<%=request.getAttribute("status")%>">
<body>


	<header>
		<div class="headert">food master</div>


		<img
			style="border-radius: 0px; position: absolute; width: 100%; height: 100vh; background-color: #222"
			class="img-fluid"
			src="https://images.pexels.com/photos/844297/pexels-photo-844297.jpeg?cs=srgb&dl=pexels-eberhard-grossgasteiger-844297.jpg&fm=jpg"
			alt="..." />

	</header>

	<div class="bg2">

		<br>
		<div style="width: 1200px; heigth: 500px; margin-left: -350px"
			class="containerme">

			<div class="col-lg-7 well">
				<div style="background-color: white" class="tit">
					<h2 class="dtr" align="center">Update Staff Member</h2>
				</div>

				<div style="background-color: rgba(0, 0, 0, 0.5);" class="card">
					<div
						style="background-color: rgba(0, 0, 0, 0.5); font-size: 18px; border-radius: 0px;"
						class="card-body">



						<c:if test="${staff != null}">
							<form action="update" method="post">
						</c:if>

						<caption>
							<h2>

								<c:if test="${staff == null}">

								</c:if>
							</h2>
						</caption>

						<c:if test="${staff != null}">
							<input type="hidden" name="id"
								value="<c:out value='${staff.id}' />" />
						</c:if>

						<fieldset class="form-group">
							<label style="color: white; font-family: 'Oswald', sans-serif;">Name</label>
							<input type="text" placeholder="Type Member name here"
								value="<c:out value='${staff.name}' />" class="form-control"
								name="name" required="required">
						</fieldset>

						<fieldset class="form-group">
							<label style="color: white; font-family: 'Oswald', sans-serif">Email</label>
							<input type="text" placeholder="Type Email here"
								value="<c:out value='${staff.email}' />" class="form-control"
								name="email" required="required">
						</fieldset>

						<fieldset class="form-group">
							<label style="color: white; font-family: 'Oswald', sans-serif;">Phone
								Number</label> <input type="text" placeholder="Type Phone Number here"
								value="<c:out value='${staff.phoneNumber}' />"
								class="form-control" name="phoneNumber" required="required">
						</fieldset>

						<fieldset class="form-group">
							<label style="color: white; font-family: 'Oswald', sans-serif;">Address</label>
							<input type="text" placeholder="Type Address here"
								value="<c:out value='${staff.address}' />" class="form-control"
								name="address" required="required">
						</fieldset>

						<fieldset class="form-group">
							<label style="color: white; font-family: 'Oswald', sans-serif;">Type
								Of Work</label> <select placeholder="Select the Type Of Work"
								name="typeOfWork" class="form-control"
								value="<c:out value='${staff.typeOfWork}'/>">

								<option>Waitor</option>
								<option>cook</option>
								<option>Driver</option>

							</select>
						</fieldset>




						<button type="submit" class="btn btn-info">UPDATE</button>
						<button type="reset" class="btn btn-info">CANCEL</button>

						<ul style="margin-left: 400px; margin-top: -35px"
							class="navbar-nav">
							<li><a href="<%=request.getContextPath()%>/list"
								class="btn btn-danger" class="nav-link">View All Stocks</a></li>
						</ul>

						</form>



					</div>

				</div>

			</div>

		</div>
		<footer style="width: 100%; margin-top: 90vh"
			class="footer text-center">
			<div style="width: 100%" class="container">
				<div style="width: 100%" class="row">
					<!-- Footer Location-->
					<div class="col-lg-4 mb-5 mb-lg-0">
						<h4 class="text-uppercase mb-4">Location</h4>
						<p class="lead mb-0">
							Colombo <br /> MO 65243
						</p>
					</div>
					<!-- Footer Social Icons-->
					<div class="col-lg-4 mb-5 mb-lg-0">
						<h4 class="text-uppercase mb-4">Around the Web</h4>
						<a class="btn btn-outline-light btn-social mx-1" href="#!"><i
							class="fab fa-fw fa-facebook-f"></i></a> <a
							class="btn btn-outline-light btn-social mx-1" href="#!"><i
							class="fab fa-fw fa-twitter"></i></a> <a
							class="btn btn-outline-light btn-social mx-1" href="#!"><i
							class="fab fa-fw fa-linkedin-in"></i></a> <a
							class="btn btn-outline-light btn-social mx-1" href="#!"><i
							class="fab fa-fw fa-dribbble"></i></a>
					</div>
					<!-- Footer About Text-->
					<div class="col-lg-4">
						<h4 class="text-uppercase mb-4">About Food Master</h4>
						<p class="lead mb-0">
							Come Again And join us our FB page</br>Thanks!
						</p>
					</div>
				</div>
			</div>
		</footer>
	</div>
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
>
