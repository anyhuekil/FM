package jspexp.z01_database;

import java.sql.*; 

import jspexp.z02_vo.Auction_Bid;


public class Auction_BidDao {
	
	private Connection con;
	private PreparedStatement pstmt;
	private ResultSet rs;
	
	
	private void setConn() throws ClassNotFoundException, SQLException {

		Class.forName("oracle.jdbc.driver.OracleDriver");
		String conInfo="jdbc:oracle:thin:@192.168.0.110:1522:orcl";
		con = DriverManager.getConnection(conInfo,"cto","qqqq");
		System.out.println("connection complete");
	}
	
	public Auction_Bid getAuction_Bid(Auction_Bid sch){
		Auction_Bid aub = null;
		
		try {
			setConn();
			String sql="select * from Auction_Bid where auctionID=? ";
			pstmt = con.prepareStatement(sql);
			pstmt.setInt(1, sch.getAuctionID());
			rs = pstmt.executeQuery();
			if(rs.next()){
				aub = new Auction_Bid();
				aub.setBidderID(rs.getInt(1));
				aub.setAuctionID(rs.getInt(2));
				aub.setTimeStemp(rs.getDate(3));
				aub.setBidAmount(rs.getDouble(4));
				
			}
			
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			if(rs!=null)
				try {
					rs.close();
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
			if(pstmt!=null)
				try {
					pstmt.close();
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
			if(con!=null)
				try {
					con.close();
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
			
		}
		return aub;
		
		
	}
	

	

	public static void main(String[] args) {
		// TODO Auto-generated method stub

	}

}
