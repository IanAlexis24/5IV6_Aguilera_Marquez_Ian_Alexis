<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>CIFRADO </title>
    </head>
     <script>
            function validarLetras() {
                var letras = "abcdefghijklmnopqrstuvwxyz";
                var x = event.keyCode;
                var letra = String.fromCharCode(x);
                var n = letras.indexOf(letra);
                if (n === -1) {
                    event.returnValue = false;
                }
            }
            function ValidarNumeros() {
                var x = event.keyCode;
                var y = String.fromCharCode(x);
                if ((!(y >= '0' && y <= '9') && y !== ''))
                    event.returnValue = false;
            }
            
        </script> 
    <body>
         <% 
           String texto = request.getParameter("text2");
           String clave = request.getParameter("clave2");
           int numero = Integer.parseInt(clave);
           int diferencia = numero % 26;
           int cifrado = 0;
           String resultado = "";
           for(int i = 0; i<texto.length(); i++){
               int letra = texto.charAt(i);
               cifrado = letra - diferencia;
               if(cifrado<=96){
                   cifrado = cifrado + 26;
               }
               String letraCifrada = Character.toString((char) cifrado);
               resultado = resultado + letraCifrada;
           }
           out.println("<br>");
           out.println("<span id='resul'> TEXTO CIFRADO: "+resultado+"</span>");
          %>
          <a href="index.html"><input type="button" value="REGRESAR" style="width: 150px; height: 25px;
                                      font-size: 20px; float: right"></a>  
                            
    </body>
</html>
