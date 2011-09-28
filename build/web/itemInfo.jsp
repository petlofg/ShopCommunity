<%-- 
    Document   : itemInfo
    Created on : 2011-sep-28, 08:23:50
    Author     : Robin
--%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html>
    <head>
        <link rel="stylesheet" type="text/css" href="style.css" media="screen"/>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
        <title>iteminfo</title>
    </head>
    <body>
        <div id="mainbox">
            <div id="header">
                HEADER
            </div>
            <div id="lsidebar">
                Category1 <br/>
                Category2 <br/>
                Category3 <br/>
            </div>
            <div id="cbody">
                Välkommen till hemsidan!
            </div>
        </div>
        
        <% Long itemPK = request.get("itemPK");%>
    </body>
</html>
