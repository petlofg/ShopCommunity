 <%@taglib uri="/WEB-INF/tld/struts-html.tld" prefix="html"%>
 <%@taglib uri="/WEB-INF/tld/struts-bean.tld" prefix="bean"%>
 <html>
   <head>

   <html:base/>

   </head>

   <body bgcolor="white">

   <html:form action="/Login">

   <html:errors/>

   <table>

        <tr>

          <td align="center" colspan="2">
                <font size="4">Please Enter the Following Details</font>
        </tr>
        <tr>
          <td align="right">
            Login
          </td>
          <td align="left">
            <html:text property="login" size="30" maxlength="30"/>
          </td>
        </tr>
        <tr>
          <td align="right">
            Password
          </td>
          <td align="left">
            <html:text property="password" size="30" maxlength="30"/>
          </td>
        </tr>

        <tr>
          <td align="right">
            <html:submit>Submit</html:submit>
          </td>
          <td align="left">
            <html:cancel>Cancel</html:cancel>
          </td>
        </tr>
  </table>
   </html:form>
   </body>
 </html>