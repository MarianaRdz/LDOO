<%@ page import = "java.io.*,java.util.*" %>
<%

   Date createTime = new Date(session.getCreationTime());
   

   Date lastAccessTime = new Date(session.getLastAccessedTime());

   String title = "Bienvenido de nuevo :D";
   Integer Contavisit = new Integer(0);
   String visitCountKey = new String("Contavisit");
   String userIDKey = new String("userID");
   String userID = new String("1234");
   String Name = new String ("Mariana");
   String Apellidos = new String ("Rodriguez Gonzalez");
   String FechaNac = new String ("23/febrero/2000");
   String Correo = new String("marianardz.1b@gmail.com");

   // Check if this is new comer on your Webpage.
   if (session.isNew() ){
      title = "Bienvenido";
      session.setAttribute(userIDKey, userID);
      session.setAttribute(visitCountKey,  Contavisit);
   } 
   Contavisit = (Integer)session.getAttribute(visitCountKey);
   Contavisit = Contavisit + 1;
   userID = (String)session.getAttribute(userIDKey);
   session.setAttribute(visitCountKey,  Contavisit);
%>

<html>
   <head>
      <title>Sesiones</title>
   </head>
   
   <body>
      
      <table border = "1" align = "center"> 
         <tr bgcolor = "#949494">
            <th>Session info</th>
            <th>Value</th>
         </tr> 
         <tr>
            <td>id</td>
            <td><% out.print( session.getId()); %></td>
         </tr>
         <tr>
            <td>Nombre</td>
            <td><% out.print(session.getName() + session.getApellidos()); %></td>
         </tr>
         <tr>
            <td>Correo</td>
            <td><% out.print(session.getCorreo()); %></td>
         </tr>
         <tr>
            <td>FechaCumpleaños</td>
            <td><% out.print(session.getFechaNac()); %></td>
         </tr> 
         <tr>
            <td>Creation Time</td>
            <td><% out.print(createTime); %></td>
         </tr> 
         <tr>
            <td>Time of Last Access</td>
            <td><% out.print(lastAccessTime); %></td>
         </tr> 
         <tr>
            <td>User ID</td>
            <td><% out.print(userID); %></td>
         </tr> 
         <tr>
            <td>Number of visits</td>
            <td><% out.print(Contavisit); %></td>
         </tr> 
      </table> 
   
   </body>
</html>