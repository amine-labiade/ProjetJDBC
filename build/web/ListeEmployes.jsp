<%-- 
    Document   : ListeEmployes
    Created on : Dec 19, 2020, 11:16:52 PM
    Author     : mbp
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>liste des employes</title>
        <%@page import="java.sql.*" %>
    </head>
    <body>
        <h1>liste des employes</h1>
        <table width="80%" border="2" bgColor="#9AA2F8">
            <tr>
                <th width="25%">Matricule</th>
                <th width="25%">Nom</th>
                <th width="25%">Prénom</th>
                <th width="25%">Service</th>
            </tr>
             <%
                 try {
                     Class.forName("org.apache.derby.jdbc.ClientDriver").newInstance();
                     Connection conn = DriverManager.getConnection("jdbc:derby://localhost:1527/Etablissement","root","azerty");
                     Statement stmt = conn.createStatement(); 
                     String sql = "select * from employe";
                     ResultSet rs = stmt.executeQuery(sql);
                     while(rs.next()){
                         %>
                         <tr>
                             <td><%= rs.getString("matricule") %></td>
                             <td><%= rs.getString("nom")%></td>
                             <td><%= rs.getString("prenom")%></td>
                             <td><%= rs.getString("service")%></td>
                         </tr>
                         <%
                     } 
             %>
        </table>
        <%
            if(stmt != null){
                stmt.close();
            }
            if(conn != null){
                conn.close();
            }
        }catch(Exception e){
                out.print(e);
            }    
        %>
    </body>
</html>
