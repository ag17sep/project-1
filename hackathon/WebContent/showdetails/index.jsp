
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
<html lang="en">
<% 
String nemail=(String)session.getAttribute("newemail");

%>
<!-- Head --
<head>

<title>Edit Page</title>

<!-- Meta-Tags -->
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<meta name="keywords" content="Multi Tabs Resume Widget Responsive, Login Form Web Template, Flat Pricing Tables, Flat Drop-Downs, Sign-Up Web Templates, Flat Web Templates, Login Sign-up Responsive Web Template, Smartphone Compatible Web Template, Free Web Designs for Nokia, Samsung, LG, Sony Ericsson, Motorola Web Design" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<!-- //Meta-Tags -->

<!-- Custom-Style-Sheet -->
<link rel="stylesheet" href="css/style.css" type="text/css" media="all">
<!-- //Custom-Style-Sheet -->

<!-- Fonts -->
<link rel="stylesheet" href="//fonts.googleapis.com/css?family=Roboto:100,300,400,500,700,900" type="text/css" media="all">
<link rel="stylesheet" href="//fonts.googleapis.com/css?family=Montserrat:400,700"			   type="text/css" media="all">
<!-- //Fonts -->

<!-- Default-JavaScript --><script type="text/javascript" src="js/jquery.min.js"></script>
<style media="screen">
	#r8
	{
		margin-top: 7px;
	}
</style>
</head>
<!-- //Head -->



	<!-- Body -->
	<body>

		<h1>Edit Info</h1>


		<div class="containerw3layouts-agileits">

			<div id="verticalTab" class="resp-vtabs w3-agile" style="display: block; width: 100%; margin: 0px;">

				<ul class="resp-tabs-list agileits-w3layouts">
					<li class="resp-tab-item"><span>About</span></li>
					<li class="resp-tab-item"><span>Description</span></li>
					<li class="resp-tab-item agileinfo"><span>Images</span></li>
				</ul>
				
<% 

String lang=(String)session.getAttribute("val");
		String s=nemail;
		Class.forName("com.mysql.jdbc.Driver");
		Connection con=DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/hackathon","jatin","1234567");
		String sql="select * from "+lang+"";
		PreparedStatement ps=con.prepareStatement(sql);	
		String s2="img",s5=s2,j="";
		int i=1,k=1;
		
		ResultSet rs=ps.executeQuery(sql);
		while(rs.next())
		{
			if(rs.getString("email").equals(s))
			{
				String s1="";
				if(rs.getString("rew")==null)
				{
					s1="NA";
				}
				else
				{
					s1=rs.getString("rew");
				}
				%>
				<div class="resp-tabs-container">

					<div class="resp-tab-content">
						<div class="agileabout">
							<div class="agileabout-info">
								<ul>
									<li><div class="li1">Name</div><div class="li2">:</div><div class="li3"><%=rs.getString("name") %></div><div class="clearfix"></div></li>
									<li><div class="li1">Email</div><div class="li2">:</div><div class="li3"><%=rs.getString("alemail") %></div><div class="clearfix w3-agileits"></div></li>
									<li><div class="li1">Phone</div><div class="li2">:</div><div class="li3"><%=rs.getString("num") %></div><div class="clearfix"></div></li>
									<li><div class="li1">Location</div><div class="li2 agileinfo">:</div><div class="li3"><%=rs.getString("loc") %></div><div class="clearfix"></div></li>
									<li><div class="li1">Reward</div><div class="li2">:</div><div class="li3"><%=s1%>
				</div><div class="clearfix"></div></li>
								</ul>
							 </div>
							<div class="clear"></div>
						</div>
					</div>
					<div class="resp-tab-content">
					<div class="work">
					<div class="work-info agileits-w3layouts">
					<%=rs.getString("descr") %>
					</div>
					</div>
					</div>
					
					<div class="resp-tab-content">
					
										
			<%for(int l=0;l<3;l++)
			{
				String s4=s5+i;
				if(rs.getString(s2)!=null)
				{
					
						String imgName=rs.getString(s2);
				       BufferedImage bImage = ImageIO.read(new File(imgName));//give the path of an image
				        ByteArrayOutputStream baos = new ByteArrayOutputStream();
				        ImageIO.write( bImage, "jpg", baos );
				        baos.flush();
				        byte[] imageInByteArray = baos.toByteArray();
				        baos.close();                                   
				        String b64 = DatatypeConverter.printBase64Binary(imageInByteArray);
				    
				    %>
        			<img class="image img-thumbnail " src="data:image/jpg;base64, <%=b64%>" width="200px" height="200px">
	 				
			        <%
					}
			        s2=s4;
					i++;
					
				}
			 	%>
					</div>
				</div>
				<%
				
			}
		}		
		 %>
			
				<div class="clear w3-agile"></div>

			</div>
				<h3 id="r8" align="right"><a href="../lost.jsp">Edit details-->></a></h3>
		
	</div>
		




		<!-- Necessary-JavaScript-Files-&-Links -->

			<!-- Tabs-JavaScript -->
				<script src="js/easyResponsiveTabs.js"></script>
				<script type="text/javascript">
					$(document).ready(function () {
						$('#horizontalTab').easyResponsiveTabs({
							type: 'default',
							width: 'auto',
							fit: true,
							closed: 'accordion',
							activate: function(event) {
								var $tab = $(this);
								var $info = $('#tabInfo');
								var $name = $('span', $info);
								$name.text($tab.text());
								$info.show();
							}
						});
						$('#verticalTab').easyResponsiveTabs({
							type: 'vertical',
							width: 'auto',
							fit: true
						});
					});
				</script>
			<!-- //Tabs-JavaScript -->


		<!-- //Necessary-JavaScript-Files-&-Links -->



	</body>
	<!-- //Body -->

</html>
