<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>TheProjectSolutions - Resultado</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <style>
            body { font-family: Arial, sans-serif; margin: 40px; background-color: #f4f4f4; }
            .container { max-width: 600px; margin: auto; background: white; padding: 30px; border-radius: 10px; box-shadow: 0 0 10px rgba(0,0,0,0.1); }
            h1 { text-align: center; }
            .registro h1 { color: #3498db; }
            .consulta h1 { color: #27ae60; }
            .dato { padding: 10px; margin: 8px 0; background-color: #ecf0f1; border-radius: 5px; }
            .dato strong { color: #2c3e50; display: inline-block; min-width: 130px; }
            .link { text-align: center; margin-top: 20px; }
            .link a { color: #3498db; text-decoration: none; margin: 0 10px; }
            .link a:hover { text-decoration: underline; }
            .badge { display: inline-block; padding: 5px 10px; border-radius: 15px; color: white; font-size: 12px; margin-bottom: 15px; }
            .badge-post { background-color: #3498db; }
            .badge-get { background-color: #27ae60; }
        </style>
    </head>
    <body>
        <div class="container">
            <%-- Verificamos la acción enviada por el Servlet --%>
            <% String accion = (String) request.getAttribute("accion"); %>
            
            <% if ("REGISTRO".equals(accion)) { %>
                <div class="registro">
                    <h1>✅ Proveedor Registrado</h1>
                    <span class="badge badge-post">Método POST</span>
                    
                    <div class="dato"><strong>NIT:</strong> ${nit}</div>
                    <div class="dato"><strong>Razón Social:</strong> ${razonSocial}</div>
                    <div class="dato"><strong>Teléfono:</strong> ${telefono}</div>
                    <div class="dato"><strong>Correo:</strong> ${correo}</div>
                    <div class="dato"><strong>Ciudad:</strong> ${ciudad}</div>
                </div>
                
            <% } else if ("CONSULTA".equals(accion)) { %>
                <div class="consulta">
                    <h1>🔍 Resultado de Consulta</h1>
                    <span class="badge badge-get">Método GET</span>
                    
                    <div class="dato"><strong>NIT consultado:</strong> ${nit}</div>
                    <p style="text-align:center; color:#7f8c8d; margin-top:20px;">
                        (Aquí normalmente se mostrarían los datos del proveedor encontrado en la base de datos)
                    </p>
                </div>
                
            <% } else { %>
                <h1>⚠️ Acción no reconocida</h1>
                <p style="text-align:center;">No se recibió ninguna acción válida.</p>
            <% } %>
            
            <div class="link">
                <a href="index.html">Registrar otro (POST)</a> |
                <a href="consulta.html">Consultar otro (GET)</a>
            </div>
        </div>
    </body>
</html>