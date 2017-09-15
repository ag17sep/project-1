package admin;

import java.sql.*;

public class login {

	private String n2;
	private String p3;
	private String u2;

	
	
	public String getN2() {
		return n2;
	}



	public void setN2(String n2) {
		this.n2 = n2;
	}



	public String getP3() {
		return p3;
	}



	public void setP3(String p3) {
		this.p3 = p3;
	}
	
		
	public String getU2()
	{
		return u2;
	}



	public void setU2(String u2)
	{
		this.u2 = u2;
	}



	public static int x(String n,String p)throws Exception
	{
		
		Class.forName("com.mysql.jdbc.Driver");
		Connection con=DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/hackathon","jatin","1234567");


		

		String sql="select * from login";
		
		PreparedStatement ps=con.prepareStatement(sql);
		
		ResultSet rs=ps.executeQuery(sql);
		while(rs.next())
		{
			if(n.equals(rs.getString("email"))&&p.equals(rs.getString("password")))
			{

					return 0;
			}
		}
		con.close();
		
		
		return 1;
	
	}

	public static void x1(String n,String p,String u)throws Exception
	{
		
		Class.forName("com.mysql.jdbc.Driver");
		Connection con=DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/hackathon","jatin","1234567");


		

		String sql="insert into login values('"+n+"','"+p+"','"+u+"')";
		
		PreparedStatement ps=con.prepareStatement(sql);
		
		int  rs=ps.executeUpdate();
	
		con.close();
		
		
	
	}

	

	
}
