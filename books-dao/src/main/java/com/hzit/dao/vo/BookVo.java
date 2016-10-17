package com.hzit.dao.vo;

/**
 * 
 * @author huangkangluan
 */
public class BookVo {
	/**
	 *  图书编号
	 */
	private Integer bookId;
	/**
	 *  类别
	 */
	private String bookSort;
	/**
	 *  名称
	 */
	private String bookName;
	/**
	 *  作者
	 */
	private String bookAuthor;
	/**
	 *  价格
	 */
	private Integer bookPrice;
	/**
	 *  出版社
	 */
	private String bookPublish;
	/**
	 *  数量
	 */
	private Integer bookNumber;
	/**
	 * 图书编号
	 * @param bookId
	 */
	public void setBookId(Integer bookId){
		this.bookId = bookId;
	}
	
    /**
     * 图书编号
     * @return Integer
     */	
    public Integer getBookId(){
    	return bookId;
    }
	/**
	 * 类别
	 * @param bookSort
	 */
	public void setBookSort(String bookSort){
		this.bookSort = bookSort;
	}
	
    /**
     * 类别
     * @return String
     */	
    public String getBookSort(){
    	return bookSort;
    }
	/**
	 * 名称
	 * @param bookName
	 */
	public void setBookName(String bookName){
		this.bookName = bookName;
	}
	
    /**
     * 名称
     * @return String
     */	
    public String getBookName(){
    	return bookName;
    }
	/**
	 * 作者
	 * @param bookAuthor
	 */
	public void setBookAuthor(String bookAuthor){
		this.bookAuthor = bookAuthor;
	}
	
    /**
     * 作者
     * @return String
     */	
    public String getBookAuthor(){
    	return bookAuthor;
    }
	/**
	 * 价格
	 * @param bookPrice
	 */
	public void setBookPrice(Integer bookPrice){
		this.bookPrice = bookPrice;
	}
	
    /**
     * 价格
     * @return Integer
     */	
    public Integer getBookPrice(){
    	return bookPrice;
    }
	/**
	 * 出版社
	 * @param bookPublish
	 */
	public void setBookPublish(String bookPublish){
		this.bookPublish = bookPublish;
	}
	
    /**
     * 出版社
     * @return String
     */	
    public String getBookPublish(){
    	return bookPublish;
    }
	/**
	 * 数量
	 * @param bookNumber
	 */
	public void setBookNumber(Integer bookNumber){
		this.bookNumber = bookNumber;
	}
	
    /**
     * 数量
     * @return Integer
     */	
    public Integer getBookNumber(){
    	return bookNumber;
    }
}