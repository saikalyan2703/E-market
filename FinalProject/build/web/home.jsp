<%@page import="java.util.List"%>
<%@page import="java.io.OutputStream"%>
<%@page import="java.io.InputStream"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="navbar.jsp"%>
<%@page import="java.sql.Blob" %>
<%@page import="Item.Item" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="styles/main.css">
        <script src="script/home.js"></script>
        <title>Home</title>
    </head>
    
    <body>
       
        <div class="container">
            
            <c:if test="${itemsList.isEmpty()}">
                 <div class="jumbotron" id="jumbo">
                    <h1 class="col-md-offset-3">No items in the market</h1>      
                </div>
            </c:if>
            
             <c:if test="${itemsList!=null and !itemsList.isEmpty()}">
                <div class="row">

                <c:forEach var="itemslist" items="${itemsList}">
                    <div class="col-md-offset-3 col-md-3" id="somestyle">
                    <div class="card" id="solo">
                        <img class="card-img-top" src="getimage.jsp?item=${itemslist.item_id}" height="200" width="200"  alt="Card image cap">

                        <div class="card-block" id="block2">
                          <h4 class="card-title"><c:out value="${itemslist.name}"/></h4>
                          <p class="card-text"><c:out value="${itemslist.description}"/></p>
                          <p class="card-text">$ <c:out value="${itemslist.price}"/></p>
                          <button class="btn col-md-offset-4" name="${itemslist.item_id}">Add to cart</button>
                        </div>
                  </div>
                          </div>
                          </c:forEach>

                    </div>
            </c:if>
                    
            
          </div>
           
    </body>
</html>
