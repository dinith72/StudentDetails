<%-- 
    Document   : dateApp
    Created on : Jul 14, 2018, 10:57:47 AM
    Author     : Dinith Jayabodhi
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="example.Student"  %> 
<%@page import="example.studentController"  %> 
<%@page import="java.time.LocalDate " %>
<%@page import="java.util.ArrayList " %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
      <table style="width:100%">
        <tr>
          <th>Name</th>
          <th>Adress</th> 
          <th>Age</th>
          <th>GPA</th>
        </tr>
  

        <% 
            ArrayList<Student> stuInfo = new studentController().getStuInfo();
            for(Student stu : stuInfo){
                %>
        <tr style="align-self:  center">
            <td style="align-self:  center"> <% out.print(stu.getStudentName()); %> </td>
            <td style="align-content: center"> <% out.print(stu.getAddress()); %> </td>
            <td style="align-content: center"> <% out.print(stu.getAge()); %> </td>
            <td style="align-content: center"> <% out.print(stu.getGpa()); %> </td>
            <%}%>
        </tr>
    </table> 
            
//            
            
           
        
        %>
    </body>
</html>
