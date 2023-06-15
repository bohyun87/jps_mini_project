package DTO;

public class Epilogue {
	private int board_no;			// 게시글번호
	private String title;			//제목
	private String hiking_date;		//산행날짜
	private String reg_date;		//등록일
	private String content;			//게시글내용
	private String user_name;		//회원명
	private int views;				//조회수
	private String img;				//이미지

	
	public int getBoard_no() {
		return board_no;
	}
	public void setBoard_no(int board_no) {
		this.board_no = board_no;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getHiking_date() {
		return hiking_date;
	}
	public void setHiking_date(String hiking_date) {
		this.hiking_date = hiking_date;
	}
	public String getReg_date() {
		return reg_date;
	}
	public void setReg_date(String reg_date) {
		this.reg_date = reg_date;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public String getUser_name() {
		return user_name;
	}
	public void setUser_name(String user_name) {
		this.user_name = user_name;
	}
	public int getViews() {
		return views;
	}
	public void setViews(int views) {
		this.views = views;
	}
	public String getImg() {
		return img;
	}
	public void setImg(String img) {
		this.img = img;
	}
}
