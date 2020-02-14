<%@ taglib prefix="s" uri="/struts-tags" %>
<%--
  Created by IntelliJ IDEA.
  User: o2185762
  Date: 14/02/2020
  Time: 13:53
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<s:form action="ajoutMatch">
    <s:select name="sport" list="{'Foot','Rugby'}"></s:select>
    <s:textfield name="equipe1" key="ajoutMatch.equipe1"></s:textfield>
    <s:textfield name="equipe2" key="ajoutMatch.equipe2"></s:textfield>
    <s:textfield name="date" key="ajoutMatch.dateMatch"></s:textfield>
    <s:submit key="ajoutMatch.submit"></s:submit>
</s:form>
<s:a action="accueil"><s:text name="accueil.retourAccueil"></s:text></s:a>
</body>
</html>
