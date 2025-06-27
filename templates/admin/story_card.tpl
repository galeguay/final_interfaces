<div class="col-12 col-lg-6 col-xxl-5 p-2 ">
    <div class="card ">
        <div class="card-header bg-dark text-light d-flex flex-column justify-content-between">
            <div class="ff-misteryzero text-uppercase fw-bold text-start fs-5">
                {$story->title|default:'Titulo de la historia'}
            </div>
            <div class="d-flex justify-content-between mt-1 ">
                <div class="d-flex flex-column align-items-start text-end col-6">
                    <div>
                        <b>{$story->city|default:'Mar del Plata'}</b>
                    </div>
                    <div class="">
                        ID: {$story->story_id|default:'XXXXXX'}
                    </div>
                    <div class="">
                        SID: {$story->name_id|default:'xxx'}
                    </div>
                </div>
                <div class="d-flex justify-content-end align-items-end text-start col-6">
                    <a href="admin/stories/edit/{$story->story_id}" title="Editar historia"><i class="bi bi-pencil-square text-light fs-5"></i></a>
                </div>
            </div>
        </div>

        <ul class="list-group list-group-flush ">
            <div class="px-2">
                <li class="list-group-item d-flex border-0 border-bottom">
                    <div class="d-flex align-items-center col-6">
                        <div class="text-start text-secondary me-2">
                            Estado:
                        </div>
                    </div>
                    <div class="d-flex justify-content-end align-items-end col-6">
                        {assign var="status_class" value="bg-info"}
                        {if $story->status == 'Invisible'}
                            {assign var="status_class" value="bg-secondary"}
                        {elseif $story->status == 'Nuevo'}
                            {assign var="status_class" value="bg-info"}
                        {elseif $story->status == 'Proximamente'}
                            {assign var="status_class" value="bg-warning text-dark"}
                        {elseif $story->status == 'En mantenimiento'}
                            {assign var="status_class" value="bg-danger"}
                        {elseif $story->status == 'Disponible'}
                            {assign var="status_class" value="bg-success"}
                        {/if}
                        <div title="Estado de la historia"
                            class="badge {$status_class} d-flex justify-content-end">
                            {$story->status|default:'Invisible'}
                        </div>
                    </div>
                </li>
                <li class="list-group-item d-flex bg-light border-0 border-bottom">
                    <div class="d-flex align-items-center col-6">
                        <div class="text-start text-secondary me-2">
                            Precio:
                        </div>
                    </div>
                    <div class="d-flex justify-content-end align-items-end col-6">
                        <div title="Precio" class="text-success fw-bold">
                            {if isset($story->price)}
                                {if $story->price == 0}
                                    GRATIS
                                {else}
                                    ${$story->price|number_format:0:'.':'.'}
                                {/if}
                            {else}
                                $-
                            {/if}
                        </div>
                    </div>
                </li>
                <li class="list-group-item d-flex border-0 border-bottom">
                    <div class="d-flex align-items-center col-6">
                        <div class="text-start text-secondary me-2">
                            Dificultad:
                        </div>
                    </div>
                    <div class="d-flex justify-content-end align-items-end col-6">
                        {$story->difficulty|default:'1'}
                    </div>
                </li>
                <li class="list-group-item d-flex bg-light border-0 border-bottom">
                    <div class="d-flex align-items-center col-6">
                        <div class="text-start text-secondary me-2">
                            Distancia:
                        </div>
                    </div>
                    <div class="d-flex justify-content-end align-items-end col-6">
                        {$story->distance|default:0} m.
                    </div>
                </li>
                <li class="list-group-item d-flex border-0 border-bottom">
                    <div class="d-flex align-items-center col-6">
                        <div class="text-start text-secondary me-2">
                            Tiempo:
                        </div>
                    </div>
                    <div class="d-flex justify-content-end align-items-end col-6">
                        {$story->time|default:0} min.
                    </div>
                </li>
                <li class="list-group-item d-flex bg-light border-0 border-bottom">
                    <div class="d-flex align-items-center col-6">
                        <div class="text-start text-secondary me-2">
                            Accesibilidad:
                        </div>
                    </div>
                    <div class="d-flex justify-content-end align-items-end col-6 text-end">
                        {$story->accessibility|default:''}
                    </div>
                </li>
                <li class="list-group-item d-flex border-0 border-bottom">
                    <div class="d-flex align-items-center col-6">
                        <div class="text-start text-secondary me-2">
                            Mascotas:
                        </div>
                    </div>
                    <div class="d-flex justify-content-end align-items-end col-6">
                        {$story->pets|default:''}
                    </div>
                </li>
                <li class="list-group-item d-flex bg-light border-0 border-bottom">
                    <div class="d-flex align-items-center col-6">
                        <div class="text-start text-secondary me-2">
                            Punto de inicio:
                        </div>
                    </div>
                    <div class="d-flex justify-content-end col-6">
                        <div title="{$story->startLocation|default:''}" class="text-truncate">
                            {$story->startLocation|default:''}
                        </div>
                    </div>
                </li>
                <li class="list-group-item d-flex border-0 border-bottom">
                    <div class="d-flex align-items-center col-6">
                        <div class="text-start text-secondary me-2">
                            Link Maps:
                        </div>
                    </div>
                    <div class="d-flex justify-content-end align-items-end col-6">
                        <a class="text-truncate col-8" target="_blank"
                            href="{$story->startLocationLink|default:''}">{$story->startLocationLink|default:''}</a>
                    </div>
                </li>
                <div class="accordion border-0 border-bottom" id="spanish">
                    <div class="accordion-item border-0">
                        <div class="accordion-header border-0">
                            <button class="accordion-button collapsed border-0 px-3 py-2" type="button"
                                data-bs-toggle="collapse" data-bs-target="#synopsis-{$story->story_id}"
                                aria-expanded="false" aria-controls="flush-collapseOne">
                                Sinópsis
                            </button>
                        </div>
                        <div id="synopsis-{$story->story_id}" class="accordion-collapse collapse" data-bs-parent="#accordionFlushExample">
                            <div class="accordion-body text-secondary">
                                {$story->synopsis|default:''}
                            </div>
                            <div class="bg-secondary d-flex"></div>
                        </div>
                    </div>
                </div>
            </div>
        </ul>
    </div>
</div>