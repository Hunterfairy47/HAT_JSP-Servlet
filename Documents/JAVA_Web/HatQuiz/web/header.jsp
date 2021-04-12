<%-- 
    Document   : header
    Created on : Mar 15, 2021, 4:39:22 PM
    Author     : Admin
--%>
<%@page import="model.Subject"%>
<%@page import="DAO.SubjectDAO"%>
<%@page import="model.Quiz"%>
<%@page import="DAO.QuizDAO"%>
<%@page import="model.Users"%>
<%@page import="DAO.UserDAO"%>


<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            SubjectDAO subjectDAO = new SubjectDAO();
            QuizDAO quizDAO = new QuizDAO();
        %>
        <%
            Users u = new Users();
            if (session.getAttribute("user") != null) {
                u = (Users) session.getAttribute("user");
            } else {
                u.setUserName("");
            }
        %>
        <nav class="fh5co-nav" role="navigation">
            <div class="top">
                <div class="container">
                    <div class="row">
                        <div class="col-xs-12 text-right">
                            <p class="site">hatquiz.net</p>
                            <p class="num">Call: +01 123 456 7890</p>
                            <ul class="fh5co-social">
                                <li><a href="https://www.facebook.com/profile.php?id=100009726633978"><i class="icon-facebook2"></i></a></li>
                                <li><a href="https://www.instagram.com/phucan332/"><i class="icon-instagram"></i></a></li>
                                <li><a href="https://github.com/Hunterfairy47"><i class="icon-github"></i></a></li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
            <div class="top-menu">
                <div class="container">
                    <div class="row">
                        <div class="col-xs-2">
                            <div id="fh5co-logo"><a href="index.jsp"><i class="icon-study"></i>&ensp;HatQuiz</a></div>
                        </div>
                        <div class="col-xs-10 text-right menu-1">
                            <ul>
                                <li class="active"><a href="index.jsp">TRANG CHỦ</a></li>                                   
                                <li class="has-dropdown">
                                    <a href="quiz.jsp?subject=all">THI THPTQG</a>
                                    <ul class="dropdown">                                        
                                        <%
                                            for (Subject s : subjectDAO.getListSubject()) {
                                        %>
                                        <li><a href="quiz.jsp?subject=<%=s.getSubjectID()%>"><%=s.getSubjectName()%></a></li>                                    
                                            <%
                                                }
                                            %>
                                    </ul>
                                </li>
                                <li><a href="contact.html">DIỄN ĐÀN</a></li>
                                    <%
                                        if (u.getUserName() == null) {

                                    %>
                                <li class="btn-cta"><a href="login.jsp"><span>Đăng nhập</span></a></li>
                                <li class="btn-cta"><a href="register.jsp"><span>Đăng ký</span></a></li>
                                    <%                                    } else {
                                    %>
                                <li class="has-dropdown">
                                    <a href="#"><%= u.getUserName()%></a>
                                    <ul class="dropdown">      
                                        <li><a href="#"><span>Thông tin</span></a></li>
                                        <li><a href="LogOutServlet"><span>Đăng xuất</span></a></li>
                                    </ul>   
                                </li>

                                <%}
                                %>

                            </ul>
                        </div>
                    </div>

                </div>
            </div>
        </nav>
    </body>
</html>
