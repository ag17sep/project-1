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
session.setAttribute("val","lost");
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
<link rel="stylesheet" href="css/images.css">
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
      <a class="navbar-brand" href="#">WebSiteName</a>
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
        <input type="email" name="ema" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Enter email">
        <!-- <small id="emailHelp" class="form-text text-muted">We'll never share your email with anyone else.</small> -->
      </div>
      <div class="form-group">
        <label for="exampleInputPhone1">Number</label>
        <input type="tel" class="form-control" name="num" maxlength="11" id="exampleInputPhone1"  placeholder="Enter your Number">
      </div>
      <div class="form-group">
        <label for="exampleInputName1">Name</label>
        <input type="text" class="form-control" name="name" id="exampleInputName1" placeholder="Enter your full name">
      </div>
      <div class="form-group">
        <label for="exampleInputLocation1">Location</label>
        <input type="text" class="form-control" name="loc" id="exampleInputLocation1"  placeholder="Enter the location where you think you might have lost it">
      </div>
      <button type="submit"id="submit" class="btn btn-primary btn-lg">Submit</button>
    
 
   </form>
    
  </div>
  <div id="section2" class="container-fluid">
    <h1>Description</h1>
    <h5>ENTER ANY ADDITIONAL DETAILS YOU MAY WANT TO ENTER :</h5>
    <form action="discription.jsp">
      <div class="form-group">
        <textarea maxlength="500 "name="descr" rows="16" cols="200"></textarea>
      </div>
      <button type="submit" id="submit2" class="btn btn-primary btn-lg">Submit</button>
    </form>

  </div>
  <div id="section3" class="container-fluid">
    <h1>Images</h1>
    <form action="upload.jsp" ENCTYPE="multipart/form-data" METHOD=POST>
      <input type="file" name="file" id="tohide"  onchange="readURL(this);">
      <button type="button" class="btn btn-primary" onclick="document.getElementById('tohide').click()">Upload</button>
      <input type="submit" id="h" onchange="readURL(this);">
      <button type="button" class="btn btn-danger" onclick="document.getElementById('h').click()">Submit</button>      
      <button type="button" class="btn btn-danger" href="login.jsp"">Delete</button>
      
      </form>
     	
     	<br><br>
		<table>
		<tr>
		<%
		String s2="img",s5=s2;
		int i=1;
		Connection connection = null;
	String connectionURL = "jdbc:mysql://localhost:3306/hackathon";
	PreparedStatement psmnt = null;
	try{
	Class.forName("com.mysql.jdbc.Driver").newInstance();
	connection = DriverManager.getConnection(connectionURL, "jatin", "1234567");
	psmnt = connection.prepareStatement("select * from lost");
	ResultSet rs=psmnt.executeQuery("select * from lost");
	while(rs.next())
	{
		if(rs.getString("email").equals("demo@gmail.com"))
		{
			while(rs.getString(s2)!=null)
			{
				String s4=s5+i;
				
				String imgName=rs.getString(s2);
			      
			       BufferedImage bImage = ImageIO.read(new File(imgName));//give the path of an image
			        ByteArrayOutputStream baos = new ByteArrayOutputStream();
			        ImageIO.write( bImage, "jpg", baos );
			        baos.flush();
			        byte[] imageInByteArray = baos.toByteArray();
			        baos.close();                                   
			        String b64 = DatatypeConverter.printBase64Binary(imageInByteArray);
			        %>
			        <td><img  class="img-responsive" src="data:image/jpg;base64, <%=b64%>" width="200px" heigth="200px"/></td>                            
			        
	 				</tr>
			        <% 
			        s2=s4;
					
					i++;
				}
		
			}
		
	}
	}
	
	catch(IOException e){
	    e.printStackTrace();
	}
	
	 %>
	 </table>    
  </div>


<!-- <div id="section4" class="container-fluid">
  <h1>Section 4 </h1>
  <p>Try to scroll this section and look at the navigation bar while scrolling! Try to scroll this section and look at the navigation bar while scrolling!</p>
  <p>Try to scroll this section and look at the navigation bar while scrolling! Try to scroll this section and look at the navigation bar while scrolling!</p>
</div> -->
<
</body>
</html>
