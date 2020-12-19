<%-- 
    Document   : CatalogueCommandes
    Created on : Dec 19, 2020, 10:50:40 PM
    Author     : mbp
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Catalogue des commandes</title>
    </head>
    <body>
        <h1>Catalogue des commandes</h1>
        <%
            String article[] = {"iPad","CD","Clé USB"};
            double prix[] = {1990.99,12.99,199.99};
            int quantité[] = {2,9,24};
            
        %>
        <table bgcolor="cyan" border="1" align="center" width="75%">
            <tr>
                <th>Article</th>
                <th>Prix</th>
                <th>Quantité</th>
                <th>Prix totale</th>
            </tr>
   
                <%
                    for (int i = 0; i < article.length; i++){
                %>
                        <tr>
                        <td><%=article[i]%> </td>  
                        <td><%=prix[i]%> </td>  
                        <td><%=quantité[i]%> </td>  
                        <td><%=prix[i]*quantité[i]%> </td>  
                        </tr>
                <%
                    }
                %>


        </table>
    </body>
</html>
