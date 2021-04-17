<%--
  Created by IntelliJ IDEA.
  User: dell
  Date: 15-04-2021
  Time: 6:20 PM
  To change this template use File | Settings | File Templates.
--%>
<?xml version="1.0" encoding="UTF-8" ?>
<%@ taglib uri="http://www.opensymphony.com/sitemesh/decorator" prefix="dcr" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
    <title><dcr:title></dcr:title></title>
    <dcr:head></dcr:head>
</head>
<body>
<%@include file="menu_header.jsp"%>
<dcr:body />
<%@include file="footer.jsp"%>
</body>
</html>
