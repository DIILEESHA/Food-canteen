<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
<style type="text/css">
.header {
	background-color: #000099;
	padding: 30px;
	text-align: center;
	font-size: 35px;
	color: white;
}

.well {
	background-color: #4dff88;
	padding: 10px;
	border-radius: 13px
}
</style>
<title>SunSet Hotel Management</title>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
	integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
	crossorigin="anonymous">

<link rel="stylesheet" type="text/css" href="CSS/InsertForm.css">

</head>
<body>


	<header>

		<div class="header">
			<h1>SunSet Hotel Management</h1>
		</div>

	</header>

	<div class="bg">

		<br>
		<div class="container">

			<div class="col-lg-6 well">
				<div class="tit">
					<h2 align="center">Update Staff Member</h2>
				</div>

				<div class="card">
					<div class="card-body">


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
							<label>Member Name</label> <input type="text"
								placeholder="Type stock name here"
								value="<c:out value='${staff.name}' />" class="form-control"
								name="name" required="required">
						</fieldset>

						<fieldset class="form-group">
							<label>Email</label> <input type="text"
								placeholder="Type brand here"
								value="<c:out value='${staff.email}' />" class="form-control"
								name="email" required="required">
						</fieldset>


						<fieldset class="form-group">
							<label>Phone Number</label> <input type="text"
								placeholder="Type quantity here"
								value="<c:out value='${staff.phoneNumber}' />"
								class="form-control" name="phoneNumber" required="required">
						</fieldset>


						<fieldset class="form-group">
							<label>Address</label> <input type="text"
								placeholder="Type Address here"
								value="<c:out value='${staff.address}' />" class="form-control"
								name="address" required="required">
						</fieldset>

						<fieldset class="form-group">
							<label>Type Of Work</label> <select
								placeholder="Select the Type Of Work" name="typeOfWork"
								class="form-control"
								value="<c:out value='${staff.typeOfWork}'/>">

								<option>Sales Manager</option>
								<option>General Manager</option>
								<option>HR Manager</option>

							</select>
						</fieldset>



						<button type="submit" class="btn btn-info">ADD</button>
						<button type="reset" class="btn btn-info">CANCEL</button>
						<br />
						<br />
						<ul class="navbar-nav">
							<li><a href="<%=request.getContextPath()%>/list"
								class="btn btn-secondary" class="nav-link">View All Member</a></li>
						</ul>

						</form>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>
>
