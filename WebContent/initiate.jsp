<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html lang="en">

<head>
	<title>GripeRight</title>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible"
	content="IE=edge text/html; charset=UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<meta name="Skill Distillery classwork" content="">
	<meta name="wezdez" content="">

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

    <div id="formContainer" class="jumbotron">
         <div class="row">
            <div class="col-xs-12 " id="acTitle">
                <h3 class="text-center">Aircraft: 46</h3>
            </div>
        </div>

    <!--mcn-->
    
    
    
    
 <!--    <div class="row">
		<div class="col-xs-1"></div>
		<form action="sortDiscsByStat.do" method="GET">
			<div class="form-group col-xs-8 text-center">
				<select name="status" class="form-control">

					<option value=" ">Filter by Status</option>
					<option value="2">Mission Capable</option>
					<option value="1">Partial</option>
					<option value="0">Down</option>

				</select>


			</div>

			<button type="submit" name="option" value="submit"
				class=" btn col-xs-2">go</button>
		</form>
		<div class="col-xs-1"></div>

	</div>
     -->
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    <form action="newDisc.do" method="POST">
        <div class="row">
            <div class="col-xs-12">

                <div class="col-xs-12 col-md-6">

                    <div class="input text-center ">
                        <input type="text" name="mcn" placeholder="MCN#" class="form-control formNoBrdrSpacing">
					
                    </div>

                </div>

                <!--w/c-->

                <div class="form col-xs-12 col-md-6 ">

                    <select name="workCenter" class="form-control formNoBrdrSpacing" id="">
                        <option>Work Center</option>
                        <option value="13A">13A</option>
                        <option value="13B">13B</option>
                        <option value="110">110</option>
                        <option value="120">120</option>
                        <option value="210">210</option>
                        <option value="220">220</option>

                    </select>


                </div>


                <!--System-->

                <div class="col-xs-12 col-md-6">

                    <div class="input text-center">
                        <input type="text" name="system" placeholder="System" class="form-control formNoBrdrSpacing">
                       

                    </div>

                </div>


                <!--Status-->





                <div class="form col-xs-12 col-md-6">

                    <select name="status" class="form-control formNoBrdrSpacing" id="">
                        <option>A/C Status</option>
                        <option value="2">Up</option>
                        <option value="1">Partial</option>
                        <option value="0">Down</option>
                    </select>                            

                </div>

                <div class="form col-xs-12 col-md-6">


                    <select name="jobStat" class="form-control formNoBrdrSpacing" id="">
                        <option>Job Status</option>
                        <option value="Initiated">Initiated</option>
                        <option value="In Work">In Work</option>
                        <option value="Awaiting Parts">Awaiting Parts</option>
                        <option value="Static">Static</option>
                        <option value="Job Complete">Job Complete</option>
                    </select>

                </div>







                <div class="col-xs-12 col-md-6">

                    <div class="input text-center">
                        <input type="text" name="hours" placeholder="Hours" class="form-control formNoBrdrSpacing">
                    </div>

                </div>



            </div>
        </div>  <!-- end first "class row" till hours-->








        <div class="row">
            <div class="col-xs-12">




                <div class="col-xs-12 col-md-6 datePckr">

                   <div name="startDate"class="input date" data-date="" data-date-format="dd-mm-yyyy">  
                       <input class="form-control formNoBrdrSpacing" id="dp3" type="text" value="Start Date"/>  

                   </div>

               </div>

               <div class="col-xs-12 col-md-6 datePckr">

                   <div name="endDate"class="input date" data-date="" data-date-format="dd-mm-yyyy">  
                       <input class="form-control formNoBrdrSpacing" id="dp4" type="text" value="End Date"/>  

                   </div>
      
               </div>


           </div>
       </div>

       <!--end second 'class row'-->

       <div class="row">
        <div class="col-xs-12">





           <div class="col-xs-12 col-md-6">

            <div class="input text-center">
                <input type="text" name="gripe" placeholder="Title" class="form-control formNoBrdrSpacing">

            </div>

        </div>

        <div class="col-xs-12 ">

            <div class="input text-center formNoBrdrSpacing">
                <textarea type="text" name="discrepancy" placeholder="Discrepancy" class="form-control formNoBrdrSpacing" rows="8"></textarea>
            </div>

        </div>
        <div class="col-xs-12 ">

            <div class="input text-center formNoBrdrSpacing">
                <textarea type="text" name="resolution" placeholder="Resolution" class="form-control formNoBrdrSpacing" rows="8"></textarea>
            </div>

        </div>



      


            <div class="col-xs-12">


              
                   

                
                        <button type="submit" value="addDiscrepancy"
                        class=" btn btn-default floatR smargBottom">Submit</button>
                    
                    
                  
         
      </div>




</div>

</div>
</form>
</div><!--form container-->
</div>
</div>








<script src="https://code.jquery.com/jquery-1.12.0.min.js"></script>

<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js" integrity="sha384-0mSbJDEHialfmuBBQP6A4Qrprq5OVfW37PRR3j5ELqxss1yVqOtnepnHVP9aJ7xS" crossorigin="anonymous"></script>

<script src="js/bootstrap-datepicker1.js"></script>




<!-- jQuery -->
<!-- <script src="jquery.js"></script> -->

<!-- Bootstrap Core JavaScript -->
<!--<script src="bootstrap.min.js"></script>-->

 <!-- Plugin JavaScript 
 <script src="jquery.easing.min.js"></script>-->

 <!-- Custom Theme JavaScript -->
 <script src="js/grayscale.js"></script>
</body>

</html>








