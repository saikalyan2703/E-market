<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="admin_navbar.jsp"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Messages</title>
    </head>
    
    <body>
        <div class="container">
  
             <c:if test="${messagesList.isEmpty()}">
                 <div class="jumbotron" id="jumbo">
                    <h1 class="col-md-offset-3">No messages from users</h1>      
                </div>
            </c:if>
            
            <c:if test="${messagesList!=null}">
                <table class="table table-hover">
                    <thead>
                      <tr>
                        <th>Subject</th>
                        <th>Description</th>
                      </tr>
                    </thead>
                    <tbody>
                       <c:forEach var="messageslist" items="${messagesList}"> 
                       <tr>
                           <td>${messageslist.subject}</td> 
                           <td>${messageslist.message}</td> 
                       </tr>
                       </c:forEach>
                    </tbody>
              </table>
            </c:if>
</div>

    </body>
</html>
