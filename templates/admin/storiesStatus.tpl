{include file="admin/page_header_admin.tpl" title='Estados de historias'}

<!-- Modal de Confirmación -->
<div class="modal fade" id="confirmationModal" tabindex="-1" aria-labelledby="confirmationModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
            <h5 class="modal-title" id="confirmationModalLabel">Confirmar cambio de estado</h5>
            <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <div class="modal-body">
            El cambio de estado de la historia <span class="fw-bold text-uppercase">se aplicará instantaneamente</span> en el momento que confirme esta acción.
            <br>¿Estás seguro de que deseas aplicar este cambio de estado?
            </div>
            <div class="modal-footer">
            <button type="button" class="btn btn-secondary btn-sm" data-bs-dismiss="modal">Cancelar</button>
            <button type="button" id="confirmSubmit" class="btn btn-success">Confirmar</button>
            </div>
        </div>
    </div>
</div>

<div class="container-fluid d-flex flex-column align-items-center justify-content-center default-space">

    <div class="fw-bold title text-warning">Estados de historias</div>
    <div class="text-light rounded py-1 px-2 fw-bold bg-success mb-3">ACTIVADO PARCIALMENTE, SOLO modifica el estado que figura en la página web</div>


    {include file="../alerts.tpl"}

    <!-- Bloque de Información como Acordeón -->
    <div class="accordion w-100 p-0 mb-2" id="infoAccordion">
        <div class="accordion-item border border-0">
            <div class="accordion-header" id="headingInfo">
                <button class="accordion-button bg-light section mb-0 collapsed subtitle" type="button" data-bs-toggle="collapse" data-bs-target="#collapseInfo" aria-expanded="false" aria-controls="collapseInfo">
                    Información
                </button>
            </div>
            <div id="collapseInfo" class="accordion-collapse collapse" aria-labelledby="headingInfo" data-bs-parent="#infoAccordion">
                <div class="accordion-body bg-light">
                    <div class="d-flex mb-3">
                        <span>Al presionar <strong>"Publicar"</strong>, el estado de la historia se actualiza al instante en la aplicación y la web.</span>
                    </div>
                    <div>
                        Tipos de estados de las historias:
                        <ul>
                            <li><span class="ff-montserrat-bold">Invisible</span>: <span class="text-danger ff-montserrat-bold">el usuario NO la visibiliza</span> y <span class="text-danger ff-montserrat-bold">NO se permite jugar</span>.</li>
                            <li><span class="ff-montserrat-bold">Disponible</span>: el usuario la visibiliza y <span class="text-success ff-montserrat-bold">se permite jugar</span>.</li>
                            <li><span class="ff-montserrat-bold">Nuevo</span>: el usuario la visibiliza, <span class="text-success ff-montserrat-bold">se permite jugar</span> y se mostrará la etiqueta "NUEVO".</li>
                            <li><span class="ff-montserrat-bold">En Mantenimiento</span>: el usuario la visibiliza pero <span class="text-danger ff-montserrat-bold">NO se permite jugar</span>.</li>
                            <li><span class="ff-montserrat-bold">Próximamente</span>: el usuario la visibiliza pero <span class="text-danger ff-montserrat-bold">NO se permite jugar</span>.</li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <section class="bg-light w-100">
        <div class="mb-3 subtitle">Cambiar estado</div>
        {if empty($stories)}
            <div class="">
                No se encontraron resultados
            </div>
        {else}
            
            {foreach from = $stories item = $story}
                <form id="statusForm{$story->story_id}" action="admin/story/updateStatus" method="POST">
                    <div class="card px-0 pt-2 mb-1">
                        <div class="d-flex flex-wrap justify-content-center align-items-center">
                            <!-- Story ID -->
                            <div class="col-12 col-md-1 text-center mb-2">
                                {$story->story_id}
                            </div>    

                            <!-- Hidden Input -->
                            <input type="hidden" name="story_id" value="{$story->story_id}">

                            <!-- Title -->
                            <div class="col-12 col-md-5 text-center mb-2">
                                {$story->title}
                            </div>

                            <!-- City -->
                            <div class="col-12 col-md-2 text-center mb-2">
                                <span class="">{$story->city}</span>
                            </div>

                            <!-- Status Dropdown -->
                            <div class="col-8 col-md-2 text-center mb-2">
                                <select class="form-select form-select-sm fs-12" name="new_status">
                                    {if $story->story_status_id == '0'}
                                        <option selected value="0">Invisible</option>
                                    {else}
                                        <option value="0">Invisible</option>
                                    {/if}
                                    {if $story->story_status_id == '1'}
                                        <option selected value="1">Disponible</option>
                                    {else}
                                        <option value="1">Disponible</option>
                                    {/if}
                                    {if $story->story_status_id == '2'}
                                        <option selected value="2">Nuevo</option>
                                    {else}
                                        <option value="2">Nuevo</option>
                                    {/if}
                                    {if $story->story_status_id == '3'}
                                        <option selected value="3">En mantenimiento</option>
                                    {else}
                                        <option value="3">En mantenimiento</option>
                                    {/if}
                                    {if $story->story_status_id == '4'}
                                        <option selected value="4">Proximamente</option>
                                    {else}
                                        <option value="4">Proximamente</option>
                                    {/if}
                                </select>
                            </div>
                                    
                            <!-- Submit Button -->
                            <div class="col-12 col-md-2 text-center mb-2">
                                <button title="Publicar cambios" type="submit" class="btn btn-warning btn-sm fs-12">
                                    <svg xmlns="http://www.w3.org/2000/svg" width="14" height="14" viewBox="0 0 24 24" fill="none" stroke="#000000" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-share">
                                        <path d="M4 12v8a2 2 0 0 0 2 2h12a2 2 0 0 0 2-2v-8"></path>
                                        <polyline points="16 6 12 2 8 6"></polyline>
                                        <line x1="12" y1="2" x2="12" y2="15"></line>
                                    </svg> Publicar
                                </butt>
                            </div>
                        </div>
                    </div>
                </form>
            {/foreach}

        {/if}
    </section>

</div>
<script type="text/javascript" src="js/confirmForm.js"></script>
{include file="page_footer.tpl" hide=true}
