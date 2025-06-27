{include file="admin/page_header_admin.tpl" title='Giftcards'}
<div class="container-fluid d-flex flex-column align-items-center justify-content-center default-space">

    <div class="fw-bold title text-warning">Giftcards</div>

    <section class="bg-light col-12 col-lg-7 section-slim">
        <form class="d-flex d-wrap flex-wrap mb-2 justify-content-center align-items-center">
            <label for=" creator" class="col-sm-2 col-form-label w-auto me-1">Lista de giftcards generadas por:</label>
            <select class="form-select form-select-sm me-2 w-auto" id="creator" name="creator">
                {if $creator_filter == 'clientes'}
                    {include file="admin/page_header_admin.tpl" title='Giftcards'}
                    <option>cualquiera</option>
                    <option selected>clientes</option>
                    <option>{$user['single_name']}</option>
                {else if $creator_filter == 'cualquiera'}
                    <option selected>cualquiera</option>
                    <option>clientes</option>
                    <option>{$user['single_name']}</option>
                {else}
                    <option>cualquiera</option>
                    <option>clientes</option>
                    <option selected>{$user['single_name']}</option>
                {/if}
            </select>
            <button type="submit" class="btn btn-yellow btn-sm fs-12">Actualizar</button>
        </form>

        <div>
            {if empty($giftcards)}
                No se encontraron resultados
            {else}
                <button id="toggleAll" class="btn btn-outline-dark btn-sm mb-2 w-100" onclick="toggleAllCollapses()">
                    <i class="bi bi-info-circle"></i>
                    Mostrar/ocultar detalle de todas las giftcards
                </button>
                {foreach from = $giftcards item = $giftcard}
                    {include file="admin/card_giftcard.tpl" story=$giftcard}
                {/foreach}
            {/if}
        </div>

        <div class="modal fade" id="copyModal" tabindex="-1" aria-labelledby="copyModalLabel" aria-hidden="true">
            <div class="modal-dialog modal-dialog-centered">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title" id="copyModalLabel">Notificación</h5>
                        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                    </div>
                    <div class="modal-body">
                        Código copiado al portapapeles.
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-secondary btn-sm" data-bs-dismiss="modal">Cerrar</button>
                    </div>
                </div>
            </div>
        </div>
    </section>

</div>

<script type="text/javascript" src="/js/giftcards.js"></script>
{include file="page_footer.tpl" hide=true}