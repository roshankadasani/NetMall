package condb2;
import java.sql.*;

import models.ChatModel;
import models.DelModel;
import models.AddModel;
import models.RegModel;
import controller.*;

public class DbConnection {
	
	static String driver="com.ibm.db2.jcc.DB2Driver";
	static String url="jdbc:db2://localhost:50000/MAIN";
	static String username="";
	static String password="";
	static Connection con=null;
	static PreparedStatement ps=null;
	public static ResultSet rs=null;
static
{
	
	
	try
	{
		Class.forName(driver);
		con=DriverManager.getConnection(url,username,password);
		System.out.println("Connection successfull");
		
		
	}
	catch(Exception e)
	{  
		System.out.print(e.toString());
	}
	
}
public static String Chat(String sql,String user,String date,ChatModel obj)
{
	
	
	try
	{
	ps=con.prepareStatement(sql);
	ps.setString(1,user);
	ps.setString(2,obj.getMsg());
	ps.setString(3,date);
    int i=ps.executeUpdate();
    if(i==1)
    {
    	return "success";
    }
    else
    {
    	return "fail";
    }
    
	}
	catch(Exception e)
	{
		System.out.println(e.toString());
	}
  
	
	
	return "success";
}	
public static String UpdateApple(String sql,AddModel obj)
{
	
	
	try
	{
	ps=con.prepareStatement(sql);
	ps.setString(5,obj.getPrice());
    int i=ps.executeUpdate();
    if(i==1)
    {
    	return "success";
    }
    else
    {
    	return "fail";
    }
    
	}
	catch(Exception e)
	{
		System.out.println(e.toString());
	}
  
	
	
	return "success";
}	
	public static String Sales(String sql,String user1,String cname,String pname,String pic,String total,String date)
	{
		try
		{
			ps=con.prepareStatement(sql);
			ps.setString(1,user1);
			ps.setString(2,cname);
			ps.setString(3,pname);
			ps.setString(4,pic);
			ps.setString(5,total);
			ps.setString(6,date);
			
			int i=ps.executeUpdate();
	
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}

		return "success";
	}
	public static ResultSet FechApple(String sql)
	{
	try
	{
		ps=con.prepareStatement(sql);
		
		rs=ps.executeQuery();
		
	}
	catch(Exception e)
	{
		
	}
	
	return rs;
	}
	public static String AddToCart(String sql,String user1,String pid,String pname,String pcost,String pic,String date)
	{
	try
	{
		ps=con.prepareStatement(sql);
		ps.setString(1,user1);
		ps.setString(2,pid);
		ps.setString(3,pname);
		ps.setString(4,pcost);
		ps.setString(5,pic);
		ps.setString(6,date);
		int i=ps.executeUpdate();
        if(i==1)
        {
        	System.out.println("details are entering");
        	return "success";
        }
        else
        {System.out.println("fail");
        	return "fail";
        }
	}
	catch(Exception e)
	{
		System.out.println(e.toString());
	}
	
	return "success";
	}
	public static ResultSet add1(String sql)
	{
	try
	{
		ps=con.prepareStatement(sql);
		;
		rs=ps.executeQuery();
		
	}
	catch(Exception e)
	{
		System.out.println(e.toString());
	}
	
	return rs;
	}
	public static ResultSet add(String sql,String user1)
	{
	try
	{
		ps=con.prepareStatement(sql);
		ps.setString(1,user1);
		rs=ps.executeQuery();
		
	}
	catch(Exception e)
	{
		System.out.println(e.toString());
	}
	
	return rs;
	}
	public static ResultSet conv(String sql)
	{
	try
	{
		ps=con.prepareStatement(sql);
		rs=ps.executeQuery();
		
	}
	catch(Exception e)
	{
		System.out.println(e.toString());
	}
	
	return rs;
	}
	public static ResultSet FechApple1(String sql,String mid)
	{
	try
	{
		ps=con.prepareStatement(sql);
		ps.setString(1,mid);
		rs=ps.executeQuery();
		
	}
	catch(Exception e)
	{
		System.out.println(e.toString());
	}
	
	return rs;
	}
	public static ResultSet FechHtc1(String sql,String mid)
	{
	try
	{
		ps=con.prepareStatement(sql);
		ps.setString(1,mid);
		rs=ps.executeQuery();
		
	}
	catch(Exception e)
	{
		
	}
	
	return rs;
	}
	public static ResultSet FechNokia1(String sql,String mid)
	{
	try
	{
		ps=con.prepareStatement(sql);
		ps.setString(1,mid);
		rs=ps.executeQuery();
		
	}
	catch(Exception e)
	{
		
	}
	
	return rs;
	}
	public static ResultSet FechSamsung1(String sql,String mid)
	{
	try
	{
		ps=con.prepareStatement(sql);
		ps.setString(1,mid);
		rs=ps.executeQuery();
		
	}
	catch(Exception e)
	{
		
	}
	
	return rs;
	}
	public static ResultSet FechSony1(String sql,String mid)
	{
	try
	{
		ps=con.prepareStatement(sql);
		ps.setString(1,mid);
		rs=ps.executeQuery();
		
	}
	catch(Exception e)
	{
		
	}
	
	return rs;
	}

