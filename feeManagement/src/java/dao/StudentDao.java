/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import bean.StudentBean;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author User
 */
public class StudentDao {
    
     public void add(StudentBean bean) {
  
        try{
            
            Connection conn = DB.getCon();
       
            String query = "INSERT INTO FEE_STUDENT(rollno, name,email,sex,course,fee,paid,due,address,contact)" +
                                "VALUES (?,?,?,?,?,?,?,?,?,? )"; 
            
            PreparedStatement ps = conn.prepareStatement(query);             
            ps.setInt(1,bean.getRollno());
            ps.setString(2,bean.getName());
            ps.setString(3,bean.getEmail());
            ps.setString(4,bean.getSex());
            ps.setString(5,bean.getCourse());
            ps.setInt(6,bean.getFee());
            ps.setInt(7,bean.getPaid());
            ps.setInt(8,bean.getDue());
            ps.setString(9,bean.getAddress());
            ps.setString(10,bean.getContact());
            
           ps.executeUpdate();
		conn.close();
        } //end of try block
        
        catch (Exception ex){
            ex.printStackTrace();
        }//end of catch block
    }
    
public static int update(StudentBean bean){
	int status=0;
	try{
		Connection con=DB.getCon();
		PreparedStatement ps=con.prepareStatement("update fee_student set name=?,email=?,sex=?,course=?,fee=?,paid=?,due=?,address=?,contact=? where rollno=?");
		ps.setString(1,bean.getName());
		ps.setString(2,bean.getEmail());
		ps.setString(3,bean.getSex());
		ps.setString(4,bean.getCourse());
		ps.setInt(5,bean.getFee());
		ps.setInt(6,bean.getPaid());
		ps.setInt(7,bean.getDue());
		ps.setString(8,bean.getAddress());
		ps.setString(9,bean.getContact());
		ps.setInt(10,bean.getRollno());
		status=ps.executeUpdate();
		con.close();
	}catch(Exception ex){System.out.println(ex);}
	return status;
}	
public static int delete(int rollno){
	int status=0;
	try{
		Connection con=DB.getCon();
		PreparedStatement ps=con.prepareStatement("delete from fee_student where rollno=?");
		ps.setInt(1,rollno);
		status=ps.executeUpdate();
		con.close();
	}catch(Exception ex){System.out.println(ex);}
	return status;
}
public static int deleteByName(String name){
	int status=0;
	try{
		Connection con=DB.getCon();
		PreparedStatement ps=con.prepareStatement("delete from student where name=?");
		ps.setString(1,name);
		status=ps.executeUpdate();
		con.close();
	}catch(Exception ex){System.out.println(ex);}
	return status;
}

public static List<StudentBean> getAllRecords(){
	List<StudentBean> list=new ArrayList<StudentBean>();
	try{
		Connection con=DB.getCon();
		PreparedStatement ps=con.prepareStatement("select * from fee_student");
		ResultSet rs=ps.executeQuery();
		while(rs.next()){
			StudentBean bean=new StudentBean();
			bean.setRollno(rs.getInt(1));
			bean.setName(rs.getString(2));
			bean.setEmail(rs.getString(3));
			bean.setSex(rs.getString(4));
			bean.setCourse(rs.getString(5));
			bean.setFee(rs.getInt(6));
			bean.setPaid(rs.getInt(7));
			bean.setDue(rs.getInt(8));
			bean.setAddress(rs.getString(9));
			bean.setContact(rs.getString(10));
			list.add(bean);
		}
		con.close();
	}catch(Exception ex){System.out.println(ex);}
	
	return list;
}
public static List<StudentBean> getDues(){
	List<StudentBean> list=new ArrayList<StudentBean>();
	try{
		Connection con=DB.getCon();
		PreparedStatement ps=con.prepareStatement("select * from fee_student where due>0");
		ResultSet rs=ps.executeQuery();
		while(rs.next()){
			StudentBean bean=new StudentBean();
			bean.setRollno(rs.getInt(1));
			bean.setName(rs.getString(2));
			bean.setEmail(rs.getString(3));
			bean.setSex(rs.getString(4));
			bean.setCourse(rs.getString(5));
			bean.setFee(rs.getInt(6));
			bean.setPaid(rs.getInt(7));
			bean.setDue(rs.getInt(8));
			bean.setAddress(rs.getString(9));
			bean.setContact(rs.getString(10));
			list.add(bean);
		}
		con.close();
	}catch(Exception ex){System.out.println(ex);}
	
	return list;
}

public static StudentBean getRecordByRollno(int rollno){
	StudentBean bean=new StudentBean();
	try{
		Connection con=DB.getCon();
		PreparedStatement ps=con.prepareStatement("select * from fee_student where rollno=?");
		ps.setInt(1,rollno);
		ResultSet rs=ps.executeQuery();
		while(rs.next()){
			bean.setRollno(rs.getInt(1));
			bean.setName(rs.getString(2));
			bean.setEmail(rs.getString(3));
			bean.setSex(rs.getString(4));
			bean.setCourse(rs.getString(5));         
			bean.setFee(rs.getInt(6));
			bean.setPaid(rs.getInt(7));
			bean.setDue(rs.getInt(8));
			bean.setAddress(rs.getString(9));
			bean.setContact(rs.getString(10));
		}
		con.close();
	}catch(Exception ex){System.out.println(ex);}
	
	return bean;
}
}
