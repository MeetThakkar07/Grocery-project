<%@ page import="java.sql.*" %>
<%
   
    String email = request.getParameter("email1");
    String pass = request.getParameter("pass");

    String nm="";
    String mail="";
    String no="";
    String pass1="";
    String role="";
     
    try{
        Connection cn = DriverManager.getConnection("jdbc:mysql://localhost:3306/grocery","root","");
        Statement st = cn.createStatement();
        ResultSet rs = st.executeQuery("SELECT * FROM `login` where `Email`='"+email+"' and `Password`='"+pass+"'");
        if(rs.next()){
    

            nm = rs.getString(2);
            mail = rs.getString(3);
            no = rs.getString(4);
            pass1 = rs.getString(5);
            role=rs.getString(6);
        }
        else{
            out.println("<h1>Login Failed please check email and password..</h1>");
        }  
        if(role.equals("ADMIN"))
        {
            String url="http://localhost:8081/Grocery-project/Admin/Admin.jsp";
            response.sendRedirect(url);
        }
        else{

            response.sendRedirect("login.jsp?temp1="+nm+"&temp2="+mail+"&temp3="+no+"&temp4="+pass1+"");
        }
    }
    catch(Exception e){
        out.println(e);
    }
%>