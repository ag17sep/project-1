
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>

<%
String s3=(String)session.getAttribute("newemail");
String lang=(String)session.getAttribute("val");

		String u[]=request.getParameterValues("delete");
			
		for(int i=0;i<u.length;i++)
			{ 
			Class.forName("com.mysql.jdbc.Driver");
			Connection con=DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/hackathon","jatin","1234567");

			Statement st=con.createStatement();
			
			
			String sql="update "+lang+" set "+u[i]+"=Null where email='"+s3+"'";
				
			
			int n=st.executeUpdate(sql);
 			
			}

%>

	<jsp:forward page="lost.jsp"/> 