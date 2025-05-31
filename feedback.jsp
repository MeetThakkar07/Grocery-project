<%@ page import="java.sql.*" %>
<%
    String name = request.getParameter("name");
    String email = request.getParameter("email");
    String gender = request.getParameter("gender");
    String message = request.getParameter("message");
      
    try{
        Connection cn = DriverManager.getConnection("jdbc:mysql://localhost:3306/grocery","root","");
        Statement st = cn.createStatement();
        st.executeUpdate("INSERT INTO `feedback`(`id`,`Name`,`Email`,`Gender`,`Message`) VALUES(NULL,'"+name+"','"+email+"','"+gender+"','"+message+"')");
        response.sendRedirect("index.jsp");
    }
    catch(Exception e){
        out.println(e);
    }
%>