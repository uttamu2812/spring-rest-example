<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Spring Rest Example</title>
</head>
<body>

<%
String uri = "http://localhost:9090/spring-rest-example";
org.springframework.web.client.RestTemplate restTemplate = new org.springframework.web.client.RestTemplate();
com.journaldev.spring.model.Employee emp = restTemplate.getForObject("/spring-rest-example-0.0.1-SNAPSHOT/rest/emp/dummy", com.journaldev.spring.model.Employee.class);
%>

<%="ID="+emp.getId()+",Name="+emp.getName()+",CreatedDate="+emp.getCreatedDate() %>
</body>
</html>
