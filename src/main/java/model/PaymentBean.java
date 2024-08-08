package model;


public class PaymentBean {
    private int paymentId;
    private int CustID;
    private byte[] paymentImage;
    private String paymentStatus;
	public int getPaymentId() {
		return paymentId;
	}
	public void setPaymentId(int paymentId) {
		this.paymentId = paymentId;
	}


	public int getCustID() {
		return CustID;
	}
	public void setCustID(int custID) {
		CustID = custID;
	}
	public byte[] getPaymentImage() {
		return paymentImage;
	}
	public void setPaymentImage(byte[] paymentImage) {
		this.paymentImage = paymentImage;
	}
	public String getPaymentStatus() {
		return paymentStatus;
	}
	public void setPaymentStatus(String paymentStatus) {
		this.paymentStatus = paymentStatus;
	}

}
