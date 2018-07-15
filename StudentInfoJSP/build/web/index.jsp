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
        <% 
            ArrayList<Student> stuInfo = new studentController().getStuInfo();
            for(Student stu : stuInfo){
                out.print("<h1>" + stu.getStudentName() + "</h1>");
            out.print("<h1>" + stu.getAddress() + "</h1>");
             out.print("<h1>" + stu.getAge() + "</h1>");
            }
            
//            
            
           
        
        %>
    </body>
</html>
