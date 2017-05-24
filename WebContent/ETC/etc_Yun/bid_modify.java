package com.javaproj.yun;

import java.io.IOException;
import java.sql.Connection;
import java.sql.Date;
import java.sql.DriverManager;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import oracle.net.ns.SessionAtts;

/**
 * Servlet implementation class bid_modify
 */
@WebServlet("/bid_modify")
public class bid_modify extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	private Connection connection = null;
	private Statement stmt = null;
	private String auction_id, auctioneer_id, item_name,
	state, cureent_bid_amount;
	private String  start_date, end_date ;
	private int cureent_bid_amount01 = 0;
	
	HttpSession httpSession;
    /**
     * @see HttpServlet#HttpServlet()
     */
    public bid_modify() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		System.out.println("doGet");
		actionDo(request,response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		System.out.println("doPost");
		actionDo(request,response);
	}

	public void actionDo(HttpServletRequest request, HttpServletResponse response)throws ServletException, IOException {
		
		request.setCharacterEncoding("UTF-8");
		httpSession = request.getSession();
		
		auction_id = request.getParameter("auction_id");
		auctioneer_id = request.getParameter("auctioneer_id");
		item_name = request.getParameter("item_name");
		start_date = request.getParameter("start_date");
		end_date = request.getParameter("end_date");
		state = request.getParameter("state");
		cureent_bid_amount = request.getParameter("cureent_bid_amount");
		
		cureent_bid_amount01 = Integer.parseInt(cureent_bid_amount);
		cureent_bid_amount01+=1000;
		System.out.println(cureent_bid_amount01);
		System.out.println(end_date);
		
		
	
		
		System.out.println();
		
		String query = "update acornproduct set auction_id = '" + auction_id + "',cureent_bid_amount = '" + cureent_bid_amount01
				+ "'";
		try{
			Class.forName("oracle.jdbc.driver.OracleDriver");
			connection = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","scott","tiger");
			stmt = connection.createStatement();
			int i = stmt.executeUpdate(query);
			if(i==1){
				System.out.println("update success");
				httpSession.setAttribute("cureent_bid_amount",cureent_bid_amount01);
				httpSession.setAttribute("auctioneer_id",auctioneer_id);
				httpSession.setAttribute("end_date",end_date);
				response.sendRedirect("secondPage02.jsp");
			}else{
				System.out.println("update fail");
			response.sendRedirect("firstPage.jsp");
		}

		}catch(Exception e){
	  e.printStackTrace();
	  System.out.println("insert fail");
	  response.sendRedirect("firstPage.jsp");
		}finally{
			try{
					if(stmt != null)stmt.close();
					if(connection !=null)connection.close();
			}catch(Exception e){
		  }
	 }
		

	}

		
}


