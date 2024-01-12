<%@page import="org.springframework.ui.Model"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%
    // 세션 가져오기
    HttpSession Loginsession = request.getSession(false);
	
	String userType = String.valueOf(Loginsession.getAttribute("userType"));

    // 세션이 존재하지 않거나 필요한 속성이 없는 경우 로그인 페이지로 리다이렉트
    if (Loginsession == null || Loginsession.getAttribute("name") == null || !Loginsession.getAttribute("userType").equals("관리자")) {
        response.sendRedirect("/alomedia"); // 로그인 페이지 URL로 조정
    }
    
    response.setHeader("Pragma", "no-cache"); 
    response.setHeader("Cache-Control", "no-cache"); 
    response.setHeader("Cache-Control", "no-store"); 
    response.setDateHeader("Expires", 0L); 
    
%>

<header class="p-3 text-bg-dark">
    <div class="container">
        <div style="position: absolute; right: 10px">
        	<span style="position: relative; right: 10px">관리자 ${name}님</span>
			<button type="button" class="btn btn-dark" onClick="location.href='${context}/logout'">로그아웃</button>
        </div>
    </div>
</header>

