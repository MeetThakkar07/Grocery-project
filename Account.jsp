<%@ page import="java.sql.*" %>
<%
    String name = request.getParameter("name");
    String email = request.getParameter("email");
    String cno = request.getParameter("cno");
    String pass = request.getParameter("pass");

    try{
        Connection cn = DriverManager.getConnection("jdbc:mysql://localhost:3306/grocery","root","");
        Statement st = cn.createStatement();
        st.executeUpdate("INSERT INTO `login`(`id`,`Name`,`Email`,`Cno`,`Password`,`role`) VALUES(NULL,'"+name+"','"+email+"','"+cno+"','"+pass+"',NULL)");
       
        response.sendRedirect("login.jsp?temp1="+name+"&temp2="+email+"&temp3="+cno);
        
    }
    catch(Exception e){
        out.println(e);
    }
    
    try {
        Connection cn = DriverManager.getConnection("jdbc:mysql://localhost:3306/grocery","root","");
        Statement st = cn.createStatement();
        ResultSet rs= st.executeQuery("SELECT * FROM `login` WHERE Email='" + email + "' AND Password='" + pass + "'");
        if(rs.next()) {
            String role = rs.getString("role");
            if(role.equals("ADMIN")) {
                // If the role is ADMIN, redirect to the admin page
                String url="http://localhost:8080/Grocery-project/Admin/Admin.jsp";
                response.sendRedirect(url);
            } else {
                // If the role is USER or any other role, redirect to the index page or any other appropriate page
                response.sendRedirect("index.jsp");
            }
        } else {
            // If no such record is found, you may want to handle the case, such as showing an error message
            out.println("Invalid email or password");
        }
    }
    catch(Exception e) {
        out.println(e);
    }
%>
