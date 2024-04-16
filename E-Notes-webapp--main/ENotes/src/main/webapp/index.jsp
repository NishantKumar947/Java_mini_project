<html>
<head>
<title>Home page</title>
<%@ include file="all_component/allcss.jsp" %>
<style type="text/css">
.back-img{
    background : url("img/note.jpg");
    background-size: cover;
    width: 100%;
    height: 100vh;
}
 
	.btn:hover{
		 background-color: #e3f2fd;
		 color: black;
	}
 
</style>
</head>

<body>
    <%@ include file="all_component/navbar.jsp" %>
    
    <div class="container-fluid back-img">
        <div class="text-black text-center" >
            <h1><i class="fa-solid fa-book" style="padding: 50px 0px 20px"></i> E-Notes Save your notes</h1>
            <a href="login.jsp" class="btn btn-light" style="margin-right:10px"><i class="fa-solid fa-right-to-bracket"></i> Login </a>
            <a href="register.jsp" class="btn btn-light"><i class="fa fa-user-plus"></i> Register </a>
        </div>
    </div>



    <%@ include file="all_component/footer.jsp" %>
</body>
</html>