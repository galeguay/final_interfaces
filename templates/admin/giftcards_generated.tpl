{if $user['rol'] > 1}
    {include file="admin/page_header_admin.tpl" title='Giftcards'}
    <section class="space-nav">
        <div class="d-flex flex-column justify-content-center align-items-center pt-5">
            {if $quantity > 1}
                <h3 class="text-success mb-5"><b>¡Se han generado {$quantity} giftcards!</b></h3>
            {else}
                <h3 class="text-success mb-2"><b>¡Se generó 1 giftcard!</b></h3>
                <h5 class="mb-2"><b>El código es: <span class="ff-fira bg-light rounded p-1">{$txt_name}</span></b></h5>
            {/if}
            {if $quantity > 1}
                <form action="admin/giftcards/download/{$txt_name}" method ="GET" class="text-center col-lg-6 mb-3">
                    <input type="submit" class="btn btn-yellow btn-sm" value="Descargar archivo TXT con códigos">
                </form>
                <form action="admin/giftcards/download/{$zip_name}" method ="GET" class="text-center col-lg-6 mb-3">
                    <input type="submit" class="btn btn-yellow btn-sm" value="Descargar archivo ZIP con giftcards">
                </form>
            {else}
                <a id="buttonCopy" class="btn btn-yellow btn-sm mt-5 mb-3" onclick="copyToClipboard('{$txt_name}')">Copiar código</a>
                <form action="admin/downloadGiftcard/{$zip_name}" method ="GET" class="text-center col-lg-6 mt-1 mb-3">
                    <input type="submit" class="btn btn-yellow btn-sm" value="Descargar imagen de giftcard">
                </form>
            {/if}

            <a href="admin/giftcards" class="btn btn-light btn-sm mt-5">Volver a página de giftcards</a>
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