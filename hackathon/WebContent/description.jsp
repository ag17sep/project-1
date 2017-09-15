<%@page import="java.sql.*"%>
<%
String u="";
out.println(u);
u=request.getParameter("descr");

String email=(String)session.getAttribute("newemail");

out.println(email);
String lang=(String)session.getAttribute("val");

out.println(lang);
Class.forName("com.mysql.jdbc.Driver");
Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/hackathon","jatin","1234567");
	
			PreparedStatement psmnt = con.prepareStatement("update "+lang+" set descr='"+u+"' where email='"+email+"'");
	   

	int rs=psmnt.executeUpdate();
 %>

<jsp:forward page="lost.jsp"></jsp:forward>