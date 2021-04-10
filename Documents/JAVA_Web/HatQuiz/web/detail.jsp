<%-- 
    Document   : detail
    Created on : Mar 21, 2021, 3:54:23 PM
    Author     : Admin
--%>

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
        <meta property="og:description" content="" />
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
            <jsp:include page="header.jsp"></jsp:include>    
                <div class="breadcrumb-wrap">
                    <div class="container-fluid">
                        <ul class="breadcrumb">
                            <li class="breadcrumb-item"><a href="index.jsp">Trang chủ</a></li>
                            <li class="breadcrumb-item"><a href="luyenthi.jsp">Thi THPT QG</a></li>
                            <li class="breadcrumb-item">Chi tiết đề thi</li>
                        </ul>
                    </div>
                </div>

                <div class="container">
                    <div class="row">
                        <div class="detail col-md-9">
                            <h3 class="m-0">Đề thi thử THPTQG năm 2021 môn Tiếng Anh</h3>
                            <p>
                                <span>
                                    <i class="fa fa-clock"> </i>
                                    Cập nhật: 07:24 Ngày 18/03/2021
                                </span>  
                            </p>
                            <div class="detail-question">
                                <span class="mr-2"> 
                                    <i class="fa fa-bars"> </i>
                                    Môn:&nbsp;<a href="">Tiếng Anh</a>
                                </span>                            
                                <span class="mr-2">
                                    <i class="fa fa-list-alt"> </i>
                                    Số câu hỏi: 40 câu
                                </span>  
                                <span class="mr-2">
                                    <i class="fa fa-clock"> </i>
                                    Thời gian: 10 phút
                                </span>
                            </div>

                            <div class="regulation">
                                <h3>Hướng dẫn làm bài trắc nghiệm</h3>
                                <div class="instruction-box">
                                    1. Đợi đến khi đến thời gian làm bài
                                    <br/>
                                    <hr/>
                                    2. Click vào nút <b>Bắt đầu làm bài</b> để tiến hành làm bài thi
                                    <br/>
                                    <hr/>
                                    3. Ở mỗi câu hỏi, chọn đáp án đúng
                                    <br/>
                                    <hr/>
                                    4. Hết thời gian làm bài, hệ thống sẽ tự thu bài. Bạn có thể nộp bài trước khi thời gian kết thúc bằng cách nhấn nút <b>Nộp bài</b>
                                </div>
                                <p class="note m-0">
                                    Lưu ý:
                                </p>
                                <div class="note-content">
                                    Những câu <b>chưa chọn đáp án</b> sẽ được tính là <b>câu trả lời sai</b>
                                    <br/>
                                    Nếu bạn <b>thoát ra</b> trong lúc chưa hết thời gian làm bài thì kết quả <b>sẽ không được tính</b>
                                </div>
                            </div>
                            <div class="btn-group-do-exam">
                                <input class="btn-do-exam" type="button" value="Bắt đầu làm bài" />
                            </div>
                        </div>                   
                        <div class="charts col-md-3 p-0">
                            <header class="card-header">
                                <h2 class="m-0">Bảng xếp hạng</h2>
                            </header>
                            <div class="exam-top-list">
                                <div class="top-header">
                                    <div class="col name">Tên</div>
                                    <div class="col">Điểm</div>
                                    <div class="col">Thời gian</div>
                                </div>
                                <div class="exam-item">
                                    <div class="row-content">
                                        <div class="col name top1">
                                            <span>tonton</span>
                                        </div>
                                        <div class="col">10đ</div>
                                        <div class="col">40:35</div>
                                    </div>
                                </div>
                                <hr/>
                                <div class="exam-item">
                                    <div class="row-content">
                                        <div class="col name top2">
                                            <span>hoanghuynh</span>
                                        </div>
                                        <div class="col">9đ</div>
                                        <div class="col">42:75</div>
                                    </div>
                                </div>
                                <hr/>
                                <div class="exam-item">
                                    <div class="row-content">
                                        <div class="col name top3">
                                            <span>minhhoang</span>
                                        </div>
                                        <div class="col">8đ</div>
                                        <div class="col">44:75</div>
                                    </div>
                                </div>
                                <hr/>
                                <div class="exam-item">
                                    <div class="row-content">
                                        <div class="col name top4">
                                            <span>annguyen</span>
                                        </div>
                                        <div class="col">7đ</div>
                                        <div class="col">44:75</div>
                                    </div>
                                </div>
                                <hr/>
                            </div>
                        </div>
                    </div>
                </div>

                <div id="fh5co-course">
                    <div class="container">
                        <div class="animate-box mb-5">
                            <div class="heading_luyenthi text-center">
                                <h2>Đề thi liên quan</h2>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-6 animate-box">
                                <div class="course">
                                    <a
                                        href="#"
                                        class="course-img"
                                        style="background-image: url(data:image/jpeg;base64,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)"
                                        >
                                    </a>
                                    <div class="desc">
                                        <h3>
                                            <a href="#"
                                               >THI THỬ 2018 – CHUYÊN LÊ QUÝ ĐÔN – ĐIỆN BIÊN (LẦN 2)
                                            </a
                                            >
                                        </h3>
                                        <p>
                                            <span>
                                                <i class="fa fa-bars"> </i>
                                                <a href="">Môn hóa học</a>
                                            </span>
                                            <span>
                                                <i class="fa fa-question-circle"> </i>
                                                Số câu hỏi: 40 câu
                                            </span>
                                            <span>
                                                <i class="fa fa-clock"> </i>
                                                Thời gian: 10 phút
                                            </span>
                                            <span>
                                                <i class="fa fa-eye"> </i>
                                                Lượt xem: 9999
                                            </span>
                                            <span>
                                                <i class="far fa-edit"></i>
                                                Đăng tải 09:30 06/09/2000
                                            </span>
                                        </p>
                                        <span
                                            ><a href="#" class="btn btn-primary btn-sm btn-course"
                                            >xem chi tiết</a
                                            ></span
                                        >
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-6 animate-box">
                                <div class="course">
                                    <a
                                        href="#"
                                        class="course-img"
                                        style="background-image: url(data:image/jpeg;base64,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)"
                                        >
                                    </a>
                                    <div class="desc">
                                        <h3>
                                            <a href="#"
                                               >THI THỬ 2018 – CHUYÊN LÊ QUÝ ĐÔN – ĐIỆN BIÊN (LẦN 2)
                                            </a
                                            >
                                        </h3>
                                        <p>
                                            <span>
                                                <i class="fa fa-bars"> </i>
                                                <a href="">Môn hóa học</a>
                                            </span>
                                            <span>
                                                <i class="fa fa-question-circle"> </i>
                                                Số câu hỏi: 40 câu
                                            </span>
                                            <span>
                                                <i class="fa fa-clock"> </i>
                                                Thời gian: 10 phút
                                            </span>
                                            <span>
                                                <i class="fa fa-eye"> </i>
                                                Lượt xem: 9999
                                            </span>
                                            <span>
                                                <i class="far fa-edit"></i>
                                                Đăng tải 09:30 06/09/2000
                                            </span>
                                        </p>
                                        <span
                                            ><a href="#" class="btn btn-primary btn-sm btn-course"
                                            >xem chi tiết</a
                                            ></span
                                        >
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-6 animate-box">
                                <div class="course">
                                    <a
                                        href="#"
                                        class="course-img"
                                        style="background-image: url(data:image/jpeg;base64,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)"
                                        >
                                    </a>
                                    <div class="desc">
                                        <h3>
                                            <a href="#"
                                               >THI THỬ 2018 – CHUYÊN LÊ QUÝ ĐÔN – ĐIỆN BIÊN (LẦN 2)
                                            </a
                                            >
                                        </h3>
                                        <p>
                                            <span>
                                                <i class="fa fa-bars"> </i>
                                                <a href="">Môn hóa học</a>
                                            </span>
                                            <span>
                                                <i class="fa fa-question-circle"> </i>
                                                Số câu hỏi: 40 câu
                                            </span>
                                            <span>
                                                <i class="fa fa-clock"> </i>
                                                Thời gian: 10 phút
                                            </span>
                                            <span>
                                                <i class="fa fa-eye"> </i>
                                                Lượt xem: 9999
                                            </span>
                                            <span>
                                                <i class="far fa-edit"></i>
                                                Đăng tải 09:30 06/09/2000
                                            </span>
                                        </p>
                                        <span
                                            ><a href="#" class="btn btn-primary btn-sm btn-course"
                                            >xem chi tiết</a
                                            ></span
                                        >
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-6 animate-box">
                                <div class="course">
                                    <a
                                        href="#"
                                        class="course-img"
                                        style="background-image: url(data:image/jpeg;base64,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)"
                                        >
                                    </a>
                                    <div class="desc">
                                        <h3>
                                            <a href="#"
                                               >THI THỬ 2018 – CHUYÊN LÊ QUÝ ĐÔN – ĐIỆN BIÊN (LẦN 2)
                                            </a
                                            >
                                        </h3>
                                        <p>
                                            <span>
                                                <i class="fa fa-bars"> </i>
                                                <a href="">Môn hóa học</a>
                                            </span>
                                            <span>
                                                <i class="fa fa-question-circle"> </i>
                                                Số câu hỏi: 40 câu
                                            </span>
                                            <span>
                                                <i class="fa fa-clock"> </i>
                                                Thời gian: 10 phút
                                            </span>
                                            <span>
                                                <i class="fa fa-eye"> </i>
                                                Lượt xem: 9999
                                            </span>
                                            <span>
                                                <i class="far fa-edit"></i>
                                                Đăng tải 09:30 06/09/2000
                                            </span>
                                        </p>
                                        <span
                                            ><a href="#" class="btn btn-primary btn-sm btn-course"
                                            >xem chi tiết</a
                                            ></span
                                        >
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
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
