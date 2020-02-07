<%@ taglib prefix="s" uri="/struts-tags" %>
<html>
<head>
    <title><s:text name="accueil.titre"></s:text></title>
</head>
<body>
<h1><s:text name="accueil.titre"></s:text><s:property value="pseudo"></s:property></h1>
<ul>
    <li><s:a action="deconnexion"><s:text name="accueil.deconnexion"></s:text></s:a></li>
    <li><s:a action="parisOuverts"><s:text name="accueil.parisOuverts"></s:text></s:a></li>
    <li><s:a action="mesParis"><s:text name="accueil.mesParis"></s:text></s:a></li>
</ul>

</body>
</html>
