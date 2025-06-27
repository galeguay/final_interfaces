{if $user['rol'] > 1}
    {include file="admin/page_header_admin.tpl" title='Generador de cupones de descuentos'}
    <div class="container-fluid d-flex flex-column align-items-center justify-content-center default-space">
        <div class="fw-bold title text-warning text-center">Generar cupones de descuentos</div>
        {include file="../alerts.tpl"}
        <section class="bg-light col-12 col-lg-6">
            <form id="generateDiscountCoupons" action="admin/coupons/generate" method="POST" class="row g-4">
                <!-- Cantidad -->
                <div>
                    <label class="form-label" for="quantity">Cantidad</label>
                    <input class="form-control fs-12" type="number" id="quantity" name="quantity" min="1" max="100" value="1" required>
                    <small class="form-text text-muted">Máximo 100</small>
                </div>

                <!-- Porcentaje de descuento -->
                <div>
                    <label class="form-label" for="percent">Porcentaje de descuento <span class="text-muted">&nbsp;Hasta 80</span></label>
                    <div class="d-flex align-items-center justify-content center">
                        <input type="number" id="percent" name="percent" min="1" max="80" class="form-control fs-12 me-1" required><strong>%</strong>
                    </div>
                    <div class="btn-group d-flex mt-1">
                        <button type="button" class="btn btn-outline-secondary btn-sm" onclick="setDiscountPercent(10)">10%</button>
                        <button type="button" class="btn btn-outline-secondary btn-sm" onclick="setDiscountPercent(15)">15%</button>
                        <button type="button" class="btn btn-outline-secondary btn-sm" onclick="setDiscountPercent(20)">20%</button>
                        <button type="button" class="btn btn-outline-secondary btn-sm" onclick="setDiscountPercent(25)">25%</button>
                        <button type="button" class="btn btn-outline-secondary btn-sm" onclick="setDiscountPercent(30)">30%</button>
                        <button type="button" class="btn btn-outline-secondary btn-sm" onclick="setDiscountPercent(40)">40%</button>
                        <button type="button" class="btn btn-outline-secondary btn-sm" onclick="setDiscountPercent(50)">50%</button>
                    </div>
                </div>

                <!-- Fecha de vencimiento -->
                <div>
                    <div>
                        <div class="form-check form-switch">
                            <input class="form-check-input" type="checkbox" id="enableExpiration" onclick="toggleExpirationDate()">
                            <label class="form-check-label" for="enableExpiration">Fecha de vencimiento</label>
                        </div>
                    </div>
                    <div class="col-12">
                        <input type="datetime-local" class="form-control fs-12" id="startDate" name="expiration_date" disabled>
                    </div>
                    <div class="btn-group d-flex mt-1 align-items-center">
                        <button type="button" class="btn btn-outline-secondary btn-sm" onclick="setExpirationDate(3)" disabled>3 meses</button>
                        <button type="button" class="btn btn-outline-secondary btn-sm" onclick="setExpirationDate(6)" disabled>6 meses</button>
                        <button type="button" class="btn btn-outline-secondary btn-sm" onclick="setExpirationDate(12)" disabled>1 año</button>
                    </div>
                </div>

                <!-- Nota -->
                <div>
                    <textarea class="form-control fs-12" id="note" name="note" rows="3" maxlength="200" placeholder="Comentario o motivo."></textarea>
                </div>

                <!-- Botón de envío -->
                <div class="text-center">
                    <div class="error-message alert alert-danger mt-4 mb-4 d-none" role="alert">
                        ERROR
                    </div>
                    <input type="submit" id="submit-btn" class="btn btn-warning btn-sm fs-12" value="Generar">
                </div>
            </form>
        </section>
    </div>
    <script type="text/javascript" src="js/discountCpsForm.js"></script>
{/if}
{include file="page_footer.tpl" hide=true}