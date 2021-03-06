<%@ page import="java.io.*,java.util.*,java.sql.*"%>
<%@ page import="javax.servlet.http.*,javax.servlet.*" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <sql:setDataSource var="snapshot" driver="com.mysql.jdbc.Driver"
    url="jdbc:mysql://localhost/NCKH"
    user="root"  password="thaolac8996"/>

<sql:query dataSource="${snapshot}" var="result">
SELECT * from TaiKhoan;
</sql:query>
    
<!DOCTYPE html>
<html lang="en">

<head>
	<title> Example </title>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<script type="text/javascript" src="vendor/bootstrap.js"></script>
	<script type="text/javascript" src="1.js"></script>
	<link rel="stylesheet" href="vendor/bootstrap.css">
	<link rel="stylesheet" href="1.css">
	<link rel="stylesheet" href="vendor/font-awesome.css">
</head>

<body>
	<div class="page">
		<div class="menu">
			<div class="row">
				<div class="pictureMain">
					<img src="images/skpt_banner_2.jpg" class="img-responsive" alt="Image">
				</div>
				<div class="menuBar">
					<nav class="navbar navbar-default " role="navigation">
						<div class="container" id="container_menuBar">
							<div class="navbar-header">
								<button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-ex1-collapse">
									<span class="sr-only">Toggle navigation</span>
									<span class="icon-bar"></span>
									<span class="icon-bar"></span>
									<span class="icon-bar"></span>
								</button>
							</div>

							<!-- Collect the nav links, forms, and other content for toggling -->
							<div class="collapse navbar-collapse navbar-ex1-collapse" id="menuMain">
								<ul class="nav navbar-nav">
									<li><a href="#">Trang chủ</a></li>
									<li><a href="#">Biểu Mẫu</a></li>
									<li><a href="#">Liên Hệ</a></li>
									<li><a href="#">Hướng dẫn</a></li>
								</ul>
								<ul class="nav navbar-nav navbar-right">
									<li><a href="#"><span  style="color:blue">Admin</span></a></li>
									<li><a href="mainPage.jsp">Đăng xuất</a></li>
								</ul>
							</div>
							<!-- /.navbar-collapse -->
						</div>
					</nav>
				</div>
			</div>
		</div>
		<div class="svContent">
			<div class="row">
				<div class="col-md-2">
					<ul class="nav nav-pills nav-stacked" style="background:white;border-radius:3px">
						<li class="active" ><a class="list-group-item" href="#QLTK" data-toggle="pill">
							<span class="glyphicon glyphicon-user"></span> Quản lý tài khoản</a>
						</li>
					</ul>
				</div>
				<div class="col-md-10">
					<div class="tab-content">
						<div class="tab-pane active" id="QLTK">
							<div class="row" style=" margin-bottom: 7px;">
								<div class="QLyTK" style="background:white;height:380px;margin-right:15px;border-radius:3px;overflow:auto;">
									<h2 style="margin-top:0px;padding:5px;text-align:center;font-family:sans-serif;">QUẢN LÝ TÀI KHOẢN</h2>
									<a class="btn btn-default" href="Admin_ThemTK.jsp" role="button" style="float:right;
									margin:0px 5px 5px 0px;">Thêm tài khoản</a>
									<div class="ad_table_qltk" s>
										<table class="table table-striped table-hover" style="margin:0px 5px 0px 0px;">
											<thead class="thead-default">
												<tr class="success">
													<th><input type="checkbox" name="" id="input" value=""></th>
													<th>Tên tài khoản</th>
													<th>Mã số</th>
													<th>Tài khoản</th>
													<th>Quyền truy cập</th>
													<th>Ngành</th>
													<th>Chỉnh sửa</th>
													<th>Xóa </th>
												</tr>
											</thead>
											<tbody>
												<c:forEach var="row" items="${result.rows}">
												<tr>
													<th><input type="checkbox" name="" id="input" value=""></th>
													  <td><c:out value="${row.MaTK}"/></td>
 													  <td><c:out value="${row.HoTen}"/></td>
													<td>SinhVien2</td>
													<td>SinhVien</td>
													<td>CNTT</td>
													<td><a href="Admin_XemCTTK.jsp">Cập nhập</a></td>
													<td><a href="">Xóa</a></td>
												</tr>
												</c:forEach>
											</tbody>
										</table>
									</div>

								</div>
							</div>

						</div>
					</div>
				</div>
			</div>
			<div id='bttop'>
				<img src="images/backtotop.png" alt="backtotop" width="50px" height="50px">
			</div>
			  <footer style="margin-bottom:0px;margin-top:3px;">
            <pre style="margin-bottom:0px;" >
                Copyright@ Phòng nghiên cứu khoa học và quan hệ quốc tế
            </pre>
        </footer>
		</div>


</body>

</html>