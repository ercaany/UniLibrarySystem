<%-- 
    Document   : kiosk
    Created on : 15.Nis.2016, 00:17:18
    Author     : ercan
--%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Kiosk Makinesi</title>
</head>
<body>
    <div id="form">
        İşlem yapmak istediğiniz kart no ve envanter no giriniz.
        <form name="operate" method="post">
            <table id="choosetable">
                <tr>
                    <td>Kart no:</td>
                    <td><input type="text" value="" name="cardNo"/></td>
                </tr>
                <tr>
                    <td>Envanter no:</td>
                    <td><input type="text" value="" name="itemNo"/></td>
                </tr>
                <tr>
                    <td colspan="2" align="left"><input type="submit" name="borrow" value="Ödünç Al" formaction="borrowservlet"></td>
                    <td colspan="2" align="right"><input type="submit" name="return" value="İade Et" formaction="returnservlet"></td>
                </tr>
            </table>
        </form>
    </div>
    <c:choose>
	<c:when test="${state eq 0}">
		<div id="alert2">
                    -> Böyle bir akıllı kart bulunamadı. Lütfen kart numaranızı tekrar giriniz.
		</div>
	</c:when>
	<c:when test="${state eq 1}">
		<div id="alert2">
                    -> Böyle bir envanter bulunamadı. Lütfen envanter numaranızı tekrar giriniz.
		</div>
	</c:when>
	<c:when test="${state eq 2}">
		<div id="alert">
                    -> Ödünç almaya çalıştığınız envanter boşta değildir. <br>
                    Bu envanteri ödünç alamazsınız
		</div>
	</c:when>
        <c:when test="${state eq 3}">
		<div id="alert">
                    -> Envanter ödünç alma kapasiteniz dolmuştur.
		</div>
	</c:when>
    </c:choose>
</body>
</html>
