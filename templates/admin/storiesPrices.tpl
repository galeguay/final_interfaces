{include file="admin/page_header_admin.tpl" title='Precio de las historias'}

<!-- Modal de Confirmación -->
<div class="modal fade" id="confirmationModal" tabindex="-1" aria-labelledby="confirmationModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
            <h5 class="modal-title" id="confirmationModalLabel">Confirmar cambio de precios</h5>
            <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <div class="modal-body">
            Este cambio <span class="fw-bold">se aplicará instantaneamente</span> en el cobro a partir del momento que confirme esta acción.
            <br>¿Estás seguro de que deseas aplicar este cambio de precio?
            </div>
            <div class="modal-footer">
            <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Cancelar</button>
            <button type="button" id="confirmSubmit" class="btn btn-success">Confirmar</button>
            </div>
        </div>
    </div>
</div>

<div class="container-fluid d-flex flex-column align-items-center justify-content-center default-space">

    <div class="fw-bold title text-warning">Precios de historias</div>
    <div class="text-light rounded py-1 px-2 fw-bold bg-success mb-3">ACTIVADO PARCIALMENTE, modifica el precio de cobro, pero NO cambia el precio que figura en la aplicación.</div>
    

    {include file="../alerts.tpl"}

    <!-- Bloque de Información como Acordeón -->
    <div class="accordion w-100 p-0 mb-2" id="infoAccordion">
        <div class="accordion-item border border-0">
            <div class="accordion-header" id="headingInfo">
                <button class="accordion-button collapsed subtitle section mb-0 bg-light" type="button" data-bs-toggle="collapse" data-bs-target="#collapseInfo" aria-expanded="false" aria-controls="collapseInfo">
                    Información
                </button>
            </div>
            <div id="collapseInfo" class="accordion-collapse collapse" aria-labelledby="headingInfo" data-bs-parent="#infoAccordion">
                <div class="accordion-body bg-light">
                <div class="d-flex mb-3">
                    <span0>Al presionar <strong>"Publicar"</strong>, el precio de la historia se actualiza al instante en la aplicación, la web y la API de cobro del pago. (En el caso de la aplicación depende que el celular tenga conexión a internet)
                </div>
                <div class="d-flex mt-3 mb-3">
                    <b class="bg-yellow">Si el precio de una misión se establece en 0, se mostrará como "GRATIS".</b>
                </div>
                </div>
            </div>
        </div>
    </div>

    <section class="bg-light w-100">
        <form id="priceByCityForm" action="admin/stories/updatePrices" method="POST">
            <div class="d-flex flex-column">
                <div class="mb-4 subtitle">Cambio multiple de precios</div>
                <div>
                    <label class="" for="new_price">Precio $</label>
                    <input type="number" name="new_price" class="input-field w-auto mb-3" value=0>
                </div>
                <div class="d-flex justify-content-start align-items-center mb-4">
                    <span class="me-2">Realizar cambio de precio en </span>
                    <select class="form-select form-select-sm w-auto" aria-label="target" name="target">
                        <option value="all" selected>todas</option>
                        <option value=7600>las de Mar del Plata</option>
                        <option value=1000>las de Buenos Aires</option>
                        <option value=2000>las de Córdoba</option>
                    </select>
                </div>
            </div>
            <div class="d-flex justify-content-center">
                <button type="submit" class="custom-submit-btn btn btn-warning btn-sm">
                    Aplicar
                </button>
            </div>
        </form>
    </section>

    <section class="bg-light w-100">
        <div class="mb-4 subtitle">Cambio de precios individual</div>
        <div class="rounded-2 d-flex flex-column">
            {if empty($stories)}
            <div class="">
                No se encontraron resultados
            </div>
            {else}
            {foreach from = $stories item = $story}
            <form id="priceForm{$story->story_id}" action="admin/story/updatePrice" method="POST">
                <div class="card px-0 pt-2 mb-1">
                    <div class="d-flex flex-wrap justify-content-between align-items-center">
                        <!-- Story ID -->
                        <div class="col-12 col-md-1 text-center mb-2">
                            {$story->story_id}
                        </div>

                        <!-- Hidden Input -->
                        <input type="hidden" name="story_id" value="{$story->story_id}">

                        <!-- Title -->
                        <div class="col-12 col-md-4 text-center mb-2">
                            {$story->title}
                        </div>

                        <!-- City -->
                        <div class="col-12 col-md-2 text-center mb-2">
                            {$story->city}
                        </div>

                        <div class="col-12 col-md-3 text-center mb-2">
                            $<input type="number" name="new_price" class="input-field col-6 col-lg-6" value="{$story->price|default:0}">
                        </div>

                        <!-- Submit Button -->
                        <div class="col-12 col-md-2 text-center mb-2">
                            <button title="Publicar cambios" type="submit" class="custom-submit-btn btn btn-warning btn-sm fs-12">
                                <svg xmlns="http://www.w3.org/2000/svg" width="14" height="14" viewBox="0 0 24 24" fill="none" stroke="#000000" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-share">
                                    <path d="M4 12v8a2 2 0 0 0 2 2h12a2 2 0 0 0 2-2v-8"></path>
                                    <polyline points="16 6 12 2 8 6"></polyline>
                                    <line x1="12" y1="2" x2="12" y2="15"></line>
                                </svg> Publicar
                            </button>
                        </div>
                    </div>
                </div>
            </form>
            {/foreach}
            {/if}
        </div>
    </section>

</div>
<script type="text/javascript" src="js/confirmForm.js"></script>
{include file="page_footer.tpl" hide=true}
