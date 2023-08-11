<%@page import="com.miempresa.webapp02ejercicio.OperacionesBasicas"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Respuesta Operaciones Basicas</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" 
              href="webjars/bootstrap/5.1.0/css/bootstrap.min.css" type="text/css" />
    </head>
    <body>
        <h2 style="text-align:center">Respuesta de Operaciones básicas</h2>
        <div class="alert alert-info">
            <%
                String num1 = request.getParameter("num1");
                String num2 = request.getParameter("num2");
                String oper = request.getParameter("operacion");

                OperacionesBasicas obj1 = new OperacionesBasicas();
                float rpta = obj1.operacion(oper, num1, num2);

                out.print("Primer número = " + num1);
                out.print("<br>");
                out.print("Segundo número = " + num2);
                out.print("<br>");
                out.print("Operación: " + oper);
                out.print("<br>");
                out.print("Resultado: " + rpta);
            %>
        </div>
    </body>
</html>
