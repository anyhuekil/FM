package jspexp.z02_vo;

import java.util.Date;

public class Auction_Bid {
	private int bidderID;
	private int auctionID;
	private Date timeStemp;
	private double bidAmount;
	
	public Auction_Bid() {
	}
	public Auction_Bid(int bidderID, int auctionID, Date timeStemp, double bidAmount) {
		this.bidderID = bidderID;
		this.auctionID = auctionID;
		this.timeStemp = timeStemp;
		this.bidAmount = bidAmount;
	}
	public int getBidderID() {
		return bidderID;
	}
	public void setBidderID(int bidderID) {
		this.bidderID = bidderID;
	}
	public int getAuctionID() {
		return auctionID;
	}
	public void setAuctionID(int auctionID) {
		this.auctionID = auctionID;
	}
	public Date getTimeStemp() {
		return timeStemp;
	}
	public void setTimeStemp(Date timeStemp) {
		this.timeStemp = timeStemp;
	}
	public double getBidAmount() {
		return bidAmount;
	}
	public void setBidAmount(double bidAmount) {
		this.bidAmount = bidAmount;
	}

}
