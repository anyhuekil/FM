package z02_vo;

import java.sql.Date;

public class AuctionItemDTO {

	public int auctionId;
	public int auctioneerId;
	public String itemName;
	public Date startDate;
	public Date endDate;
	public int state;
	public Double currentBidAmount;
	public int getAuctionId() {
		return auctionId;
	}
	public void setAuctionId(int auctionId) {
		this.auctionId = auctionId;
	}
	public int getAuctioneerId() {
		return auctioneerId;
	}
	public void setAuctioneerId(int auctioneerId) {
		this.auctioneerId = auctioneerId;
	}
	public String getItemName() {
		return itemName;
	}
	public void setItemName(String itemName) {
		this.itemName = itemName;
	}
	public Date getStartDate() {
		return startDate;
	}
	public void setStartDate(Date startDate) {
		this.startDate = startDate;
	}
	public Date getEndDate() {
		return endDate;
	}
	public void setEndDate(Date endDate) {
		this.endDate = endDate;
	}
	public int getState() {
		return state;
	}
	public void setState(int state) {
		this.state = state;
	}
	public Double getCurrentBidAmount() {
		return currentBidAmount;
	}
	public void setCurrentBidAmount(Double currentBidAmount) {
		this.currentBidAmount = currentBidAmount;
	}


}
