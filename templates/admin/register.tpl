{include file="page_header.tpl" title='Registrar usuario'}
<h1>Registrar Usuario</h1>

<form action="addUser" method="POST">
    <div class="flexColumna">
        <input type="text" name="single_name" placeholder="Nombre">
        <input type="text" name="last_name" placeholder="Apellido">
        <input type="email" name="email" placeholder="Email">
        <input type="password" name="pass" placeholder="Contraseña">
        <input type="submit" value="Registrarse" class="btn btn-lg btn-primary">
    </div>
</form>

{include file="page_footer.tpl"}