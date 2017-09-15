<!DOCTYPE html>

    <%@page import="java.io.File"%>
    <%@page import="java.io.IOException"%>
    <%@page import="java.awt.image.BufferedImage"%>
    <%@page import="javax.imageio.ImageIO"%>
    <%@page import="java.io.ByteArrayOutputStream"%>

    <%@page import="java.math.BigInteger"%>
    <%@page import="javax.xml.bind.DatatypeConverter"%>
    <%@page import="java.awt.image.BufferedImage"%>
<%@page import="java.sql.*"%>

<%
String val=(String)session.getAttribute("val");
String email=(String)session.getAttribute("email");
%>
<html>
<head>
  <title>Lost</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  <link class="jsbin" href="http://ajax.googleapis.com/ajax/libs/jqueryui/1/themes/base/jquery-ui.css" rel="stylesheet" type="text/css" />
<script class="jsbin" src="http://ajax.googleapis.com/ajax/libs/jquery/1/jquery.min.js"></script>
<script class="jsbin" src="http://ajax.googleapis.com/ajax/libs/jqueryui/1.8.0/jquery-ui.min.js"></script>
<link rel="stylesheet" href="lostandfont/css/images.css">
<script src="Lost.js">

</script>
<meta charset=utf-8 />
<title>JS Bin</title>
<!--[if IE]>
  <script src="http://html5shiv.googlecode.com/svn/trunk/html5.js"></script>
<![endif]--><style >
article, aside, figure, footer, header, hgroup,
menu, nav, section { display: block; }
</style>

  <style>
  body {
      position: relative;
  }
  .h
  {
  display:none;
  }
  #h1
  {
  display:none;
  }
  #play{
    position:relative;
    transition: .5s ease;
    top: -33px;
    left: 150px;
    right: -420px;
    bottom: -191px;
}
  #section1 {padding-top:50px;height:700px;color: #fff; background-color: #FFE1A8;}
  #section2 {padding-top:50px;height:700px; background-color: #E26D5C;}
  #section3 {padding-top:50px;height:700px;color: #fff; background-color: #472D30;}
  #description {height: 500px; width: 1000px; }
  /*#section4 {padding-top:50px;height:500px;color: #fff; background-color: #00bcd4;}*/
  /*#section42 {padding-top:50px;height:500px;color: #fff; background-color: #009688;}*/

  </style>
</head>
<body data-spy="scroll" data-target=".navbar" data-offset="50">

<nav class="navbar navbar-inverse navbar-fixed-top">
  <div class="container-fluid">
    <div class="navbar-header">
        <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
          <span class="icon-bar"></span>
          <span class="icon-bar"></span>
          <span class="icon-bar"></span>
      </button>
      <a class="navbar-brand" href=<%=val+"mainpage.jsp"%>><%=val%></a>
    </div>
    <div>
      <div class="collapse navbar-collapse" id="myNavbar">
        <ul class="nav navbar-nav">
          <li><a href="#section1">Contact</a></li>
          <li><a href="#section2">Description</a></li>
          <li><a href="#section3">Images</a></li>
          <!-- <li><a href="#section4"></a></li> -->
              <!-- <li><a href="#section42">Section 4-2</a></li> -->
            </ul>
          </li>
        </ul>
      </div>
    </div>
  </div>
