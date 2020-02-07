<%@ taglib prefix="s" uri="/struts-tags" %>
<%--
  Created by IntelliJ IDEA.
  User: o2185762
  Date: 30/01/2020
  Time: 14:26
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title><s:text name="connexion.titre"></s:text></title>
</head>
<body>
<h1><s:text name="connexion.titre"></s:text></h1>
<s:form action="connexion">
    <s:textfield name="pseudo" key="connexion.pseudo"></s:textfield>
    <s:textfield name="password" key="connexion.password"></s:textfield>
    <s:submit key="connexion.bouton"></s:submit>
</s:form>
</body>
</html>