<%@ taglib prefix="s" uri="/struts-tags" %>
<%--
  Created by IntelliJ IDEA.
  User: o2185762
  Date: 07/02/2020
  Time: 15:18
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Mes Paris</title>
</head>
<body>
<s:iterator value="%{mesParisCourants}" var="pari">
    <ul>Sport : <s:property value="#pari.match.sport"></s:property>
    <s:property value="#pari.match.equipe1"></s:property> vs
    <s:property value="#pari.match.equipe2"></s:property> Pronostic :
    <s:property value="#pari.vainqueur"></s:property> Montant :
        <s:property value="#pari.montant"></s:property></ul>
</s:iterator>
</body>
</html>