</nav>
  <div id="section1" class="container-fluid">
    <h1>Contact</h1>
    <form action="addloc.jsp">
      <div class="form-group">
        <label for="exampleInputEmail1">Email address</label>
        <input type="email" name="ema" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Enter email" required>
        <!-- <small id="emailHelp" class="form-text text-muted">We'll never share your email with anyone else.</small> -->
      </div>
      
      <div class="form-group">
        <label for="exampleInputName1">Name</label>
        <input type="text" class="form-control" name="name" id="exampleInputName1" placeholder="Enter your full name" required>
      </div>
      
      <div class="form-group">
        <label for="exampleInputPhone1">Contact Number</label>
        <input type="tel" class="form-control" name="num" maxlength="11" id="exampleInputPhone1"  placeholder="Enter your Number" required>
      </div>
      
      
      <div class="form-group">
        <label for="exampleInputLocation1">Location</label>
        
        <input type="text" class="form-control" name="loc" id="exampleInputLocation1"  placeholder="Enter the loaction where you found/lost it" required>
      </div>
      
      <div class="form-group">
        <label for="exampleInputPhone1">Rewards</label>
        <input type="number" class="form-control" name="num" maxlength="11" id="exampleInputPhone1"  placeholder="Any rewards">
      </div>
      <br>
      <button type="submit"id="submit" class="btn btn-primary btn-lg">Submit</button>
    
    	
   </form>
    
  </div>
  <div id="section2" class="container-fluid">
    <h1>Description</h1>
    <h5>ENTER ANY ADDITIONAL DETAILS YOU MAY WANT TO ENTER :</h5>
    <form action="description.jsp">
      <div class="form-group">
        <textarea maxlength="500 "name="descr" rows="16" cols="200"></textarea>
      </div>
      <button type="submit" id="submit2" class="btn btn-primary btn-lg">Submit</button>
    	
    </form>

  </div>
  <div id="section3" class="container-fluid">
    <h1>Images</h1>
    <br><br><br>
    <form action="upload.jsp" ENCTYPE="multipart/form-data" METHOD=POST>
      <input type="file" name="file" id="tohide"  onchange="readURL(this);">
      <button type="button" class="btn btn-primary" onclick="document.getElementById('tohide').click()">Upload</button>
      <input type="submit" id="h" onchange="readURL(this);">
      <button type="button" class="btn btn-success" onclick="document.getElementById('h').click()">Submit</button>      
      
      </form>
      
     	<form action="delete.jsp">
		
     	<input type="submit" id="h1" onchange="readURL(this);">
      <button type="button" class="btn btn-danger" id="play" onclick="document.getElementById('h1').click()">Delete</button>      
      	<br><br>
		
      <div class="container-fluid">
      <div class="col">
      <div class="row">
    	<%
		String s2="img",s5=s2,j="";
		int i=1,k=1;
		Connection connection = null;
	String connectionURL = "jdbc:mysql://localhost:3306/hackathon";
	PreparedStatement psmnt = null;
	try{
	Class.forName("com.mysql.jdbc.Driver").newInstance();
	connection = DriverManager.getConnection(connectionURL, "jatin", "1234567");
	psmnt = connection.prepareStatement("select * from "+val+"");
	ResultSet rs1=psmnt.executeQuery("select * from "+val+"");
	String email1=(String)session.getAttribute("newemail");

	while(rs1.next())
	{
		if(rs1.getString("email").equals(email1))
		{
			for(int l=0;l<3;l++)
			{
				String s4=s5+i;
				if(rs1.getString(s2)!=null)
				{
					String imgName=rs1.getString(s2);
      
				       BufferedImage bImage = ImageIO.read(new File(imgName));//give the path of an image
				        ByteArrayOutputStream baos = new ByteArrayOutputStream();
				        ImageIO.write( bImage, "jpg", baos );
				        baos.flush();
				        byte[] imageInByteArray = baos.toByteArray();
				        baos.close();                                   
				        String b64 = DatatypeConverter.printBase64Binary(imageInByteArray);
				    
				    %>
        			<div class="col-md-2"><img class="image img-thumbnail img-responsive" src="data:image/jpg;base64, <%=b64%>" width="600px" height="600px"></div>
	 				<div class="col-md-2"><input type="checkbox" name="delete" value=<%=s2%>></div>
	        		
			        <%
				}
				
			        s2=s4;
					i++;
				}
				break;	
			}
	
		}
				%>
    </div>
</div>

	<div>
</form>
<%

	}
	
	catch(IOException e){
	    e.printStackTrace();
	}
	
	 %>




</body>
</html>
