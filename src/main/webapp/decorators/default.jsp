<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.opensymphony.com/sitemesh/decorator" prefix="dec"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
 
<c:set var="url" value="${pageContext.request.contextPath}"></c:set>
 
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
 
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<link rel="stylesheet" type="text/css" href="${url}/resources/css/bootstrap.min.css"/>
	<link rel="stylesheet" type="text/css" href="${url}/resources/css/springmvc.css"/>
	<!-- jquery must put before js files of bootstrap -->
	<script src="${url}/resources/js/jquery.min.js"></script>
	<script src="${url}/resources/js/bootstrap.min.js"></script>	
	<title>
		<dec:title default="Web Page" />
	</title>
	<dec:head />
</head>
<body>
<div class="container bs-docs-container edu">
    <div id="m_header">            
    	<%@ include file="header.jsp"%>  
    </div>        		    
    <!-- /header -->
    <div id="m_menu_top">            
    	<%@ include file="menu-top.jsp"%>  
    </div>
    <!-- /top menu -->
    <div id="m_container">
    	<!-- if not using sidebar, only add <dec:body /> in here -->
    	<div id="content">
	 		<div class="row">
	 			<div class="col-sm-8">
	 				<dec:body />
		   		</div>
		   		<div class="col-sm-4" style="border-left: 1px solid #fff; min-height: 300px;">
		   			<%@ include file="sidebar.jsp"%>
		   		</div>
	 		</div>	 	   
		</div>        
    </div>
    <!-- /main -->
    <div id="m_footer">
		<%@ include file="footer.jsp"%>
    </div>
    <!-- /footer -->
</div>    
</body>
</html>