{include file="admin/page_header_admin.tpl" title='Historias'}
<div class="container-fluid d-flex flex-column align-items-center justify-content-center default-space">
    <div class="fw-bold title text-warning">Historias</div>
    {if isset($alert_type)}
        {include file="alerts.tpl" alert_type=$alert_type message=$alert_message}
    {/if}
    <form id="storyForm" action="admin/story/register/{$story->story_id}" method="POST" class="col-12 col-md-8">
        <div class="card">
            <ul class="list-group list-group-flush">
                <div class="accordion" id="spanish">
                    <div class="accordion-item">
                        <h2 class="accordion-header">
                            <button class="accordion-button" type="button" data-bs-toggle="collapse"
                                data-bs-target="#panelsStayOpen-collapseOne" aria-expanded="true"
                                aria-controls="panelsStayOpen-collapseOne">
                                Información en español
                            </button>
                        </h2>
                        <div id="panelsStayOpen-collapseOne" class="accordion-collapse collapse show">
                            <div class="accordion-body">
                                <div
                                    class="border-bottom d-flex justify-content-between align-items-center col-12 pb-2">
                                    <label class="text-secondary" for="title">Título:</label>
                                    <input type="text" name="title" class="input-field col-8" required
                                        value="{$story->title|default:''}">
                                </div>
                                <div
                                    class="border-bottom d-flex justify-content-between align-items-center col-12 py-2">
                                    <textarea type="text" name="synopsis" class="col-12" style="height: 100px"
                                        placeholder="Sinópsis" required>{$story->synopsis|default:''}</textarea>
                                </div>
                                <div
                                    class="border-bottom d-flex justify-content-between align-items-center col-12 py-2">
                                    <label class="text-secondary" for="startLocation">Punto de inicio:</label>
                                    <input type="text" name="startLocation" class="input-field col-8"
                                        value="{$story->startLocation|default:''}">
                                </div>
                                <div
                                    class="border-bottom d-flex justify-content-between align-items-center col-12 py-2">
                                    <label class="text-secondary" for="accessibility">Accesibilidad:</label>
                                    <input type="text" name="accessibility" class="input-field col-8"
                                        value="{$story->accessibility|default:''}">
                                </div>
                                <div class="d-flex justify-content-between align-items-center col-12 pt-2">
                                    <label class="text-secondary" for="pets">Mascotas:</label>
                                    <input type="text" name="pets" class="input-field col-8"
                                        value="{$story->pets|default:''}">
                                </div>
                            </div>
                            <div class="bg-secondary d-flex"> </div>
                        </div>
                    </div>
                    <div class="accordion-item">
                        <h2 class="accordion-header">
                            <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse"
                                data-bs-target="#panelsStayOpen-collapseTwo" aria-expanded="false"
                                aria-controls="panelsStayOpen-collapseTwo">
                                Información en inglés
                            </button>
                        </h2>
                        <div id="panelsStayOpen-collapseTwo" class="accordion-collapse collapse">
                            <div class="accordion-body">
                                <div
                                    class="border-bottom d-flex justify-content-between align-items-center col-12 pb-2">
                                    <label class="text-secondary" for="title_eng">Título (Inglés):</label>
                                    <input type="text" name="title_eng" class="input-field col-8"
                                        value="{$story->title_eng|default:''}">
                                </div>
                                <div
                                    class="border-bottom d-flex justify-content-between align-items-center col-12 py-2">
                                    <textarea type="text" name="synopsis_eng" class="col-12" style="height: 100px"
                                        placeholder="Sinópsis (Inglés)">{$story->synopsis_eng|default:''}</textarea>
                                </div>
                                <div
                                    class="border-bottom d-flex justify-content-between align-items-center col-12 py-2">
                                    <label class="text-secondary" for="startLocation_eng">Punto de inicio
                                        (Inglés):</label>
                                    <input type="text" name="startLocation_eng" class="input-field col-8"
                                        value="{$story->startLocation_eng|default:''}">
                                </div>
                                <div
                                    class="border-bottom d-flex justify-content-between align-items-center col-12 py-2">
                                    <label class="text-secondary" for="accessibility_eng">Accesibilidad
                                        (Inglés):</label>
                                    <input type="text" name="accessibility_eng" class="input-field col-8"
                                        value="{$story->accessibility_eng|default:''}">
                                </div>
                                <div class="d-flex justify-content-between align-items-center col-12 pt-2">
                                    <label class="text-secondary" for="pets_eng">Mascotas (Inglés):</label>
                                    <input type="text" name="pets_eng" class="input-field col-8"
                                        value="{$story->pets_eng|default:''}">
                                </div>
                            </div>

                            <div class="bg-secondary d-flex"> </div>
                        </div>
                    </div>
                </div>
                <li class="list-group-item">
                    <diV class="d-flex justify-content-between align-items-center">
                        <label class="text-secondary" for="title">Idiomas disponibles actualmente:</label>
                        <div class="form-check d-flex flex-column justify-content-center">
                            <div>
                                <input type="checkbox" id="terminos" name="esp" class="form-check-input me-1" checked
                                    disabled>
                                <label for="esp" class="form-check-label text-muted">
                                    Español
                                </label>
                            </div>
                            <div>
                                {if $story->languages == 'esp-eng'}
                                    <input type="checkbox" id="terminos" name="eng" class="form-check-input me-1" checked>
                                {else}
                                    <input type="checkbox" id="terminos" name="eng" class="form-check-input me-1">
                                {/if}
                                <input type="checkbox" id="terminos" name="eng" class="form-check-input me-1">
                                <label for="eng" class="form-check-label text-muted">
                                    Inglés
                                </label>
                            </div>
                        </div>
                    </diV>
                </li>

                <li class="list-group-item">
                    <diV class="d-flex justify-content-between align-items-center">
                        <label class="text-secondary" for="city">Ciudad:</label>
                        <div class="col-4">
                            <select name="city" class="form-select" aria-label="city">
                                <option value="7600" selected>Mar del Plata</option>
                                <option value="1000">Buenos Aires</option>
                                <option value="5000">Córdoba</option>
                                {if !empty($story)}
                                    {if $story->city == 'Buenos Aires'}
                                        <option value="7600">Mar del Plata</option>
                                        <option value="1000" selected>Buenos Aires</option>
                                        <option value="5000">Córdoba</option>
                                    {elseif $story->city == 'Córdoba'}
                                        <option value="7600">Mar del Plata</option>
                                        <option value="1000">Buenos Aires</option>
                                        <option value="5000" selected>Córdoba</option>
                                    {/if}
                                {/if}
                            </select>
                        </diV>
                    </diV>
                </li>
                <li class="list-group-item">
                    <diV class="d-flex justify-content-between align-items-center">
                        <label class="text-secondary" for="difficulty">Dificultad:</label>
                        <div class="btn-group text-dark" role="group" aria-label="Basic radio toggle button group">
                            {if isset($story->difficulty)}
                                {assign var="selected_level" value=$story->difficulty}
                            {else}
                                {assign var="selected_level" value=1}
                            {/if}

                            {for $i=1 to 5}
                                <input type="radio" value="{$i}" class="btn-check" name="difficulty" id="level{$i}"
                                    autocomplete="off" {if $i == $selected_level}checked{/if}>
                                <label class="btn btn-outline-dark" for="level{$i}">{$i}</label>
                            {/for}
                        </div>
                    </diV>
                </li>
                <li class="list-group-item">
                    <div class="d-flex justify-content-between align-items-center">
                        <label class="text-secondary" for="distance">Distancia (metros):</label>
                        <input type="number" name="distance" class="input-field col-2" maxlength="4"
                            value="{$story->distance|default:0}">
                    </div>
                    </li>
                    <li class="list-group-item">
                        <div class="d-flex justify-content-between align-items-center">
                            <label class="text-secondary" for="time">Tiempo (minutos):</label>
                            <input type="number" name="time" class="input-field col-2" maxlength="4"
                                value="{$story->time|default:0}">
                        </div>
                    </li>
                    <li class="list-group-item">
                        <div class="d-flex justify-content-between align-items-center">
                            <label class="text-secondary" for="startLocationLink">URL de punto de inicio:</label>
                            <input type="text" name="startLocationLink" class="input-field col-8"
                                value="{$story->startLocationLink|default:''}">
                        </div>
                    </li>
                    <li class="list-group-item">
                        <div class="d-flex justify-content-between align-items-center">
                            <label class="text-secondary" for="numberOfChallenges">Número de desafíos:</label>
                            <input type="number" name="numberOfChallenges" class="input-field col-2" maxlength="2"
                                value="{$story->numberOfChallenges|default:0}">
                        </div>
                    </li>
                    <li class="list-group-item">
                        <div class="d-flex justify-content-between align-items-center col-12 py-2">
                            <label class="text-secondary" for="name_id">SID:</label>
                            <input type="text" name="name_id" class="input-field col-3" maxlength="20"
                                placeholder="(No completar)" value="{$story->name_id|default:''}">
                        </div>
                    </li>
                    <li class="list-group-item">
                        <diV class="d-flex justify-content-around align-items-center">
                            <input type="submit" id="submit-btn" class="btn btn-yellow btn-sm my-3" value="Guardar">
                        </diV>
                    </li>
            </ul>
        </div>
    </form>
</div>
{include file="page_footer.tpl" hide=true}