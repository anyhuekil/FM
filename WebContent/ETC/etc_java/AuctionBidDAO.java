package z01_database;

import java.sql.Connection;  
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import z02_vo.AuctionBidDTO;

public class AuctionBidDAO {
	private Connection con;
	private PreparedStatement pstmt;
	private ResultSet rs;
	private void setConn() throws ClassNotFoundException, SQLException{
		Class.forName("oracle.jdbc.driver.OracleDriver");
		String conInfo = "jdbc:oracle:thin:@localhost:1521:xe";
		con = DriverManager.getConnection(conInfo,"scott","tiger" );
		System.out.println("Good to connect DB. Please Go on.");
	}
	public AuctionBidDTO getPrice(AuctionBidDTO sch) throws ClassNotFoundException, SQLException{
		setConn();
		AuctionBidDTO ab = null;
		
		try {
			String sql = "select * from Auction_item "
					+ "where auctionID = ? ";
			System.out.println(sql);
			
			pstmt = con.prepareStatement(sql);
			pstmt.setInt(1, sch.getAuctionID());
			rs = pstmt.executeQuery();
			
			if(rs.next()){ 
				ab = new AuctionBidDTO();
				ab.setAuctionID(rs.getInt(1) );
				ab.setCurrentBid(rs.getDouble(2) );
			}
			
			
		} finally{
			try {
				if(rs!= null) rs.close();
				if(pstmt != null) pstmt.close();
				if(con != null) con.close();
			} catch (Exception e2) {
				e2.printStackTrace();
			}
		}
		return ab;
	}
	
	public void raisePrice(AuctionBidDTO udt) {
		try {
			setConn();
			String sql = "update Auction_item "
					+ "set currentBid = ? "
					+ "where auctionID = ? ";
			System.out.println(sql);
			con.setAutoCommit(false);
			pstmt = con.prepareStatement(sql);
			pstmt.setInt(2, udt.getAuctionID());
			pstmt.setDouble(1, udt.getCurrentBid());
			pstmt.executeUpdate();
			con.commit();
			
			
		}catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			try {
				con.rollback();
			} catch (Exception e2) {
				e2.printStackTrace();
			}
		} finally{
			try {
				if(pstmt != null) pstmt.close();
				if(con != null) con.close();
			} catch (Exception e2) {
				e2.printStackTrace();
			}
		}
	}
	
	
public static void main(String[] args){
//	AuctionBidDAO db = new AuctionBidDAO();
//	AuctionBidDTO sch = new AuctionBidDTO();
//	sch.setCurrentBid(5000.0);
//	sch.setAuctionID(2);
//	try {
//		db.raisePrice(sch);
//		System.out.println(db.getPrice(sch).getCurrentBid());
//	} catch (Exception e) {
//		e.printStackTrace();
//	}
}
}
