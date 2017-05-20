create table Auction_item(
	auctionID number(5),
	currentBid REAL
);

drop table Auction_item;
insert into Auction_item values(1,30000.0);
insert into Auction_item values(2,3000.0);
insert into Auction_item values(3,00.0);

select * from Auction_item;
