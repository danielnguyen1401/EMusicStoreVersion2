<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@include file="/WEB-INF/views/template/header.jsp" %>


<div class="container wrapper">
    <div class="container">
        <div class="page-header">
            <h1>Product Details</h1>

            <p class="lead">The Information Detail of Products</p>

        </div>
        <div class="row">
            <div class="col-md-5">
                <img src="<c:url value="/resources/images/${product.productId}.png"/>" alt="image"
                     style="width: 100%;">
            </div>
            <div class="col-md-5">
                <h3>${product.productName}</h3>

                <p><strong>Description</strong> : ${product.productDescription}</p>

                <p><strong>Manufacturer</strong> : ${product.productManufacturer}</p>

                <p><strong>Category</strong> : ${product.productCategory}</p>

                <p><strong>Condition</strong> : ${product.productCondition}</p>

                <p><strong>Price</strong> : ${product.productPrice}</p>
            </div>
        </div>
<%@include file="/WEB-INF/views/template/footer.jsp" %>