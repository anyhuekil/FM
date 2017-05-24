package z01_database;

import java.sql.Connection;    
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.text.SimpleDateFormat;

import z02_vo.Item;

public class ItemDB {
	private Connection con = null;
	private PreparedStatement pstmt = null;;
	private ResultSet rs = null;
	private String driver = "oracle.jdbc.driver.OracleDriver";
	private String url = "jdbc:oracle:thin:@localhost:1521:xe";
	private String sql = null;
	private void setCon() throws ClassNotFoundException, SQLException{
		Class.forName(driver);
		con=DriverManager.getConnection(url, "scott", "tiger");
	}
	public Item when(Item data){
		Item i = null;
		try {
			setCon();
			sql = "SELECT * FROM ITEM";
			pstmt = con.prepareStatement(sql);
			rs = pstmt.executeQuery();
			while(rs.next()){
				i = new Item();
				i.setJdday(rs.getDate("dday"));
			}
			
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally{
			try {
				if(rs!=null) rs.close();
				if(pstmt!=null) pstmt.close();
				if(con!=null) con.close();
			} catch (Exception e2) {
				e2.printStackTrace();
			}
		}
		return i;
	}
	public static void main(String[] args) {
		// TODO Auto-generated method stub
//	      ItemDB dao = new ItemDB();
//	      Item dto = new Item();
//	      SimpleDateFormat sdf = new SimpleDateFormat("yyyy/MM/dd HH:mm:ss");
//	      String a = sdf.format(dao.when(dto).getJdday());  
//	      System.out.println(a);
//		
	}

}
