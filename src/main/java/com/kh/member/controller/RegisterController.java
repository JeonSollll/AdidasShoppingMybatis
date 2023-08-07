package com.kh.member.controller;

import java.io.IOException;
import java.sql.Date;
import java.text.ParseException;
import java.text.SimpleDateFormat;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.kh.member.model.service.MemberService;
import com.kh.member.model.vo.Member;

/**
 * Servlet implementation class RegisterController
 */
@WebServlet("/member/register.do")
public class RegisterController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public RegisterController() {
        super();
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// 페이지 이동 용도
		request.getRequestDispatcher("/WEB-INF/views/member/signUpPage.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		String memberName = request.getParameter("name");
		String memberId = request.getParameter("username");
		String memberPw = request.getParameter("password");
		String memberEmail = request.getParameter("email");
		String memberPhone = request.getParameter("phone");
		String birthDateString = request.getParameter("birthdate");
		String memberGender = request.getParameter("gender");
		String memberAddress = request.getParameter("address");
		
        java.sql.Date memberBirthDate = null;

        try {
            SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
            java.util.Date parsedDate = dateFormat.parse(birthDateString);
            memberBirthDate = new java.sql.Date(parsedDate.getTime());
        } catch (ParseException e) {
            e.printStackTrace();
            // 오류 처리 로직 추가 (예: 사용자에게 오류 메시지 표시)
        }
		
		Member member = new Member(memberName, memberId, memberPw, memberEmail, memberBirthDate, memberGender, memberAddress, memberPhone);
				
		MemberService service = new MemberService();
		// INSERT INTO MEMBER_TBL VALUES(?, ?, ?, ?, ?, ?, ?, ?, ?, DEFAULT, DEFAULT, DEFAULT)
		int result = service.insertMember(member);
		if(result > 0) {
			// 성공 -> 로그인하도록 함
			response.sendRedirect("/index.jsp");
		}else {
			// 실패 -> Error message 출력
			request.setAttribute("url", "/member/register.do");
			request.setAttribute("msg", "회원 등록이 완료되지 않았습니다.");
			request.getRequestDispatcher("/WEB-INF/views/common/errorPage.jsp").forward(request, response);
		}
		
	}

}
