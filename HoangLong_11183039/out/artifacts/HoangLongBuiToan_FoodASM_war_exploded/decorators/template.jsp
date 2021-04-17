<?xml version="1.0" encoding="UTF-8" ?>
<%@ taglib uri="http://www.opensymphony.com/sitemesh/decorator" prefix="dcr" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
    <title><dcr:title></dcr:title></title>
    <dcr:head></dcr:head>
</head>
<body>
<%@include file="header.jsp"%>
<dcr:body />
<%@include file="footer.jsp"%>
</body>
</html>
