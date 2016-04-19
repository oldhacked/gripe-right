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
  <!-- Navigation -->
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


        <li><button type="submit" name="status" value="Mission Capable" class="dropDownBtn statUp"><b>Mission
         Capable</b></button></li>
         <li><button type="submit" name="status" value="Partial" class="dropDownBtn statPart"><b>Partial</b></button></li>
         <li><button type="submit" name="status" value="Down" class="dropDownBtn statDown"><b>Down</b></button></li>

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






  <form  action="updateDisc.do" method="POST">

    <div class="row">
      <div class="col-xs-12">

        <div class="col-xs-12 col-md-6">

          <div class="input text-center ">
           <input type="text" name="mcn" value="${discrepancy.mcn}" class="form-control formNoBrdrSpacing">

          </div>

        </div>

        <!--w/c-->


        
          <div class="form col-xs-12 col-md-6 ">

                    <select name="workCenter" class="form-control formNoBrdrSpacing">
                        <option value="${discrepancy.workCenter}"> ${discrepancy.workCenter}</option>
                        <option value="13a">13A</option>
                        <option value="13b">13B</option>
                        <option value="110">110</option>
                        <option value="120">120</option>
                        <option value="210">210</option>
                        <option value="220">220</option>

                    </select>


                </div>


        <!--System-->

        <div class="col-xs-12 col-md-6">

          <div class="input text-center">
           <input type="text" name="system" value="${discrepancy.system}" class="form-control formNoBrdrSpacing">


          </div>

        </div>


        <!--Status-->





          <div class="form col-xs-12 col-md-6">

                    <select name="status" class="form-control formNoBrdrSpacing">
                        <option value="${discrepancy.status}">${discrepancy.status}</option>
                        <option value="2">Up</option>
                        <option value="1">Partial</option>
                        <option value="0">Down</option>
                    </select>                            

                </div>

      

        
         <div class="form col-xs-12 col-md-6">


                    <select name="jobStat" class="form-control formNoBrdrSpacing" id="">
                        <option value="${discrepancy.jobStat}">${discrepancy.jobStat}</option>
                        <option value="Initiated">Initiated</option>
                        <option value="In Work">In Work</option>
                        <option value="Awaiting Parts">Awaiting Parts</option>
                        <option value="Static">Static</option>
                        <option value="Job Complete">Job Complete</option>
                    </select>

                </div>







        <div class="col-xs-12 col-md-6">

          <div class="input text-center">
           <input type="text" name="hours" value="${discrepancy.hours}" class="form-control formNoBrdrSpacing">
          </div>

        </div>



      </div>
    </div>  <!-- end first "class row" till hours-->








    <div class="row">
      <div class="col-xs-12">




        <div class="col-xs-12 col-md-6 datePckr">

         <div name="startDate" class="input date" data-date="${discrepancy.startDate}" data-date-format="dd-mm-yyyy">  
           <input  class="form-control formNoBrdrSpacing" id="dp3" type="text" value="${discrepancy.startDate}"/>  

         </div>

       </div>

       <div class="col-xs-12 col-md-6 datePckr">

         <div name="endDate"class="input date" data-date="${discrepancy.endDate}" data-date-format="dd-mm-yyyy">  
           <input  class="form-control formNoBrdrSpacing" id="dp4" type="text" value="${discrepancy.endDate}"/>  

         </div>

       </div>


     </div>
   </div>

   <!--end second 'class row'-->

   <div class="row">
    <div class="col-xs-12">





     <div class="col-xs-12 col-md-6">

      <div class="input text-center">
        <input type="text" name="gripe" value="${discrepancy.gripe}" class="form-control formNoBrdrSpacing">

      </div>

    </div>

    <div class="col-xs-12 ">

      <div class="input text-center formNoBrdrSpacing">
<textarea type="text" name="discrepancy" class="form-control formNoBrdrSpacing" rows="8">${discrepancy.discrepancy}</textarea>
      </div>

    </div>
    <div class="col-xs-12 ">

      <div class="input text-center formNoBrdrSpacing">
      <textarea type="text" name="resolution" class="form-control formNoBrdrSpacing" rows="8">${discrepancy.resolution}</textarea>
      </div>
 
    </div>



    <section id="" class="text-center">


      <div class="col-xs-12">


        <ul class="list-inline">
          <li>
           <button type="submit" value="updateDisc" class=" btn btn-default">submit</button>
         </li>

       </form>



        <form action="deleteDisc.do" method="POST">
         <li>
         <button type="submit" name="mcn" value="${discrepancy.mcn}" class=" btn btn-default">delete</button>
        </li>
      </form>

    </ul>
  </div>





</div>

</div>








</div><!--form container-->
</div>
</div>








<script src="https://code.jquery.com/jquery-1.12.0.min.js"></script>

<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js" integrity="sha384-0mSbJDEHialfmuBBQP6A4Qrprq5OVfW37PRR3j5ELqxss1yVqOtnepnHVP9aJ7xS" crossorigin="anonymous"></script>

<script src="js/bootstrap-datepicker1.js"></script>



<script src="js/grayscale.js"></script>
</body>

</html>

































