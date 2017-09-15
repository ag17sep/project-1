
<%@page import="java.sql.*"%>
<%

String email=(String)session.getAttribute("newemail");

String lang=(String)session.getAttribute("val");
Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/hackathon","jatin","1234567");
String sql="delete from "+lang+" where email='"+email+"'";
PreparedStatement ps=con.prepareStatement(sql);	
int rs=ps.executeUpdate();

%>

<jsp:forward page="show.jsp"></jsp:forward>>
