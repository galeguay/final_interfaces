<div class="d-flex flex-column bg-w rounded-3 border m-1">
    <!-- Botón para activar el colapsable -->
    <div class="text-dark p-1 d-flex justify-content-between align-items-center">
        <div class="col d-flex justify-content-start align-items-center ms-1">
            <div style="margin-bottom: 3px; margin-right: 3px;">
                {if $giftcard->status == 1}
                    <svg xmlns="http://www.w3.org/2000/svg" class="ionicon" viewBox="0 0 512 512" width="12" height="12">
                        <circle cx="256" cy="256" r="192" fill="#ff0000" stroke="#ff0000" stroke-linecap="round" stroke-linejoin="round" stroke-width="32"/>
                    </svg>
                {else}
                    <svg xmlns="http://www.w3.org/2000/svg" class="ionicon" viewBox="0 0 512 512" width="12" height="12">
                        <circle cx="256" cy="256" r="192" fill="#008f39" stroke="#008f39" stroke-linecap="round" stroke-linejoin="round" stroke-width="32"/>
                    </svg>
                {/if}
            </div>
            <span class="ff-fira fw-bold fs-14">
                {$giftcard->code}
            </span>
            <span class="ms-2 fw-bold border border-dark rounded px-1">
                {if $giftcard->is_vip}
                    <span class="px-2">&nbsp;VIP&nbsp;</span>
                    {else}
                    No VIP
                {/if}
            </span>
        </div>
        
        <div class="col d-flex justify-content-end align-items-center">
            <!-- Botón para abrir el modal de confirmación -->
            <a class="btn btn-sm btn-danger me-1" title="Eliminar giftcard" data-bs-toggle="modal" data-bs-target="#deleteGiftcardModal-{$giftcard->id}">
                <i class="bi bi-trash"></i>
            </a>
            <a class="btn btn-outline-secondary btn-sm me-1"  data-bs-toggle="collapse" data-bs-target="#giftcardCollapse-{$giftcard->id}" title="Ver detalles">
                <i class="bi bi-info-circle"></i>
            </a>
            <a href="admin/downloadGiftcard/{$giftcard->id}" class="btn btn-sm btn-outline-secondary me-1" title="Descargar imagen de giftcard">
                <i class="bi bi-download"></i>
            </a>
            <a class="btn btn-sm btn-outline-secondary" onclick="copyToClipboard('{$giftcard->code}')" title="Copiar código de giftcard">
                <i class="bi bi-copy"></i>
            </a>
        </div>
    </div>

    <!-- Contenido colapsable con ID único -->
    <div id="giftcardCollapse-{$giftcard->id}" class="collapse pb-1">
        <div class="d-flex px-2">
            <div class="d-flex align-self-center"><b>Creado por:&nbsp</b>
                {$giftcard->creator_singlename}
            </div>
        </div>
        <div class="d-flex justify-content-between px-2">
            <div class="d-flex align-self-center"><b>Fecha de uso:&nbsp</b>
                {if $giftcard->status == 1}
                    {$giftcard->use_date}
                {else}
                    -
                {/if}
            </div>
        </div>

        {if $giftcard->note != ''}
        <div class="d-flex px-2">
            <div class="d-flex align-self-center"><b>Nota:&nbsp</b>
                {$giftcard->note}
            </div>
        </div>
        {/if}
    </div>
</div>

<!-- Modal de confirmación -->
<div class="modal fade" id="deleteGiftcardModal-{$giftcard->id}" tabindex="-1" aria-labelledby="deleteGiftcardModalLabel-{$giftcard->id}" aria-hidden="true">
    <div class="modal-dialog ">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="deleteGiftcardModalLabel-{$giftcard->id}">Confirmar eliminación</h5>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <div class="modal-body">
                ¿Estás seguro de que deseas eliminar esta giftcard? Esta acción no se puede deshacer.
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-secondary btn-sm" data-bs-dismiss="modal">Cancelar</button>
                <a href="admin/deleteGiftcardOnPage/{$giftcard->id}" class="btn btn-danger btn-sm">Eliminar</a>
            </div>
        </div>
    </div>
</div>