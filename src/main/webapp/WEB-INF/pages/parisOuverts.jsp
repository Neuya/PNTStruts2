<%@ taglib prefix="s" uri="/struts-tags" %>
<%--
  Created by IntelliJ IDEA.
  User: o2185762
  Date: 13/02/2020
  Time: 13:40
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h1><s:text name="parisOuverts.titre"></s:text></h1>
<ul>
<s:iterator value="%{matchsEnCours}" var="match">
    <li>Sport : <s:property value="#match.sport"></s:property> <s:text name="parisOuverts.opposant"></s:text>
        <s:property value="#match.equipe1"></s:property> à
    <s:property value="#match.equipe2"></s:property> le
    <s:property value="#match.quand"></s:property>
    <s:url var="url" action="parier"><s:param name="idMatch" value="#match.idMatch"></s:param></s:url>
    <s:a href="%{url}" ><s:text name="parisOuverts.parierBouton"></s:text></s:a></li>
</s:iterator>

</ul>
<s:a action="accueil"><s:text name="accueil.retourAccueil"></s:text></s:a>
</body>
</html>
