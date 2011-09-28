<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<html>
  <head>
    <title>DB Test</title>
  </head>
  <body>

  <h2>Results</h2>

  <%
    com.webshop.dao.DBManager tst = new com.webshop.dao.DBManager();
    tst.init();
  %>
  
  Foo <%= tst.getFoo() %><br/>
  Bar <%= tst.getBar() %>
  
<%--<c:forEach var="row" items="${rs.rows}">
    Foo ${row.foo}<br/>
    Bar ${row.bar}<br/>
</c:forEach>--%>

  </body>
</html>
