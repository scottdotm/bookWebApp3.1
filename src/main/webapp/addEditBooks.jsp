<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>

<!DOCTYPE html>
<html>
     <head>
          <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
          <title>Add/Edit Book</title>
          <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css" integrity="sha384-1q8mTJOASx8j1Au+a5WDVnPi2lkFfwwEAa8hDDdjZlpLegxhjVME1fgjWPGmkzs7" crossorigin="anonymous">
          <link href="Resources/css/myCss.css" rel="stylesheet" type="text/css"/>
     </head>
     <body>
          <div class="col-md-3 col-md-offset-2">
               <div class="row">
                    <div class="container">
                         <center>
                              <h1>Add/Edit Book</h1>
                              <form method="POST" action="BookController">
                                   <table width="500" border="1" cellspacing="0" cellpadding="4">
                                        <!--
                                            In the EL expression below using 'not empty' is better than
                                            author != null because it tests for both null and empty string
                                        -->
                                        <c:choose>
                                             <c:when test="${not empty book}">
                                                  <tr>
                                                       <td style="background-color: black;color:white;" align="left">ID</td>
                                                       <td align="left"><input type="text" value="${book.bookId}" name="bookId" readonly/></td>
                                                  </tr>         
                                             </c:when>
                                        </c:choose>

                                        <tr>
                                             <td style="background-color: black;color:white;" align="left">Title</td>
                                             <td align="left"><input type="text" value="${book.title}" name="title" /></td>
                                        </tr>
                                        <tr>
                                             <td style="background-color: black;color:white;" align="left">ISBN</td>
                                             <td align="left"><input type="text" value="${book.isbn}" name="isbn" /></td>
                                        </tr>

                                        <tr>
                                             <td style="background-color: black;color:white;" align="left">Author</td>
                                             <td align="left">
                                                  <select id="authorDropDown" name="authorId">
                                                       <c:choose>
                                                            <c:when test="${not empty book.authorId}">
                                                                 <option value="">None</option>
                                                                 <c:forEach var="author" items="${authors}">                                       
                                                                      <option value="${author.authorId}" <c:if test="${book.authorId.authorId == author.authorId}">selected</c:if>>${author.authorName}</option>
                                                                 </c:forEach>
                                                            </c:when>
                                                            <c:otherwise>
                                                                 <c:forEach var="author" items="${authors}" varStatus="rowCount">                                       
                                                                      <option value="${author.authorId}" <c:if test="${rowCount.count == 1}">selected</c:if>>${author.authorName}</option>
                                                                 </c:forEach>
                                                            </c:otherwise>
                                                       </c:choose>
                                                  </select>
                                             </td>
                                        </tr>
                                        <tr>

                                        </tr>
                                   </table>
                                   <br>
                                   <input class="btn btn-info" type="submit" value="Cancel" name="action" />&nbsp;
                                   <input class="btn btn-info" type="submit" value="Save" name="action" />
                              </form>
                         </center>
                    </div>
               </div>
          </div>
     </body>
</html>
