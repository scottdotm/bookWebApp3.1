<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<!DOCTYPE html>
<html lang="en">
     <head>
          <meta charset="utf-8">
          <meta https-equiv="X-UA-Compatible" content="IE=edge">
          <meta name="viewport" content="width=device-width, initial-scale=1">
          <meta name="description" content="">
          <meta name="author" content="Jim Lombardo">
          <title>Spring Security Login Page</title>
          <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css" integrity="sha384-1q8mTJOASx8j1Au+a5WDVnPi2lkFfwwEAa8hDDdjZlpLegxhjVME1fgjWPGmkzs7" crossorigin="anonymous">
          <link href="Resources/css/myCss.css" rel="stylesheet" type="text/css"/>
     </head>
     <body>
          <form id="signInForm" role="form" method='POST' action="<c:url value='j_spring_security_check' />">
               <sec:csrfInput />
               <div class="row">
                    <div class="col-md-3 col-md-offset-2">
                         <div class="container">
                              <h3 class="text-center" style="font-weight:200">Sign in </h3>
                              <h4>Please Log In</h4>
                              <div class="form-group">
                                   <input tabindex="1" class="form-control" id="j_username" name="j_username" placeholder="Email address" type="text" autofocus />
                                   <br>
                                   <input tabindex="2" class="form-control" id="j_password" name="j_password" type="password" placeholder="password" />
                              </div>
                              <br>
                              <div class="form-group">
                                   <center><input class="btn btn-success" name="submit" type="submit" value="Sign in" /></center>
                              </div>
                         </div>
                    </div>
               </div>
          </form>
     </body>
</html>