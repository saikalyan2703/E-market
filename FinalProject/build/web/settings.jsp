<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="navbar.jsp"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Settings</title>
        <link rel="stylesheet" href="styles/main.css">
        <script src="script/settings.js"></script>
    </head>
    
    <body>
        
        <div class="row" id="alert">
            
               <div class="col-md-offset-3 col-md-7">
                    <div class="alert alert-warning alert-dismissable">
                        <a href="#" class="close">&times;</a>
                        <strong class="col-md-offset-4">Passwords not matched</strong>
                    </div>
               </div>
           </div>
       
       <div class="row" id="bar">
            <div class="btn-group-vertical col-md-2">
                <button type="button" class="btn " id="a">Change password</button>
                <button type="button" class="btn " id="b">Report</button>
            </div>
           
               <div class="col-md-offset-1 col-md-5" id="update">
                    <form method="post" action="UserController">
                        
                        <input type="hidden" name="action" value="update">
                        
                        <div class="input-group">
                          <span class="input-group-addon"><i class="glyphicon glyphicon-lock"></i></span>
                          <input id="password" type="password" class="form-control" name="password" placeholder="Password" required>
                          <span id="eye" class="input-group-addon"><i class="glyphicon glyphicon-eye-open"></i></span>   
                        </div><br>
                        
                        <div class="input-group">
                          <span class="input-group-addon"><i class="glyphicon glyphicon-lock"></i></span>
                          <input id="retype-password" type="password" class="form-control" name="retype-password" placeholder="Re-enterPassword" required>
                          <span id="eye1" class="input-group-addon"><i class="glyphicon glyphicon-eye-open"></i></span>   
                        </div><br>
                        <button type="submit" class="btn btn-default col-md-offset-5">Submit</button>
                    </form>
               </div>
           
             <div class="col-md-offset-1 col-md-5" id="report">
                    <form method="post" action="UserController">
                        
                        <input type="hidden" name="action" value="sendmessage">
                        
                        <div class="input-group">
                          <span class="input-group-addon"><i>Subject</i></span>
                          <input id="subject" type="text" class="form-control" name="subject" placeholder="Subject" required>
                        </div><br>
                        
                        <div class="input-group">
                          <span class="input-group-addon"><i class="glyphicon glyphicon-envelope"></i></span>
                          <textarea name="description" class="form-control" rows="5" id="comment" required></textarea>
                        </div><br>
                        <button type="submit" class="btn btn-default col-md-offset-5">Submit</button>
                    </form>
               </div>
        
           </div>
    </body>
</html>
