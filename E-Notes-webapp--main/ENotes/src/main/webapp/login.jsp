<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page isELIgnored = "false" %>
<html>
<head>
<title>login page</title>
<%@ include file="all_component/allcss.jsp" %>
</head>
<style>
  .card-header{
  	background-color: #e3f2fd; 
  	border-radius: 10px;
    box-shadow: 5px 5px 15px hsl(0, 0%, 0%, 0.5);
  }
  .card-header:hover{
  	border: 2px solid #bcda13;
  	transition: all 0.5s ease;
  }
  .card-body{ 
  	border-radius: 10px;
    box-shadow: 5px 5px 15px hsl(0, 0%, 0%, 0.5);
    border: 4px solid transparent
  }
  .card-body:hover{
  	border: 2px solid #bcda13;
  	transition: all 0.5s ease
  }
</style>
<body ">
    <% session.removeAttribute("user"); %>
    <%@ include file="all_component/navbar.jsp" %>
    <div class="container-fluid div-color"> 
        <div class="row" >
            <div class="col-md-4 offset-md-4">
                <div class="card mt-5 md-6">
                    <div class="card-header text-center text-black " >
                        <i class="fa-solid fa-right-to-bracket fa-3x"></i>
                        <h4> Login </h4>
                    </div>
                    <c:choose >
                        <c:when test="${not empty sessionScope['loginfail']}">
                            <div class="alert alert-danger" role="alert">${sessionScope['loginfail']}</div>
                            <%
                                session.removeAttribute("loginfail");
                            %>
                        </c:when>
                        <c:when test="${not empty sessionScope['loginMustMsg']}">
                            <div class="alert alert-danger" role="alert">${sessionScope['loginMustMsg']}</div>
                            <%
                                session.removeAttribute("loginMustMsg");
                            %>
                        </c:when>
                    </c:choose>
                    <div class="card-body">
                        <form method="post" action="logUser">
                          <div class="form-group">
                            <label for="exampleInputEmail1">Email address</label>
                            <input type="email" class="form-control" id="exampleInputEmail1" name="userEmail">
                          </div>
                          <div class="form-group">
                            <label for="exampleInputPassword1">Password</label>
                            <input type="password" class="form-control" id="exampleInputPassword1" name="userPassword">
                          </div>
                          <button type="submit" class="btn btn-primary badge-pill btn-block">Login</button>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <br>
    <br>
    <br><br> 
     <div>
    <%@ include file="all_component/footer.jsp" %>
    </div>
</body>
</html>