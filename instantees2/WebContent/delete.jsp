

<jsp:include page="header2.jsp"></jsp:include>
<meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<center><h1>DELETE PANEL</h1></center>
<c:choose>
	
	<c:when test="${User eq null}">
	


<%@include file="./Adminlogin.jsp"%>



	</c:when>
	
	<c:otherwise>
<%@include file="./deletee.jsp"%>
	</c:otherwise>
</c:choose>

<jsp:include page="footer.jsp"></jsp:include>
