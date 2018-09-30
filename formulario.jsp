<html>
<head>
<title>Practica 4</title>
</head>
<body>
 
<%
   out.print("Bienvenido a jsp "+ request.getParameter("nombre").toString().toUpperCase());
   out.print("tu nombre es "+request.getParameter("nombre")+" "+request.getParameter("primerapellido")+" "+request.getParameter("segundoapellido"));
   out.print("<br/>");
   out.print("tu correo es:" + request.getParameter("correo"));
   out.print("<br/>");
   out.print("tu ,es de nacimiento es: "+request.getParameter("fecha"));
   out.print("<br/>");
   
 %>
 
</body>
</html>