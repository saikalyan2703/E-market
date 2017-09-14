<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="navbar.jsp"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>My Cart</title>
        <link rel="stylesheet" href="styles/main.css">
        <script src="script/cart.js"></script>
    </head>
    
    <body>
        <div class="container">
           
            <c:if test="${cartItemsList==null or cartItemsList.isEmpty()}">
                <div class="jumbotron" id="jumbo">
                    <h1 class="col-md-offset-3">No items in Cart</h1>      
                </div>
            </c:if>
            
            <c:if test="${cartItemsList!=null and !cartItemsList.isEmpty()}">
                <div class="row">

                <c:forEach var="itemslist" items="${cartItemsList}">
                    <div class="col-md-offset-1 col-md-3" id="somestyle">
                    <div class="card" id="solo">
                        <img class="card-img-top" src="getimage.jsp?item=${itemslist.item_id}" height="200" width="200"  alt="Card image cap">

                        <div class="card-block" id="block2">
                          <h4 class="card-title"><c:out value="${itemslist.name}" /></h4>
                          <p class="card-text"><c:out value="${itemslist.description}" /></p>
                          <button class="btn btn-danger col-md-offset-4" name="${itemslist.item_id}">Remove from cart</button>
                        </div>
                  </div>
                          </div>
                          </c:forEach>


                    </div>
            </c:if>
            
        </div>
    </body>
</html>
