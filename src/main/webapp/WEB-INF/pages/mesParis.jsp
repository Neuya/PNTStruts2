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
<script>
    function confirmBox() {
        var answer;
        answer = window.confirm("Etes-vous sur de vouloir annuler?");
        if (answer == true) {
            return true;
        } else {
            return false;
        }
    }
</script>
<body>
<h1><s:text name="mesParis.titre"></s:text></h1>
<s:iterator value="%{mesParisCourants}" var="pari">
<ul>
    <li>Sport : <s:property value="#pari.match.sport"></s:property>
    <s:property value="#pari.match.equipe1"></s:property> vs
    <s:property value="#pari.match.equipe2"></s:property> Pronostic :
    <s:property value="#pari.vainqueur"></s:property> Montant :<s:property value="#pari.montant"></s:property>
        <s:url var="url" action="annulerPari"><s:param name="idPariAnnuler" value="#pari.idPari"></s:param></s:url>
        <s:if test="%{match.isCommenceOuFini()}">
        <s:a href="%{url}" onclick="return confirmBox();" ><s:text name="mesParis.annulerPari"></s:text></s:a>
        </s:if>
    </li>
</ul>
</s:iterator>
<s:a action="accueil"><s:text name="accueil.retourAccueil"></s:text></s:a>
</body>
</html>
