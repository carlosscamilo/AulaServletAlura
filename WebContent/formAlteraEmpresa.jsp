<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<c:url value="/alteraEmpresa" var="linkServletAlteraEmpresa"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Alterando uma empresa</title>
</head>
<body>
	
	
	
	<form action="${linkServletAlteraEmpresa}" method="post">
	
		Nome: <input type="text" name="nome" value="${empresa.nome}">
	
		Data:	  <input type="text" name="dataAbertura" value="<fmt:formatDate value="${empresa.dataAbertura}" pattern="dd/MM/yyyy"/>">
		
		<input type="hidden" name="id" value="${empresa.id}" >
		
		<input type="submit">
		
		
	</form>

</body>
</html>