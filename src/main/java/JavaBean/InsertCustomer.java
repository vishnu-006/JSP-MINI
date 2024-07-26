package JavaBean;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

public class InsertCustomer {
	public static boolean saveCustomer(Customer customer) {
		int n = 0;
		String custName = customer.getCustName();
		String username = customer.getUsername();
		String password = customer.getPassword();
		int age = customer.getAge();
		String email = customer.getEmail();
		
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/vking","root","root");
			PreparedStatement st = con.prepareStatement("insert into customer values('"+custName+"','"+username+"','"+password+"','"+age+"','"+email+"')");
			n = st.executeUpdate();			
		}
		catch(Exception e) {
			System.out.println(e);
		}
		
		
		
		if(n ==0) {
			return false;
		}
		else {
			return true;		
			}
	}
	

}
