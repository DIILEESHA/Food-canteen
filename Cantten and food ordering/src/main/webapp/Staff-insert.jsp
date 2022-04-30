<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
<style type="text/css">
body {
	background: url("iamges/login.png");
}

.header {
	background-color: #2C3E50;
	padding: 25px;
	text-align: center;
	font-family: "Lucida Console", "Courier New", monospace;
	font-size: 45px;
	color: white;
	width:100%
}


.well {
	background-color: white;
	padding: 10px;
	border-radius: 13px
}

.dtr {
	font-family: 'Oswald', sans-serif;
	font-weight: bold;
	font-size: 25px;
	color: white;
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
		<div class="header">
			<h1>FOOD MASTERY</h1>
		</div>


		<img
			style="position:absolute;width:100vw;height:100vh;opacity: 1""		
			src="https://images.pexels.com/photos/914388/pexels-photo-914388.jpeg?cs=srgb&dl=pexels-igor-starkov-914388.jpg&fm=jpg"
			alt="..." />

	</header>
	<br/>

	<div class="bg2">

		<br>
		<div style="width: 1200px; heigth: 500px; margin-left: -390px"
			class="containerme">

			<div style="background-color:rgba(0,0,0,0.5); margin-left: -39px"
				class="col-lg-8 well">
				<div  class="tit">
					<h2 style="text-align: center;
	font-family: "Lucida Console", "Courier New", monospace;
	font-size: 2x;
	color: white" class="dtr" align="center">ADD STAFF MEMBERS</h2>
				</div>

				<div style="background-color: rgba(0, 0, 0, 0.6);" class="card">
					<div
						style="background-color: ; font-size: 18px; border-radius: 0px;"
						class="card-body">



						<c:if test="${staff != null}">
							<form action="update" method="post">
						</c:if>
						<c:if test="${staff == null}">
							<form action="insert" method="post">
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
							<label
								style="color: white; font-family: 'Oswald', sans-serif; font-weight: bold">Name</label>
							<input type="text" placeholder="Type Member Name Here"
								value="<c:out value='${staff.name}' />" class="form-control"
								name="name" required="required ">
						</fieldset>

						

						<fieldset class="form-group">
							<label
								style="color: white; font-family: 'Oswald', sans-serif; font-weight: bold">Mobile</label>
							<input type="text" placeholder="Type Phone Number Here"
								value="<c:out value='${staff.phoneNumber}' />"
								class="form-control" name="phoneNumber"
								required="required maxlength=" 10" required
								pattern="[0]{1}[0-9]{9}">
						</fieldset>

						<fieldset class="form-group">
							<label
								style="color: white; font-family: 'Oswald', sans-serif; font-weight: bold">Address</label>
							<input type="text" placeholder="Type Address Here"
								value="<c:out value='${staff.address}' />" class="form-control"
								name="address" required="required">
						</fieldset>

						<fieldset class="form-group">
							<label
								style="color: white; font-family: 'Oswald', sans-serif; font-weight: bold">Type
								Of Work</label> <select placeholder="SELECT WORK TYPE"
								name="typeOfWork" class="form-control"
								value="<c:out value='${staff.typeOfWork}'/>">

								<option>Waitor</option>
								<option>cook</option>
								<option>Driver</option>

							</select>
						</fieldset>




						<button
							style="letter-spacing: 1px; width: 140px; font-weight: bold; color: white;margin:0px 5px"
							type="submit" class="btn btn-info">Add</button>
						<a href="index.jsp">
							<button
								style="letter-spacing: 1px; width: 140px; font-weight: bold; color: white"
								type="button" style="margin-right:40px" "  class="btn btn-info">Back</button>
						</a>

						<ul style="width: 250px; margin-left: 580px; margin-top: -41px"
							class="navbar-nav">
							<li><a href="<%=request.getContextPath()%>/list"
								class="btn btn-danger" class="nav-link">View All Members</a></li>
						</ul>
						

						</form>



					</div>

				</div>

			</div>

		</div>

	</div>
	<!-- JS -->

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
