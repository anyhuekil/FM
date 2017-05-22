CREATE TABLE ITEM 
(
   DDAY   DATE
)
NOCACHE
LOGGING;

INSERT INTO ITEM VALUES(TO_DATE('2017-05-31 16:40:00', 'yyyy-mm-dd hh24:mi:ss'));

drop table item;