	public static String UpdateUserPic(String sql,String id,String pic)
	{
		try
		{
		ps=con.prepareStatement(sql);
		ps.setString(1,pic);
        ps.setString(2,id);
        int i=ps.executeUpdate();
        
        if(i==1)
        {
        	System.out.println(i);
        	System.out.println(pic);
        	System.out.println(id);
        	return "success";
        }
        else
        {
        	return "fail";
        }
		}
		catch(Exception e)
		{
			System.out.println(e.toString());
			
		}
	   return "success";
	}
	
	public static String InsertUser(RegModel obj,String sql,String mail,String Fname )
	{
		System.out.println("ajsgb");
		try
		{
			System.out.println(mail);
			System.out.println(Fname);
		
		ps=con.prepareStatement(sql);
		ps.setString(1,obj.getFname());
		ps.setString(2,obj.getLname());
		ps.setString(3,obj.getMail());
		ps.setString(4,obj.getCno());
		ps.setString(5,obj.getPass());
		//ps.setString(6,obj.getpass1());
		int i=ps.executeUpdate();
		if(i==1)
		{
			System.out.println("b");
			return "success";
		}
		else
		{
			return "fail";
		}
		
		}
		catch(Exception e)
		{
			System.out.println(e.toString());
		}
		
		return "Success";
    }
	public static String Insertaddr(DelModel obj,String sql,String user1 )
	{
		try
		{
		ps=con.prepareStatement(sql);
		ps.setString(1,obj.getName());
		ps.setString(2,obj.getAddr());
		ps.setString(3,obj.getCity());
		ps.setString(4,obj.getState());
		ps.setString(5,obj.getPin());
		ps.setString(6,obj.getCno());
		ps.setString(7,user1);
		
		//ps.setString(6,obj.getpass1());
		int i=ps.executeUpdate();
		if(i==1)
		{
			System.out.println("b");
			return "success";
		}
		else
		{
			return "fail";
		}
		
		}
		catch(Exception e)
		{
			System.out.println(e.toString());
		}
		
		return "Success";
    }
	public static String AddProduct(AddModel obj,String sql)
	{
		System.out.println("ajsgb");
		try
		{
			
		
		ps=con.prepareStatement(sql);
		ps.setString(1,obj.getMid());
		ps.setString(2,obj.getMno());
		ps.setString(3,obj.getFeatures());
		ps.setString(4,obj.getColor());
		ps.setString(5,obj.getPrice());
		ps.setString(6,obj.getImage());
		int i=ps.executeUpdate();
		if(i==1)
		{
			return "success";
		}
		else
		{
			return "fail";
		}
		
		}
		catch(Exception e)
		{
			System.out.println(e.toString());
		}
		
		return "Success";
    }
	public static String UpdateApple(AddModel obj,String sql,String mid)
	{
		try
		{
		ps=con.prepareStatement(sql);
		ps.setString(1,obj.getPrice());
		ps.setString(2,mid);
		int i=ps.executeUpdate();
		if(i==1)
		{
			return "success";
		}
		else
		{
			return "fail";
		}
		
		}
		catch(Exception e)
		{
			System.out.println(e.toString());
		}
		
		return "Success";
    }
	public static String Deletecart(String sql,String date,String user1)
	{
		try
		{
		ps=con.prepareStatement(sql);
		ps.setString(1, date);
		ps.setString(2, user1);
	    int i=ps.executeUpdate();
	    if(i==1)
	    {
	    	return "success";
	    }
	    else
	    {
	    	return "fail";
	    }
	    
		}
		catch(Exception e)
		{
			System.out.println(e.toString());
		}
	  
		
		
		return "success";
	}
	public static String DeleteApple(String sql,String mid)
	{
		try
		{
		ps=con.prepareStatement(sql);
		ps.setString(1, mid);
	    int i=ps.executeUpdate();
	    if(i==1)
	    {
	    	return "success";
	    }
	    else
	    {
	    	return "fail";
	    }
	    
		}
		catch(Exception e)
		{
			System.out.println(e.toString());
		}
	  
		
		
		return "success";
	}
	public static String UpdatePassword(String sql,String username,String password)
	{
		try
		{
			ps=con.prepareStatement(sql);
			ps.setString(1,password);
			ps.setString(2,username);
			int i=ps.executeUpdate();
			System.out.println(i);
			
			
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		
		
		
		return "success";
	}
public static String CheckUser(String sql,String mail,String pass)
{
	try
	{
	System.out.println(mail);
	System.out.println(pass);
	System.out.println(sql);
	ps=con.prepareStatement(sql);
	ps.setString(1,mail);
	ps.setString(2,pass);
   ResultSet rs=ps.executeQuery();
	int i=0;
	while(rs.next())
	{
		i++;
	}
	if(i==1)
	{
		System.out.println("my success frm db");
		return "success";
		
	}
	else
	{
		System.out.println("my fail frm db");
		return "fail";
	}
	
	
	}
	catch(Exception e)
	{
		e.printStackTrace();
	}
	
	
return "success";
}
public static void main(String [] args)
{
	
}

}
