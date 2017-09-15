<%@page import="java.sql.*"%>
<%
String u="",v="",n,e,r;
u=request.getParameter("loc");
v=request.getParameter("num");
e=request.getParameter("ema");
n=request.getParameter("name");

r=request.getParameter("rew");
String email=(String)session.getAttribute("email");

String lang=(String)session.getAttribute("val");
String altemail=(String)session.getAttribute("newemail");

	Class.forName("com.mysql.jdbc.Driver");
	Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/hackathon","jatin","1234567");
	
	
	PreparedStatement psmnt = con.prepareStatement("update "+lang+" set loc=?,num=?,name=?,alemail=?,rew=? where email='"+altemail+"'");
	   
	
	psmnt.setString(1,u);
	psmnt.setString(2,v);
	psmnt.setString(3,n);
	psmnt.setString(4,e);
	psmnt.setString(5,r);
	
	int rs=psmnt.executeUpdate();

	%>
	<script>
	alert("Added");
	</script>
	<jsp:forward page="lost.jsp"></jsp:forward>

	
