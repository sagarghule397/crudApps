package Emp;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;

public class EmployeeInfo {

	public static boolean InsertData(Employee e) {
		Configuration cfg=new Configuration();
		cfg.configure();
		SessionFactory factory=cfg.buildSessionFactory();
		Session session=factory.openSession();
		Transaction tx=session.beginTransaction();
		session.save(e);
		tx.commit();
		session.close();
		return true;
	}
	
	public static ResultSet Showdata() throws ClassNotFoundException, SQLException {
		Class.forName("oracle.jdbc.driver.OracleDriver");
		Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","123456");
		PreparedStatement ps=con.prepareStatement("select * from Employee");
		ResultSet rs=ps.executeQuery();
		return rs;
	}
	public static boolean UpdateData(Employee e) {
		Configuration cfg=new Configuration();
		cfg.configure();
		SessionFactory factory=cfg.buildSessionFactory();
		Session session=factory.openSession();
		Transaction tx=session.beginTransaction();
		session.update(e);
		tx.commit();
		session.close();
		return true;
	}
	
	public static boolean DeleteData(Employee e) {
		Configuration cfg=new Configuration();
		cfg.configure();
		SessionFactory factory=cfg.buildSessionFactory();
		Session session=factory.openSession();
		Transaction tx=session.beginTransaction();
		session.delete(e);
		tx.commit();
		session.close();
		return true;
	}
	
	
}
