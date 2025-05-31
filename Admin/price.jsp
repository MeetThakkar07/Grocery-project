<%@ page import="java.sql.*" %>
<%
   
    String price1 = request.getParameter("price1");
    String price2 = request.getParameter("price2");
    String price3 = request.getParameter("price3");
    String price4 = request.getParameter("price4");
    String price5 = request.getParameter("price5");
    String price6 = request.getParameter("price6");

    try{
        Connection cn = DriverManager.getConnection("jdbc:mysql://localhost:3306/grocery","root","");
        Statement st = cn.createStatement();
        st.executeUpdate("UPDATE `prices` SET `price1`='"+price1+"',`price2`='"+price2+"',`price3`='"+price3+"',`price4`='"+price4+"',`price5`='"+price5+"',`price6`='"+price6+"' WHERE 1");
        
        
        response.sendRedirect("Admin.jsp");
    }
    catch(Exception e){
        out.println(e);
    }
%>