package z01_database;

import java.sql.Connection;  
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.text.SimpleDateFormat;

import z02_vo.AuctionItemDTO;


public class AuctionItemDAO {
	private Connection con;
	private PreparedStatement pstmt;
	private ResultSet rs;
	
	private void setConn() throws ClassNotFoundException, SQLException{
		Class.forName("oracle.jdbc.driver.OracleDriver");
		String conInfo = "jdbc:oracle:thin:@192.168.0.110:1522:orcl";
		con = DriverManager.getConnection(conInfo,"cto","qqqq" );
		System.out.println("Good to connect DB. Please Go on.");
	}
	public AuctionItemDAO(){}
//	AUCTION_ITEM 컬럼 데이터를 다따오는 메서드
	public AuctionItemDTO info(AuctionItemDTO sch){
		AuctionItemDTO ab = null;
		try {
			setConn();
			String sql = "select * from Auction_item "
					+ "where auction_ID = ? ";
			System.out.println(sql);
			pstmt = con.prepareStatement(sql);
			pstmt.setInt(1, sch.getAuctionId() );
			rs = pstmt.executeQuery();
			
			if(rs.next()){ 
				ab = new AuctionItemDTO();
				ab.setAuctioneerId(rs.getInt(1));
				ab.setAuctionId(rs.getInt(2) );
				ab.setItemName(rs.getString(3));
				ab.setStartDate(rs.getDate(4));
				ab.setEndDate(rs.getDate(5));
				ab.setState(rs.getInt(6));
				ab.setCurrentBidAmount(rs.getDouble(7) );
			}
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
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
	public void raisePrice(AuctionItemDTO udt) {
		try {
			setConn();
			String sql = "update Auction_item "
					+ "set current_Bid_Amount = ? "
					+ "where auction_ID = ? ";
			System.out.println(sql);
			con.setAutoCommit(false);
			pstmt = con.prepareStatement(sql);
			pstmt.setDouble(1, udt.getCurrentBidAmount());
			pstmt.setInt(2, udt.getAuctionId());
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
		AuctionItemDAO dao = new AuctionItemDAO();
		AuctionItemDTO dto = new AuctionItemDTO();
		dto.setAuctionId(1);
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy/MM/dd HH:mm:ss");
		String day = sdf.format(dao.info(dto).getEndDate());
		System.out.println(day);

	
	
	}
	
	
}

