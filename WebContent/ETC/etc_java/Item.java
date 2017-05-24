/*CREATE TABLE ITEM 
(
   DDAY   DATE
)
NOCACHE
LOGGING;

INSERT INTO ITEM VALUES(TO_DATE('2017-05-20 15:00:00', 'yyyy-mm-dd hh24:mi:ss'));

SQL 테이블 생성 및 값 INSERT

*/
package z02_vo;

import java.util.Date;

public class Item {
	private Date jdday;

	public Date getJdday() {
		return jdday;
	}

	public void setJdday(Date jdday) {
		this.jdday = jdday;
	}
}
