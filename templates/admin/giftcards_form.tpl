{if $user['rol'] > 1}
    {include file="admin/page_header_admin.tpl" title='Generador de giftcards'}
    <div class="container-fluid d-flex flex-column align-items-center justify-content-center default-space ">
        <div class="fw-bold title text-warning">Generar giftcards</div>
        {include file="../alerts.tpl"}
        <section class="bg-light rounded-3 col-12 col-lg-6">
            <form id="generateMultipleGiftcards" action="admin/generateMultipleGiftcards" method="POST" class="row g-4">
                
                <!-- Cantidad -->
                <div>
                    <label class="form-label" for="quantity">Cantidad de Giftcards</label>
                    <input class="form-control fs-12" type="number" id="quantity" name="quantity" min="1" max="100" value="1" required>
                    <small class="form-text text-muted">Máximo 100</small>
                </div>

                <!-- VIP -->
                <div>
                    <div class="form-check form-switch">
                        <input type="checkbox" id="is_vip" name="is_vip" class="form-check-input me-1" checked>
                        <label for="is_vip" class="form-check-label">
                            VIP (con tiempos extra gratis)
                        </label>
                    </div>
                </div>

                <!-- Nota -->
                <div>
                    <textarea class="form-control fs-12" id="note" name="note" rows="3" maxlength="200" placeholder="Comentario o motivo."></textarea>
                </div>

                <div>
                    {* <div class="form-group mb-3">
                        <label for="check-a">generar:</label>
                        <input type="checkbox" id="check-a" name="check-a">
                    </div>
                    <div class="form-group mb-3">
                        <label for="check-b">Checkpoint B:</label>
                        <input type="checkbox" id="check-b" name="check-b">
                    </div> *}
                    <div class="form-group text-center">
                        <div class="error-message alert alert-danger mt-4 mb-4 d-none" role="alert">
                            ERROR
                        </div>
                        <input type="submit" id="submit-btn" class="fs-12 btn btn-warning btn-sm" value="Generar">
                    </div>
                </div>
            </form>
        </section>
    </div>
{/if}
{include file="page_footer.tpl" hide=true}