<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>GripeRight</title>


	<!-- Bootstrap Core CSS -->
	<!-- <link href="/css/bootstrap.min.css" rel="stylesheet"> -->

	<link rel="stylesheet" href="css/bootstrap.min.css">

	<!-- Custom CSS -->
	<link href="css/main.css" rel="stylesheet">


	<!-- Custom Fonts -->
	<link href="font-awesome/css/font-awesome.min.css" rel="stylesheet"
	type="text/css">

	<link
	href="http://fonts.googleapis.com/css?family=Lora:400,700,400italic,700italic"
	rel="stylesheet" type="text/css">

	<link href="http://fonts.googleapis.com/css?family=Montserrat:400,700"
	rel="stylesheet" type="text/css">

    <!--js stuff-->


    

</head>
<body>

	<nav class="navbar navbar-inverse navbar-fixed-top" role="navigation">
	<!-- Brand and toggle get grouped for better mobile display -->
	<div class="navbar-header">
		<button type="button" class="navbar-toggle" data-toggle="collapse"
			data-target=".navbar-ex1-collapse">
			<span class="sr-only">Toggle navigation</span> <span class="icon-bar"></span>
			<span class="icon-bar"></span> <span class="icon-bar"></span>
		</button>

		<a class="navbar-brand" href="index.jsp"><h4>
				<i class="fa fa-chevron-circle-up" aria-hidden="true"></i> Gripe
				Right
			</h4></a>


	</div>




	<div class="collapse navbar-collapse navbar-ex1-collapse">
		<ul class="nav navbar-nav side-nav">


			<li><a href="readyness.jsp"><i class="fa fa-fw fa-plane"></i><b>
						Aircraft Readyness</b></a></li>
			<li><a href="initiate.jsp"><i
					class="fa fa-fw fa-plus-square"></i> <b>Initiate Discrepancy
						Report</b></a></li>



			<li><a href="javascript:;" data-toggle="collapse"
				data-target="#stat"><i class="fa fa-fw fa-tachometer"></i> <b>Filter
						by Status </b><i class="fa fa-fw fa-caret-down"></i></a>
				<form action="sortDiscsByStat.do" method="GET">
					<ul id="stat" class="collapse">


						<li><button type="submit" name="status" value="2" class="dropDownBtn statUp"><b>Mission
									Capable</b></button></li>
						<li><button type="submit" name="status" value="1" class="dropDownBtn statPart"><b>Partial</b></button></li>
						<li><button type="submit" name="status" value="0" class="dropDownBtn statDown"><b>Down</b></button></li>

					</ul>
				</form>
				</li>
				
				<li><a href="javascript:;" data-toggle="collapse"
				data-target="#wc"><i class="fa fa-fw fa-list-alt"></i><b> Filter by Work Center</b><i class="fa fa-fw fa-caret-down"></i></a>
				<form action="sortDiscsByWorkCenter.do" method="GET">
					<ul id="wc" class="collapse">


						<li><button type="submit" name="status" value="13a" class="dropDownBtn statUp"><b>13A
									</b></button></li>
						<li><button type="submit" name="status" value="13b" class="dropDownBtn statUp"><b>13B</b></button></li>
						<li><button type="submit" name="status" value="120" class="dropDownBtn statUp"><b>120</b></button></li>
						<li><button type="submit" name="status" value="210" class="dropDownBtn statUp"><b>210</b></button></li>
						<li><button type="submit" name="status" value="220" class="dropDownBtn statUp"><b>220</b></button></li>
				
						

					</ul>
				</form>
				</li>
				
		
				
			<li class="randoBox">
			
			<form action="allDiscs.do" method="POST">


			<i class="fa fa-fw fa-globe rando "></i><button type="submit" class="dropDownBtn rando"><b>All Discrepancies</b></button>
		
			
			</form>
			</li>
				
				
				
				
				
	

						
						
			
	
					


		</ul>




	</div>

</nav>





	<div id="page-wrapper">
		<div class="container-fluid">

			<div class="row">

				<c:forEach var="discrepancy" items="${discrepancyList}">
					<form action="editDiscrep.do">
						<div class="panel panel-default">

							<div class="panel-body">
								<div class="col-xs-10">
									<span class="line">Work Center: <b>${discrepancy.workCenter}</b>
										System: <b>${discrepancy.system}</b>
									</span> <span class="line">Job Status: <b>${discrepancy.jobStat}</b></span><span
										class="line"> A/C Status: <b>${discrepancy.status}</b></span>
								</div>
								<div class="col-xs-1"></div>
								<button type="submit" name="mcn" value="${discrepancy.mcn}"
									class="btn btn-default editButton col-xs-1 ">Edit</button>
							</div>

						</div>
					</form>

				</c:forEach>
			</div>
		</div>




	</div>











	<!-- 





	





	<div class="row">
		<div class="col-xs-1"></div>
		<form action="sortDiscsByWorkCenter.do" method="GET">
			<div class="form-group col-xs-8 text-center">
				<select name="status" class="form-control">

					<option value=" ">Filter by WorkCenter</option>
					<option value="13a">AMEs</option>
					<option value="13b">PRs</option>
					<option value="110">Power Plants</option>
					<option value="120">Airframes</option>
					<option value="210">Technicians</option>
					<option value="220">Electricians</option>

				</select>


			</div>

			<button type="submit" name="option" value="submit"
				class=" btn col-xs-2">go</button>
		</form>
		<div class="col-xs-1"></div>




	</div>





	<form action="allDiscs.do" method="POST">
		<div>


			<button type="submit">All Discrepancies</button>
		</div>
	</form> -->

	<!-- jQuery -->
<script src="https://code.jquery.com/jquery-1.12.0.min.js"></script>

<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js" integrity="sha384-0mSbJDEHialfmuBBQP6A4Qrprq5OVfW37PRR3j5ELqxss1yVqOtnepnHVP9aJ7xS" crossorigin="anonymous"></script>

<script src="js/bootstrap-datepicker1.js"></script>




</body>
</html>