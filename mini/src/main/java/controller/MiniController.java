package controller;

import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;
import java.util.ArrayList;

import javax.servlet.ServletConfig;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

import org.apache.commons.beanutils.BeanUtils;

import DAO.EpilogueDAO;
import DTO.Epilogue;

@WebServlet("/")
@MultipartConfig(maxFileSize=1024*1024*2, location="c:/Temp/img")
public class MiniController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private EpilogueDAO dao;
    private ServletContext ctx;
       
    public MiniController() {
        super();
    }

	public void init(ServletConfig config) throws ServletException {
		super.init(config);
		dao = new EpilogueDAO();
		ctx = getServletContext();
	}

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		String command = request.getServletPath();
		String site = null;
		
		System.out.println("command" + command);
		
		//경로지정
		switch (command) {
			case "/index": site = getList(request); break;
			case "/list": site = getList(request); break;
			case "/view": site = getView(request); break;
			case "/write": site = "epilogue_write.jsp"; break;
			case "/insert": site = insertEpilogue(request); break;
			case "/edit": site = getViewForEdit(request); break;
			case "/update": site = updateEpilogue(request); break;
			case "/delete": site = deleteEpilogue(request); break;
			
		}
		
		if(site.startsWith("redirect:/")) {
			
			String rview = site.substring("redirect:/".length());
			System.out.println("rview: " + rview);
			
			response.sendRedirect(rview);
			
		} else {
			ctx.getRequestDispatcher("/" + site).forward(request, response);
		}
	}
	
	public String getList(HttpServletRequest request) {
		ArrayList<Epilogue> list;
		
		try {
			list = dao.getList();
			request.setAttribute("epiList", list);
		} catch (Exception e) {
			e.printStackTrace();
			ctx.log("게시판 목록 생성 과정에서 문제 발생");
			request.setAttribute("error", "게시판 목록이 정상적으로 처리되지 않았습니다.");
		}
			return "epilogue_index.jsp";			
	}
	
	public String getView(HttpServletRequest request) {
		int board_no = Integer.parseInt(request.getParameter("board_no"));
		
		try {
			dao.updateViews(board_no);
			Epilogue e = dao.getView(board_no);
			request.setAttribute("epilogue", e);
		} catch (Exception e) {
			e.printStackTrace();
			ctx.log("게시글 가져오는 과정에서 문제 발생");
			request.setAttribute("error", "게시글을 정상적으로 가져오지 못했습니다.");
		}		
		return "epilogue_view.jsp";		
	}
	
	public String insertEpilogue(HttpServletRequest request) {
		Epilogue e = new Epilogue();
		
		try {
			BeanUtils.populate(e, request.getParameterMap());
			
			Part part = request.getPart("file");
			String fileName = getFileName(part);
			
			if(fileName != null && !fileName.isEmpty()) {
				part.write(fileName);
			}
			
			e.setImg("/img/" + fileName);
			
			dao.insertEpilogue(e);
			
		} catch (Exception e1) {
			e1.printStackTrace();
			ctx.log("게시글 작성과정에서 문제 발생");
			
			try {
				String encodeName = URLEncoder.encode("게시물이 정상적으로 등록되지 않았습니다.", "UTF-8");
				return "redirect:/list?error=" + encodeName;
			} catch (UnsupportedEncodingException e2) {
				e2.printStackTrace();
			}
		}		
		return "redirect:/list";		
	}
	
	public String getFileName(Part part) {
		String fileName = null;
		String header = part.getHeader("content-disposition");
		System.out.println("header =>" + header);
		
		int start = header.indexOf("filename=");
		fileName = header.substring(start + 10, header.length() -1);
		System.out.println("파일명: " + fileName);		
		
		return fileName;		
	}
	
	public String getViewForEdit(HttpServletRequest request) {
		int board_no = Integer.parseInt(request.getParameter("board_no"));
		
		try {
			Epilogue e = dao.getViewForEdit(board_no);
			request.setAttribute("epilogue", e);
		} catch (Exception e) {
			e.printStackTrace();
			ctx.log("게시글을 가져오는 과정에서 문제 발생");
			request.setAttribute("error", "게시물을 정상적으로 가져오지 못했습니다.");
		}		
		return "epilogue_edit.jsp";
	}
	
	public String updateEpilogue(HttpServletRequest request) {
		Epilogue e = new Epilogue();
		
		try {
			BeanUtils.populate(e, request.getParameterMap());
			
			Part part = request.getPart("file");
			String fileName = getFileName(part);
			
			if(fileName != null && !fileName.isEmpty()) {
				part.write(fileName);
			}
			
			e.setImg("/img/" + fileName);
			
			dao.updateEpilogue(e);
			
		} catch (Exception e1) {
			e1.printStackTrace();
			ctx.log("게시글 수정과정에서 문제 발생");
			
			try {
				String encodeName = URLEncoder.encode("게시물이 정상적으로 수정되지 않았습니다.", "UTF-8");
				return "redirect:/view?board_no=" + e.getBoard_no() + "&error=" + encodeName;
			} catch (UnsupportedEncodingException e2) {
				e2.printStackTrace();
			}
		}		
		return "redirect:/view?board_no=" + e.getBoard_no();
	}
	
	public String deleteEpilogue(HttpServletRequest request) {
		int board_no = Integer.parseInt(request.getParameter("board_no"));
		
		try {
			dao.deleteEpilogue(board_no);
		} catch (Exception e) {
			e.printStackTrace();
			ctx.log("게시글 삭제과정에서 문제 발생");
			
			try {
				String encodeName = URLEncoder.encode("게시글이 정상적으로 삭제되지 않았습니다.", "UTF-8");
				return "redirect:/list?error=" + encodeName;
			} catch (UnsupportedEncodingException e1) {
				e1.printStackTrace();
			}			
		}		
		return "redirect:/list";
	}


}
