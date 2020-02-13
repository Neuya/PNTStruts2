<%@ taglib prefix="s" uri="/struts-tags" %>
<%--
  Created by IntelliJ IDEA.
  User: o2185762
  Date: 13/02/2020
  Time: 14:05
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title><s:text name="confirmationParis.titre"></s:text></title>
</head>
<br>
<h1><s:text name="confirmationParis.titre"></s:text></h1>
<s:text name="confirmationParis.matchDe"></s:text> <s:property value="match.sport"></s:property><br></br>
<s:text name="parisOuverts.opposant"> </s:text><s:property value="match.equipe1"></s:property> à <s:property value="match.equipe2"></s:property><br></br>
<s:text name="confirmationParis.date"></s:text><s:property value="match.quand"></s:property><br>
<s:form action="confirmationParis">
    <s:select name="vainqueur" list="{match.equipe1,match.equipe2,'nul'}" key="confirmationParis.select"></s:select>
    <s:textfield type="number" name="montant" key="confirmationParis.montant"></s:textfield>
    <s:submit key="confirmationParis.parier"></s:submit>
</s:form>
<s:a action="accueil"><s:text name="accueil.retourAccueil"></s:text></s:a>
</body>
</html>
