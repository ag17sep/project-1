
<%@page import="java.sql.*"%>
<%
String email=(String)session.getAttribute("email");

Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/hackathon","jatin","1234567");

String lang=(String)session.getAttribute("val");

String sql="delete from "+lang+" where loc is Null";
PreparedStatement psm1=con.prepareStatement(sql);
int rs2=psm1.executeUpdate();

 sql="select email from "+lang+"";

PreparedStatement ps=con.prepareStatement(sql);	
ResultSet rs=ps.executeQuery(sql);
String s1="";
int max=0;


while(rs.next())
{
 	String s=rs.getString("email");
	if(s.indexOf(email)>=0)
	{
		s1=s;
		String s2=s1.replace(email,"");
		int num=Integer.valueOf(s2);
		if(max<num)	
		{
			max=num;
		}
			
	} 
 }
max=max+1;

	s1=email+max;

out.println(s1);	
session.setAttribute("newemail",s1);

String altemail=(String)session.getAttribute("newemail");



sql="insert into "+lang+"(email) values(?)";
PreparedStatement psm=con.prepareStatement(sql);
psm.setString(1,s1);
int rs1=psm.executeUpdate();

 if(rs1>0)
{
	out.println("Added");

}

 %>
 
 <jsp:forward page="lost.jsp"></jsp:forward>>