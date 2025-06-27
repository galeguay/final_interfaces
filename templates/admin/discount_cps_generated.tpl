{if $user['rol'] > 1}
    {include file="admin/page_header_admin.tpl" title='Giftcards'}
    <section class="space-nav">
        <div class="d-flex flex-column justify-content-center align-items-center pt-5">
            {if $quantity > 1}
                <h3 class="text-success text-center mb-2"><b>¡Se han generado {$quantity} cupones de descuento!</b></h3>
            {else}
                <h3 class="text-success text-center mb-2"><b>¡Se generó 1 cupón de descuento!</b></h3>
                <h5 class="mb-2"><b>El código es: <span class="ff-fira bg-light rounded p-1">D-{$txt_name}</span></b></h5>
            {/if}
            {if $quantity > 1}
                <form action="admin/coupons/download/txt/{$txt_name}" method ="GET" class="text-center col-lg-6">
                    <input type="submit" class="btn btn-yellow btn-sm" value="Descargar archivo TXT con códigos">
                </form>
    {*                 <form action="admin/coupons/download/zip/{$zip_name}" method ="GET" class="text-center col-lg-6 mt-5 mb-3">
                    <input type="submit" class="btn btn-yellow btn-sm" value="Descargar archivo ZIP con imágenes de los cupones de descuento">
                </form> *}
            {else}
                <a id="buttonCopy" class="btn btn-yellow btn-sm mt-5 mb-3" onclick="copyToClipboard('D-{$txt_name}')">Copiar código</a>
    {*                 <form action="admin/downloadCounpon/{$zip_name}" method ="GET" class="text-center col-lg-6 mt-1 mb-3">
                    <input type="submit" class="btn btn-yellow btn-sm" value="Descargar imágen del cupón de descuento">
                </form> *}
            {/if} 
            <a href="admin/coupons" class="btn btn-light btn-sm mt-5"><b>Volver a página de cupones de descuentos</b></a>
        </div>
    </section>
    <script>
        function copyToClipboard(text) {
            var input = document.createElement('textarea');
            input.innerHTML = text;
            document.body.appendChild(input);
            input.select();
            var result = document.execCommand('copy');
            document.body.removeChild(input);
            let btnCopy = document.getElementById("buttonCopy");
            btnCopy.innerHTML = "Código copiado";
            btnCopy.classList.remove("btn-success");
            btnCopy.classList.add("btn-secondary");
            return result;
        }
    </script>
{/if}
{include file="page_footer.tpl" hide=true}