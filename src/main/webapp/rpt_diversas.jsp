<%@page import="com.miempresa.webapp02ejercicio.OperacionesDiversas"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Respuesta Operaciones Diversas</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" 
              href="webjars/bootstrap/5.1.0/css/bootstrap.min.css" type="text/css" />
    </head>
    <body>
        <h2 style="text-align:center">Respuesta de Operaciones diversas</h2>
        <div class="alert alert-info">
            <%
                String num1 = request.getParameter("num1");
                String oper = request.getParameter("operacion");

                OperacionesDiversas obj1 = new OperacionesDiversas();

                out.print("Número = " + num1);
                out.print("<br>");

                if ("r_cua".equals(oper)) {

                    out.print("Operación: Raíz cuadrada");
                    out.print("<br>");
                    out.print("Resultado: " + obj1.r_cua(num1));
                } else if ("r_cub".equals(oper)) {

                    out.print("Operación: Raíz cúbica");
                    out.print("<br>");
                    out.print("Resultado: " + obj1.r_cub(num1));
                } else if ("p_cua".equals(oper)) {

                    out.print("Operación: Elevado al cuadrado");
                    out.print("<br>");
                    out.print("Resultado: " + obj1.p_cua(num1));
                } else if ("p_cub".equals(oper)) {

                    out.print("Operación: Elevado al cubo");
                    out.print("<br>");
                    out.print("Resultado: " + obj1.p_cub(num1));
                } else if ("v_abs".equals(oper)) {

                    out.print("Operación: Valor absoluto");
                    out.print("<br>");
                    out.print("Resultado: " + obj1.v_abs(num1));
                }

            %>
        </div>
    </body>
</html>
