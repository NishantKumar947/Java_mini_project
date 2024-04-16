<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page isELIgnored = "false" %>
<html>
<head>
<title>register page</title>
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
  	transition: all 0.5s ease;
	}
</style>
<body>
    <%@ include file="all_component/navbar.jsp" %>
    <div class="container-fluid div-color">
        <div class="row">
            <div class="col-md-4 offset-md-4">
                <div class="card mt-5 md-6">
                    <div class="card-header text-center text-black">
                        <i class="fa-solid fa-circle-user fa-3x"></i>
                        <h4> Registration </h4>
                    </div>
                        <c:choose>
                            <c:when test="${not empty sessionScope['reg-succ']}">
                                <div class="alert alert-success" role="alert">${sessionScope['reg-succ']} Login <a href="login.jsp">Click here</a></div>
                                <%
                                    session.removeAttribute("reg-succ");
                                %>
                            </c:when>
                            <c:when test="${not empty sessionScope['reg-fail']}">
                                <div class="alert alert-danger" role="alert">${sessionScope['reg-fail']}</div>
                                <%
                                    session.removeAttribute("reg-fail");
                                %>
                            </c:when>
                        </c:choose>
                    <div class="card-body">
                        <form method="post" action="regUser">
                          <div class="form-group">
                            <label for="exampleInputName">Full name</label>
                            <input type="text" class="form-control" id="exampleInputName" name="userFullName">
                          </div>
                          <div class="form-group">
                            <label for="exampleInputEmail1">Email address</label>
                            <input type="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" name="userEmail">
                            <small id="emailHelp" class="form-text text-muted">We'll never share your email with anyone else.</small>
                          </div>
                          <div class="form-group">
                            <label for="exampleInputPassword1">Password</label>
                            <input type="password" class="form-control" id="exampleInputPassword1" name="userPassword">
                          </div>
                          <button type="submit" class="btn btn-primary badge-pill btn-block">Register</button>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
 <br>


    <%@ include file="all_component/footer.jsp" %>
</body>
</html>