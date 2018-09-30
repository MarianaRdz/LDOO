<html>
<head>
<title>Practica 4</title>
</head>
<body>
 
<form action="proceso.jsp" method="post">
    Nombre:
    <input type="text" name="nombre">
    <br/>
    PrimerApellido:
    <input type="text" name="primerapellido">
    <br/>
    SegundoApellido:
    <input type="text" name="segundoapellido">
    <br/>
    correo:
    <input type="text" name= "correo">
    <br/>
    contraseña:
    <input type="password" name="contraseña">
    <br/>
    MesNacimiento:
    <select name="fecha">
        <option value="enero">enero
        <option value="febrero">febrero
        <option value="marzo">marzo
        <option value="abril">abril
        <option value="mayo">mayo
        <option value="junio">junio
        <option value="julio">julio
        <option value="agosto">agosto
        <option value="septiembre">septiembre
        <option value="octubre">octubre
        <option value="noviembre">novimebre
        <option value="diciembre">diciembre
    </select>
    <br/>
    
 
    <p><input type="submit" value="Enviar"></p>
</form>
 
</body>
</html>
