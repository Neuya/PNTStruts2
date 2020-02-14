<%@ taglib prefix="s" uri="/struts-tags" %>
<%--
  Created by IntelliJ IDEA.
  User: o2185762
  Date: 14/02/2020
  Time: 13:56
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h1><s:text name="listeMatch.titre"></s:text></h1>
<ul>
    <s:iterator value="%{allMatch}" var="match">
        <li>Sport : <s:property value="#match.sport"></s:property> <s:text name="parisOuverts.opposant"></s:text>
            <s:property value="#match.equipe1"></s:property> à
            <s:property value="#match.equipe2"></s:property> le
            <s:property value="#match.quand"></s:property>
           </li>
    </s:iterator>
</ul>
<s:a action="accueil"><s:text name="accueil.retourAccueil"></s:text></s:a>
</body>
</html>
