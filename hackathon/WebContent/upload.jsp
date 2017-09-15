<%@page import="java.util.Arrays"%>
<%@ page import="java.io.*,java.sql.*,java.util.zip.*" %>
<%

String val=(String)session.getAttribute("val");

String saveFile="";
String contentType = request.getContentType();
if((contentType != null)&&(contentType.indexOf("multipart/form-data") >= 0)){
DataInputStream in = new DataInputStream(request.getInputStream());
int formDataLength = request.getContentLength();
byte dataBytes[] = new byte[formDataLength];
int byteRead = 0;
int totalBytesRead = 0;
while(totalBytesRead < formDataLength){
byteRead = in.read(dataBytes, totalBytesRead,formDataLength);
totalBytesRead += byteRead;
}
String file = new String(dataBytes);
saveFile = file.substring(file.indexOf("filename=\"") + 10);
saveFile = saveFile.substring(0, saveFile.indexOf("\n"));
saveFile = saveFile.substring(saveFile.lastIndexOf("\\") + 1,saveFile.indexOf("\""));
int lastIndex = contentType.lastIndexOf("=");
String boundary = contentType.substring(lastIndex + 1,contentType.length());
int pos;
pos = file.indexOf("filename=\"");
pos = file.indexOf("\n", pos) + 1;
pos = file.indexOf("\n", pos) + 1;
pos = file.indexOf("\n", pos) + 1;
int boundaryLocation = file.indexOf(boundary, pos) - 4;
int startPos = ((file.substring(0, pos)).getBytes()).length;
int endPos = ((file.substring(0, boundaryLocation)).getBytes()).length;
File ff = new File("E:/project/hackathon/WebContent/UploadedFiles/"+saveFile);
FileOutputStream fileOut = new FileOutputStream(ff);
fileOut.write(dataBytes, startPos, (endPos - startPos));
fileOut.flush();
fileOut.close();
%>
<br><table><tr><td><b>You have successfully uploaded the file:</b>
<%out.println(saveFile);
String s7=ff.getPath();
out.println(ff.getPath());%></td></tr></table>

<%
String email=(String)session.getAttribute("newemail");
Connection connection = null;
String connectionURL = "jdbc:mysql://localhost:3306/hackathon";
PreparedStatement psmnt = null;
try{
	
Class.forName("com.mysql.jdbc.Driver").newInstance();
connection = DriverManager.getConnection(connectionURL, "jatin", "1234567");
String s2="img",s5=s2;
String s1="select * from "+val+"";
PreparedStatement ps=connection.prepareStatement(s1);
ResultSet rs= ps.executeQuery(s1);
int i=1;
while(rs.next())
{
	if(rs.getString("email").equals(email))
	{
		while(rs.getString(s2)!=null)
		{
			String s4=s5+i;
			s2=s4;
			i++;
		}
		if(i==4)
		{
		%>
		
			<script>
				alert("maximum insertion done you can now only update the images");
			</script>
		
		<%
		}
		break;
	}
}

	psmnt = connection.prepareStatement("update "+val+" set "+s2+"=? where email='"+email+"'");
	psmnt.setString(1,ff.getPath());


int s3 = psmnt.executeUpdate();
if(s3>0){
	%>
	
	<script>
alert("Uploaded successfully !");
</script>
<%}
else{
out.println("Error!");
}
}
catch(Exception e){
    e.printStackTrace();
}
}
%>
<jsp:forward page="lost.jsp"/> 