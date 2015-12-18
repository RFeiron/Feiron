<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="t" tagdir="/WEB-INF/tags" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<t:template>
    <a href="/">Главная</a>

    <c:if test="${!empty lists}">
        <table class="book-list-table">
            <tr>
                <th>Название</th>
                <th>Рабочая ширина</th>
                <th>Общая ширина</th>

                <th>&nbsp;</th>

            </tr>
            <c:forEach items="${lists}" var="pn">
                <tr>
                    <td>${pn.name}</td>
                    <td>${pn.work_b}</td>
                    <td>${pn.base_b}</td>
                    <td><a href="javascript:PnUtils.deletePn(${pn.id})">Delete</a></td>
                </tr>
            </c:forEach>
        </table>
    </c:if>

    <a href="addProduct">Add Product</a>
</t:template>
