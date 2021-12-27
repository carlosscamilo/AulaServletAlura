<%@ page import="java.util.List, br.com.alura.gerenciador.servlet.Empresa" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Lista de empresas cadastradas</title>
</head>
<body>
        <c:if test= "${not empty nomeEmpresa}">
           <h1> Empresa ${ nomeEmpresa } cadastrada com sucesso!</h1>
             
        </c:if>

        <c:if test= "${empty nomeEmpresa}">
            Nenhuma empresa cadastrada!
        </c:if>
    <br/>
        
	<h1>Lista de empresas cadastradas</h1>
	<br/> 
	<ul>
		<c:forEach items="${empresas}" var="empresa">
			
			<li> ${empresa.nome} - <fmt:formatDate value="${empresa.dataAbertura}" pattern="dd/MM/yyyy"/>  
			
			- <a href="/gerenciador/mostraEmpresa?id=${empresa.id}">Editar</a> 
			
			- <a href="/gerenciador/removeEmpresa?id=${empresa.id}">Remover</a> 
			
			</li>
		</c:forEach>
	</ul>
	
</body>
</html>