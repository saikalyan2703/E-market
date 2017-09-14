<%@ taglib prefix="c" 
           uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Add item</title>
        <link rel="stylesheet" href="styles/main.css">
    </head>
    
    <body>
       <c:if test="${sessionScope.user.type == 'user'}">
                <%@include file="navbar.jsp"%>
            </c:if>
            
            <c:if test="${sessionScope.user.type == 'admin'}">
                <%@include file="admin_navbar.jsp"%>
            </c:if>
        
        <div class="container">
           
           <div class="row">
           <c:if test="${message!=null}">    
           <div class="alert alert-success">
                ${message}
            </div>
           </c:if>   
               <div class="col-md-offset-4 col-md-5" id="item">
                   <form method="post" action="ItemControl"  enctype="multipart/form-data">
                        
                        <input type="hidden" name="action" value="additem">
                        
                        <div class="input-group">
                          <span class="input-group-addon"><i>Name</i></span>
                          <input id="name" type="text" class="form-control" name="name" placeholder="Name" required>
                        </div><br>
                        
                        <div class="input-group">
                          <span class="input-group-addon"><i class="glyphicon glyphicon-envelope"></i></span>
                          <textarea name="description" class="form-control" rows="5" id="comment" required></textarea>
                        </div><br>
                        
                        <div class="input-group">
                          <span class="input-group-addon"><i class="glyphicon glyphicon-euro"></i></span>
                          <input id="price" type="number" class="form-control" name="price" placeholder="Price" required>
                        </div><br>
                        
                        <div class="input-group">
                          <select class="form-control" id="sel1" name="type">
                                <option value="Clothing" selected>Clothing</option>
                                <option value="Electronics">Electronics</option>
                                <option value="Books">Books</option>
                          </select>
                        </div>
                        
                        <input id="file" type="file" name="picture" required><br>
                        
                        <button type="submit" class="btn btn-default col-md-offset-5">Submit</button>
                       
                    </form>
               </div>
               
               
           </div>

      </div>
        
    </body>
</html>
