<%-- 
    Document   : addbalance
    Created on : 09.May.2016, 00:25:50
    Author     : must
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Bakiye Yükle</title>
</head>
<body>
    <h1>Akıllı kartınıza para yükleyin</h1>
    
    <form method="POST" action="addbalanceservlet">
        Kredi kartı numaranız</br>
        <input type="text" name="cardNo"/></br>
        Yüklemek istediğiniz değer</br>
        <input type="text" name="amount"/></br></br>
        
        <input type="submit" value="Yükle"/>
    </form>
    <c:choose>
        <c:when test="${result eq 0}">
            -> Bakiye yükleme işlemi gerçekleştirilemedi. <br>
            Bakiyeniz +0 olacak şekilde para yükleyebilirsiniz.
        </c:when>
        <c:when test="${result eq 1}">
            -> Bakiye yükleme işlemi başarıyla gerçekleşti. <br>
            Mevcut bakiyeniz : ${balance}
        </c:when>
    </c:choose>
    
    <%-- AddBalanceServletteki yorumları yazdır --%>
</body>
</html>