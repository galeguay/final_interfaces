{include file="page_header.tpl" title='Usuarios'}
<div class="flexColumna">
    <h1>Lista de usuarios</h1>
    <table>
        <thead>
            <tr>
                <th>NOMBRE</th>
                <th>EMAIL</th>
                <th>ROL</th>
                <th></th>
            </tr>
        </thead>
        <tbody>
            {foreach from=$users item=$userItem}
                <tr>
                    <td>{$userItem->nombre}</td>
                    <td>{$userItem->email}</td>
                    <td>
                    <form action="modifyUserRol/{$userItem->id}" method="POST">
                        <select name="rol">
                                {if $user->rol == '1'}
                                    <option value="1" selected>Default</option>
                                    <option value="2">Administrador</option>
                                {/if}
                                {if $user->rol == '2'}
                                    <option value="1">Default</option>
                                    <option value="2" selected>Administrador</option>
                                {/if}
                        </select>
                        <input type="submit" value="MODIFICAR" class="btnEditar">
                    </form>
                    <td><a href ="deleteUser/{$userItem->email}" class="btnBorrar">ELIMINAR</a></td>
                </tr>
            {/foreach}
        </tbody>
    </table>
</div>
{include file="page_footer.tpl"}