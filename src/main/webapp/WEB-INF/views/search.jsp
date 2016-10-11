<%@ page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Customer Enrichment</title>
</head>
<body>
	<div style="padding:70px">
	<h2>Customer Search</h2>
	<div class="row" style="width:50%">
		<form method="get" action=<%= request.getContextPath()+"/search"%>>
			<div >
				<!-- <input type=text id="searchString" name="searchString" /> -->
				  <input style="width: 300px;height: 20px; border-radius: 5px;" type="text" name="searchString" placeholder="Search customer by phone number">
				  <button id="button-id" type="submit" style="color:blue">Search</button>
			</div>
			
<!--             <div style="float:right">
				<button id="button-id" type="submit" style="color:red">Search</button>
			</div> -->
			
		</form>
	</div>
	</div>
</body>
</html>
