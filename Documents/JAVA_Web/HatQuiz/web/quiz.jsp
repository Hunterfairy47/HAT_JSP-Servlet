<%-- 
    Document   : luyenthi
    Created on : Mar 17, 2021, 11:11:24 PM
    Author     : Admin
--%>
<%@page import="java.util.List"%>
<%@page import="model.Subject"%>
<%@page import="DAO.SubjectDAO"%>
<%@page import="model.Quiz"%>
<%@page import="DAO.QuizDAO"%>   
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8" />
        <meta http-equiv="X-UA-Compatible" content="IE=edge" />
        <title>Education &mdash; HAT</title>
        <meta name="viewport" content="width=device-width, initial-scale=1" />
        <meta
            name="description"
            content="Free HTML5 Website Template by freehtml5.co"
            />
        <meta
            name="keywords"
            content="free website templates, free html5, free template, free bootstrap, free website template, html5, css3, mobile first, responsive"
            />
        <meta name="author" content="freehtml5.co" />

        <!-- Facebook and Twitter integration -->
        <meta property="og:title" content="" />
        <meta property="og:image" content="" />
        <meta property="og:url" content="" />
        <meta property="og:site_name" content="" />
        <meta property="og:descript;ion" content="" />
        <meta name="twitter:title" content="" />
        <meta name="twitter:image" content="" />
        <meta name="twitter:url" content="" />
        <meta name="twitter:card" content="" />

        <link
            href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,600,700"
            rel="stylesheet"
            />
        <link
            href="https://fonts.googleapis.com/css?family=Roboto+Slab:300,400"
            rel="stylesheet"
            />

        <!-- Animate.css -->
        <link rel="stylesheet" href="css/animate.css" />
        <!-- Icomoon Icon Fonts-->
        <link rel="stylesheet" href="css/icomoon.css" />
        <!-- Bootstrap  -->
        <link rel="stylesheet" href="css/bootstrap.css" />

        <!-- Magnific Popup -->
        <link rel="stylesheet" href="css/magnific-popup.css" />

        <!-- Owl Carousel  -->
        <link rel="stylesheet" href="css/owl.carousel.min.css" />
        <link rel="stylesheet" href="css/owl.theme.default.min.css" />

        <!-- Flexslider  -->
        <link rel="stylesheet" href="css/flexslider.css" />

        <!-- Pricing -->
        <link rel="stylesheet" href="css/pricing.css" />

        <!-- Theme style  -->
        <link rel="stylesheet" href="css/style.css" />        
        <link rel="stylesheet" href="css/luyenthi.css" />


        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.2/css/all.min.css"/>

        <!-- Modernizr JS -->
        <script src="js/modernizr-2.6.2.min.js"></script>
        <!-- FOR IE9 below -->
        <!--[if lt IE 9]>
          <script src="js/respond.min.js"></script>
        <![endif]-->
    </head>
    <body>
        <div id="page">
            <%
                SubjectDAO subjectDAO = new SubjectDAO();
                QuizDAO quizDAO = new QuizDAO();
                String SubjectID = "";
                if (request.getParameter("subject") != null) {
                    SubjectID = request.getParameter("subject");
                }
                String sub = request.getParameter("subject");
                List<Quiz> list = null;
                if (sub.trim().equals("all")) {
                    list = quizDAO.getListQuiz();
                } else {
                    int sid = Integer.parseInt(sub.trim());
                    list = quizDAO.getListQuizBySubject(sid);
                }              
            %>  
            <jsp:include page="header.jsp"></jsp:include>    
                <div class="breadcrumb-wrap">
                    <div class="container-fluid">
                        <ul class="breadcrumb">
                            <li class="breadcrumb-item"><a href="index.jsp">Trang chủ</a></li>
                            <li class="breadcrumb-item">Thi THPT QG</li>
                        </ul>
                    </div>
                </div>

                <div id="fh5co-course">
                    <div class="container">
                        <div class="animate-box mb-5">
                            <div class="heading_luyenthi text-center">
                                <h2>Luyện thi trắc nghiệm online - Miễn phí</h2>
                            </div>
                            <div class="menu_monthi" id="menu_monthi">
                                <a href="quiz.jsp?subject=all">
                                    <button class="btn monthiactive">
                                        <i class="fa fa-graduation-cap"></i>
                                        Tất cả
                                        <span>(100)</span>
                                    </button>
                                </a>
                            <%
                                for (Subject s : subjectDAO.getListSubject()) {
                            %>
                            <a href="quiz.jsp?subject=<%=s.getSubjectID()%>">
                                <button class="btn">
                                    <i class="<%=s.getIcon()%>"></i>
                                    <%=s.getSubjectName()%>
                                    <span>(100)</span>
                                </button>
                            </a>
                            <%
                                }
                            %> 
                        </div>
                    </div>
                    <div class="row">
                        <%
                            for (Quiz q : list) {
                        %>    
                        <div class="col-md-6 animate-box">
                            <div class="course">
                                <a href="detail.jsp" class="course-img" style="background-image: url(<%=q.getImage()%>)"></a>
                                <div class="desc">
                                    <h3>
                                        <a href="detail.jsp"><%=q.getQuizName()%></a>                                        
                                    </h3>
                                    <p>
                                        <span>
                                            <i class="fa fa-bars"> </i>
                                            <a href="">Môn <%=q.getSubject()%></a>
                                        </span>
                                        <span>
                                            <i class="fa fa-question-circle"> </i>
                                            Số câu hỏi: <%=q.getTotalQuestion()%> câu
                                        </span>
                                        <span>
                                            <i class="fa fa-clock"> </i>
                                            Thời gian: <%=q.getTime()%> phút
                                        </span>
                                        <span>
                                            <i class="fa fa-eye"> </i>
                                            Lượt xem: 9999
                                        </span>
                                        <span>
                                            <i class="far fa-edit"></i>
                                            Đăng tải <%=q.getCreateDate()%>
                                        </span>
                                    </p>
                                    <span>
                                        <a href="detail.jsp" class="btn btn-primary btn-sm btn-course"> xem chi tiết</a>                                                                                  
                                    </span>
                                </div>
                            </div>
                        </div>
                        <%
                            }
                        %>
                    </div>
                </div>
                <ul class="pagination">
                    <li class="page-item">
                        <a class="page-link" href="#" aria-label="Previous">
                            <span aria-hidden="true">&laquo;</span>
                            <span class="sr-only">Previous</span>
                        </a>
                    </li>
                    <li class="page-item"><a class="page-link" href="#">1</a></li>
                    <li class="page-item"><a class="page-link" href="#">2</a></li>
                    <li class="page-item"><a class="page-link" href="#">3</a></li>
                    <li class="page-item">
                        <a class="page-link" href="#" aria-label="Next">
                            <span aria-hidden="true">&raquo;</span>
                            <span class="sr-only">Next</span>
                        </a>
                    </li>
                </ul>
            </div>
            <jsp:include page="footer.jsp"></jsp:include>
        </div>
        <div class="gototop js-top">
            <a href="#" class="js-gotop"><i class="icon-arrow-up"></i></a>
        </div>

        <!-- jQuery -->
        <script src="js/jquery.min.js"></script>
        <!-- jQuery Easing -->
        <script src="js/jquery.easing.1.3.js"></script>
        <!-- Bootstrap -->
        <script src="js/bootstrap.min.js"></script>
        <!-- Waypoints -->
        <script src="js/jquery.waypoints.min.js"></script>
        <!-- Stellar Parallax -->
        <script src="js/jquery.stellar.min.js"></script>
        <!-- Carousel -->
        <script src="js/owl.carousel.min.js"></script>
        <!-- Flexslider -->
        <script src="js/jquery.flexslider-min.js"></script>
        <!-- countTo -->
        <script src="js/jquery.countTo.js"></script>
        <!-- Magnific Popup -->
        <script src="js/jquery.magnific-popup.min.js"></script>
        <script src="js/magnific-popup-options.js"></script>
        <!-- Count Down -->
        <script src="js/simplyCountdown.js"></script>
        <!-- Main -->
        <script src="js/main.js"></script>
        <script>
            var d = new Date(new Date().getTime() + 1000 * 120 * 120 * 2000);

            // default example
            simplyCountdown(".simply-countdown-one", {
                year: d.getFullYear(),
                month: d.getMonth() + 1,
                day: d.getDate(),
            });

            //jQuery example
            $("#simply-countdown-losange").simplyCountdown({
                year: d.getFullYear(),
                month: d.getMonth() + 1,
                day: d.getDate(),
                enableUtc: false,
            });
        </script>
    </body>
</html>
