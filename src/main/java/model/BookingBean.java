package model;



public class BookingBean {
	private int bookId;
    private int courtId;
    private String time;
    private int CustID;
    
	
	
	public int getCustID() {
		return CustID;
	}
	public void setCustID(int custID) {
		CustID = custID;
	}
	public int getCourtId() {
		return courtId;
	}
	public void setCourtId(int courtId) {
		this.courtId = courtId;
	}
	public String getTime() {
		return time;
	}
	public void setTime(String time) {
		this.time = time;
	}
	public int getBookId() {
		return bookId;
	}
	public void setBookId(int bookId) {
		this.bookId = bookId;
	}

	
}



