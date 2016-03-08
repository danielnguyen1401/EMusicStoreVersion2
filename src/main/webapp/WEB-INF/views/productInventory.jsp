<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@include file="/WEB-INF/views/template/header.jsp" %>


<div class="container wrapper">
    <div class="container">
        <div class="page-header">
            <h1>Product Inventory Page</h1>

            <p class="lead">This is product inventory page</p>

        </div>

        <table class="table table-striped table-hover">
            <thead>
            <tr class="bg-success">
                <th>Photo Thumb</th>
                <th>Product Name</th>
                <th>Product Category</th>
                <th>Product Condition</th>
                <th>Product Price</th>
                <th></th>
            </tr>
            </thead>
            <c:forEach items="${products}" var="product">
                <tr>
                    <td><img src="<c:url value="/resources/images/${product.productId}.png"/>" style="width: 100%;" alt="image"></td>
                    <td>${product.productName}</td>
                    <td>${product.productCategory}</td>
                    <td>${product.productCondition}</td>
                    <td>${product.productPrice} USD</td>
                    <td>
                        <a href="<spring:url value="/productList/viewProduct/${product.productId}"/>"/>
                        <span class="glyphicon glyphicon-info-sign"></span>

                        <a href="<spring:url value="/admin/productInventory/deleteProduct/${product.productId}"/>"/>
                        <span class="glyphicon glyphicon-trash"></span>

                        <a href="<spring:url value="/admin/productInventory/editProduct/${product.productId}"/>"/>
                        <span class="glyphicon glyphicon-edit"></span>
                    </td>
                </tr>
            </c:forEach>
        </table>

        <a href="<spring:url value="/admin/productInventory/addProduct"/>" class="btn btn-primary">Add Product</a>

<%@include file="/WEB-INF/views/template/footer.jsp" %>