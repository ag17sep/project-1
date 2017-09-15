<%@page import="admin.login"%>

<jsp:useBean id="spl" class="admin.login"/>
<jsp:setProperty  name="spl" property="*"/>

<%
session.setAttribute("Np",spl);
%>
<%
login st=(login)session.getAttribute("Np");
%>
<%
 int x=admin.login.x(st.getN2(),st.getP3());


session.setAttribute("email",st.getN2());
if(x==0)
{
%>

	<jsp:forward page="enter.jsp"></jsp:forward>	
 
<%
 
}
else
{
%>
<script>alert("Invalid email or password!!")</script>
<jsp:forward page="main.html"></jsp:forward>>
<%
}
%>
