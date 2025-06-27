<div class="d-flex flex-column bg-w rounded-3 m-1 border">
    <!-- Botón para activar el colapsable -->
    <div class="text-dark p-1 d-flex justify-content-between align-items-center">
        <div class="col d-flex justify-content-start align-items-center ms-1">
            <div style="margin-bottom: 3px; margin-right: 3px;">
                {if $discount->use_date === null}
                    <svg xmlns="http://www.w3.org/2000/svg" class="ionicon" viewBox="0 0 512 512" width="12" height="12">
                        <circle cx="256" cy="256" r="192" fill="#008f39" stroke="#008f39" stroke-linecap="round" stroke-linejoin="round" stroke-width="32"/>
                    </svg>
                {else}
                    <svg xmlns="http://www.w3.org/2000/svg" class="ionicon" viewBox="0 0 512 512" width="12" height="12">
                        <circle cx="256" cy="256" r="192" fill="#ff0000" stroke="#ff0000" stroke-linecap="round" stroke-linejoin="round" stroke-width="32"/>
                    </svg>
                {/if}
            </div>
            <span class="ff-fira fw-bold fs-14">D-{$discount->code}</span>
            <span class="ms-2 fw-bold border border-dark rounded px-1">{$discount->percent}%</span>
        </div>
        
        <div class="col d-flex justify-content-end align-items-center">
            <a href="admin/coupons/delete/{$discount->id_discount_cp}" class="btn btn-sm btn-danger text-light me-1" title="Eliminar cupón de descuento">
                <i class="bi bi-trash"></i>
            </a>
            <a class="btn btn-outline-secondary btn-sm me-1"  data-bs-toggle="collapse" data-bs-target="#discountCollapse-{$discount->id_discount_cp}" title="Ver detalles">
                <i class="bi bi-info-circle"></i>
            </a>
            <a href="admin/coupons/download/{$discount->id_discount_cp}" class="btn btn-sm btn-outline-secondary me-1 disabled" title="Descargar imagen de descuento">
                <i class="bi bi-download"></i>
            </a>
            <a class="btn btn-sm btn-outline-secondary" onclick="copyToClipboard('D-{$discount->code}')" title="Copiar código del descuento">
                <i class="bi bi-copy"></i>
            </a>
        </div>
    </div>

    <!-- Contenido colapsable con ID único -->
    <div id="discountCollapse-{$discount->id_discount_cp}" class="collapse pb-1">
            <div class="d-flex px-2">
            <div class="d-flex align-self-center"><b>Creado por:&nbsp</b>
                {$discount->creator_singlename}
            </div>
        </div>
        <div class="d-flex justify-content-between px-2">
            <div class="d-flex align-self-center"><b>Fecha de vencimiento:&nbsp</b>

                {if $discount->expiration_date === null}
                    -
                {else}
                    {$discount->expiration_date}
                {/if}

            </div>
        </div>
        <div class="d-flex justify-content-between px-2">
            <div class="d-flex align-self-center"><b>Fecha de uso:&nbsp</b>

                {if $discount->use_date === null}
                    -
                {else}
                    {$discount->use_date|date_format:"%d/%m/%Y %H:%M:%S"}
                {/if}

            </div>
        </div>
        {if $discount->note != ''}
        <div class="d-flex px-2">
            <div class="d-flex align-self-center"><b>Nota:&nbsp</b>
                {$discount->note}
            </div>
        </div>
        {/if}

    </div>
</div>