<%@page import="admin.login"%>

<jsp:useBean id="sp" class="admin.login"/>
<jsp:setProperty  name="sp" property="*"/>

<%
session.setAttribute("SP",sp);
%>


<%
login st=(login)session.getAttribute("SP");
%>


<%
 admin.login.x1(st.getN2(),st.getP3(),st.getU2());
%>
 
 <jsp:forward page="sign.jsp"></jsp:forward>
 