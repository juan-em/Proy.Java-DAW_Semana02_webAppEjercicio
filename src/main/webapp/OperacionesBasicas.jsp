<%@page import="com.miempresa.webapp02ejercicio.OperacionesBasicas"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Operaciones Basicas</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" 
              href="webjars/bootstrap/5.1.0/css/bootstrap.min.css" type="text/css" />
    </head>
    <body>
        <div class="row">
            <div class="container mt-5">
                <h1 style="text-align:center">OPERACIONES BÁSICAS</h1>
            </div>
            <div class="container mt-5 col-5">
                <h2 style="text-align:center">Con resultado aquí</h2>
                <form name="form" id="form" action="" method="post">

                    <div class="form-group mb-3"> 
                        <label class="control-label">Ingrese un valor:</label>
                        <input type="text" class="form-control" id="num1" name="num1" placeholder="primer número">
                    </div>    

                    <div class="form-group mb-3"> 
                        <label class="control-label">Ingrese un valor:</label>
                        <input type="text" class="form-control"  id="num2" name="num2" placeholder="segundo número">
                    </div>                             

                    <div class="form-group mb-3"> <!-- Operación a realizarse -->
                        <label class="control-label">Operacion</label>
                        <select class="form-control" name="operacion">
                            <option value="suma">Suma</option>
                            <option value="resta">Resta</option>
                            <option value="multiplicacion">Multiplicación</option>
                            <option value="division">División</option>
                        </select>                    
                    </div>      

                    <div class="form-group mb-3"> <!-- Submit Button -->
                        <button type="submit" id="calcular" class="btn btn-primary" >A Calcular!</button>
                    </div>

                    <div id="rpta" class="alert alert-info">
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
                </form>
            </div>

            <div class="container mt-5 col-5">
                <h2 style="text-align:center">Con resultado allá</h2>
                <form name="form1" action="rpt_basicas.jsp" method="post">
                    <div class="form-group mb-3"> <!-- Full Name -->
                        <label class="control-label">Ingrese un valor:</label>
                        <input type="text" class="form-control"  name="num1" placeholder="primer número">
                    </div>    

                    <div class="form-group mb-3"> <!-- Full Name -->
                        <label class="control-label">Ingrese un valor:</label>
                        <input type="text" class="form-control" name="num2" placeholder="segundo número">
                    </div>                             

                    <div class="form-group mb-3"> <!-- Operación a realizarse -->
                        <label class="control-label">Operacion</label>
                        <select class="form-control" name="operacion">
                            <option value="suma">Suma</option>
                            <option value="resta">Resta</option>
                            <option value="multiplicacion">Multiplicación</option>
                            <option value="division">División</option>
                        </select>                    
                    </div>      

                    <div class="form-group mb-4"> <!-- Submit Button -->
                        <button type="submit" class="btn btn-success">A Calcular!</button>
                    </div> 
                </form>
            </div>
        </div>
    </body>
</html>
