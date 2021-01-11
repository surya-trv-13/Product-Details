package com.entities;

import java.util.Date;

public class ProductDetail {
	private int productId;
	private String productName;
	private String productCategory;
	private Double price;
	private Date addDate;
	public ProductDetail() {
		super();
		// TODO Auto-generated constructor stub
	}
	public ProductDetail(String productName, String productCategory, Double price, Date addDate) {
		super();
		this.productName = productName;
		this.productCategory = productCategory;
		this.price = price;
		this.addDate = addDate;
	}
	public int getProductId() {
		return productId;
	}
	public void setProductId(int productId) {
		this.productId = productId;
	}
	public String getProductName() {
		return productName;
	}
	public void setProductName(String productName) {
		this.productName = productName;
	}
	public String getProductCategory() {
		return productCategory;
	}
	public void setProductCategory(String productCategory) {
		this.productCategory = productCategory;
	}
	public Double getPrice() {
		return price;
	}
	public void setPrice(Double price) {
		this.price = price;
	}
	public Date getAddDate() {
		return addDate;
	}
	public void setAddDate(Date addDate) {
		this.addDate = addDate;
	}
	@Override
	public String toString() {
		return "ProductDetail [productName=" + productName + ", productCategory=" + productCategory + ", price=" + price
				+ ", addDate=" + addDate + "]";
	}
}
