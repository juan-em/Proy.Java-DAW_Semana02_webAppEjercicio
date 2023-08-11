<%@page import="com.miempresa.webapp02ejercicio.OperacionesDiversas"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Operaciones Diversas</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" 
              href="webjars/bootstrap/5.1.0/css/bootstrap.min.css" type="text/css" />
    </head>
    <body>
        <div class="row">
            <div class="container mt-5">
                <h1 style="text-align:center">OPERACIONES DIVERSAS</h1>
            </div>
            <div class="container mt-5 col-5">
                <h2 style="text-align:center">Con resultado aquí</h2>
                <form name="form" id="form" action="" method="post">

                    <div class="form-group mb-3"> 
                        <label class="control-label">Ingrese un valor:</label>
                        <input type="text" class="form-control" id="num1" name="num1" placeholder="primer número">
                    </div>    

                    <div class="form-group mb-3"> <!-- Operación a realizarse -->
                        <label class="control-label">Operacion</label>
                        <select class="form-control" name="operacion">
                            <option value="r_cua">Raíz cuadrada</option>
                            <option value="r_cub">Raíz cúbica</option>
                            <option value="p_cua">Potencia al cuadrado</option>
                            <option value="p_cub">Potencia al cubo</option>
                            <option value="v_abs">Valor Absoluto</option>
                        </select>                    
                    </div>      

                    <div class="form-group mb-3"> <!-- Submit Button -->
                        <button type="submit" id="calcular" class="btn btn-primary" >A Calcular!</button>
                    </div>

                    <div id="rpta" class="alert alert-info">
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
                            }
                            else if ("r_cub".equals(oper)) {
                                
                                out.print("Operación: Raíz cúbica");
                                out.print("<br>");
                                out.print("Resultado: " + obj1.r_cub(num1));
                            }
                            else if ("p_cua".equals(oper)) {
                                
                                out.print("Operación: Elevado al cuadrado");
                                out.print("<br>");
                                out.print("Resultado: " + obj1.p_cua(num1));
                            }
                            else if ("p_cub".equals(oper)) {
                                
                                out.print("Operación: Elevado al cubo");
                                out.print("<br>");
                                out.print("Resultado: " + obj1.p_cub(num1));
                            }
                            else if ("v_abs".equals(oper)) {
                                
                                out.print("Operación: Valor absoluto");
                                out.print("<br>");
                                out.print("Resultado: " + obj1.v_abs(num1));
                            }  
                            
                        %>
                    </div>
                </form>
            </div>

            <div class="container mt-5 col-5">
                <h2 style="text-align:center">Con resultado allá</h2>
                <form name="form1" action="rpt_diversas.jsp" method="post">
                    <div class="form-group mb-3">
                        <label class="control-label">Ingrese un valor:</label>
                        <input type="text" class="form-control"  name="num1" placeholder="primer número">
                    </div>                      

                    <div class="form-group mb-3"> <!-- Operación a realizarse -->
                        <label class="control-label">Operacion</label>
                        <select class="form-control" name="operacion">
                            <option value="r_cua">Raíz cuadrada</option>
                            <option value="r_cub">Raíz cúbica</option>
                            <option value="p_cua">Potencia al cuadrado</option>
                            <option value="p_cub">Potencia al cubo</option>
                            <option value="v_abs">Valor Absoluto</option>
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
