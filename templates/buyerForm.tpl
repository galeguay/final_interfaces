{include file="page_header.tpl" title='Giftcard'}
<div class="container space-nav">
    <div class="container d-flex flex-column justify-content-center align-items-center mt-5 mt-xl-0">
        <h2 class="text-center mb-5 text-yellow"><b>Formulario para compra de giftcard</b></h2>
        <div class="mb-3 col-md-8">
            <div class="px-md-5 d-flex flex-column align-items-center">
                <div class="col-12 boxcolor0 text-yellow active p-3">¿Cómo funciona la giftcard?</div>
                <div class="bg-light text-dark p-3 mx-2">
                    <p>
                        1. Completar el siguiente formulario de contacto.
                    </p>
                    <p>
                        2. Realizar el pago a través de MercadoPago.
                    </p>
                    <p>
                        3. Una vez confirmado el pago, recibirá un email con el código y la imagen de la giftcard a la
                        cuenta de correo electrónico ingresada. <b class="bg-warning">Recuerde revisar la carpeta de SPAM.</b>
                    </p>
                    <p>
                        4. Ingresar a la aplicación de Urban Mysteries, previamente descargada en su smartphone. Elija
                        <b class="bg-warning">cualquier misión</b> que desee jugar y comenzado el juego se le solicitará que ingrese dicho código.
                    </p>
                </div>
            </div>
        </div>
        <form id="buyerForm" action="addBuyer" method="POST" class="col-10 col-lg-7 my-5 form-custom">
            <div class="form-group lead mb-5 fs-6">
                <div class="row mb-md-5">
                    <div class="col-md-6 mb-4 mb-md-0">
                        <div class="form-group">
                            <label class="fw-bold" for="name">Nombre:</label>
                            <input type="text" name="name" class="input-field" required>
                        </div>
                    </div>
                    <div class="col-md-6 mb-4 mb-md-0">
                        <div class="form-group">
                            <label class="fw-bold" for="lastname">Apellido:</label>
                            <input type="text" name="lastname" class="input-field" required>
                        </div>
                    </div>
                </div>
                <div class="row mb-md-5">
                    <div class="col-md-6 mb-4 mb-md-0">
                        <div class="form-group">
                            <label class="fw-bold" for="email">Correo electrónico:</label>
                            <input type="email" id="email" name="email" class="input-field"
                                   required>
                        </div>
                    </div>
                    <div class="col-md-6 mb-4 mb-md-0">
                        <div class="form-group">
                            <label class="fw-bold" for="confirm_email">Reingrese el correo electrónico:</label>
                            <input type="email" id="confirm_email" name="confirm_email" class="input-field"
                                   onpaste="return false;" autocomplete="off" required>
                        </div>
                    </div>
                </div>
                <div class="row mb-md-5">
                    <div class="col-md-6 mb-4 mb-md-0">
                        <div class="form-group">
                            <label class="fw-bold" for="dni">DNI:</label>
                            <input type="number" class="input-field" name="dni" maxlength="8"
                                   required>
                            <small class="form-text text-light">Ingresar sin puntos.</small>
                        </div>
                    </div>
                    <div class="col-md-6 mb-4 mb-md-0">
                        <div class="form-group">
                            <label class="fw-bold" for="tel">Teléfono:</label>
                            <input type="number" name="tel" class="input-field" pattern="[0-9]"
                                   required>
                            <small class="form-text text-light">Sin el 15. Ej: (0223)-155-123456, escribir
                                02235111111</small>
                        </div>
                    </div>
                </div>
            </div>
            <div class="form-check d-lg-flex justify-content-center">
                <input type="checkbox" id="terminos" name="terminos" class="form-check-input me-1" required>
                <label for="terminos" class="form-check-label text-yellow">
                    Acepto
                    <a class="text-yellow" href="{BASE_URL}terminos_y_condiciones">
                        Términos y condiciones de uso</a> y <a class="text-yellow" href="{BASE_URL}terminos_y_condiciones">Politicas de privacidad
                    </a>.
                </label>
            </div>
            <div class="form-group text-center my-5">
                <div class="error-message alert alert-danger mt-4 mb-4 d-none" role="alert">
                    ERROR
                </div>
                <input type="submit" id="submit-btn" class="btn btn-warning btn-lg mb-5" value="Continuar">
            </div>
        </form>
    </div>
</div>
<script type="text/javascript" src="js/buyerForm.js"></script>
{include file="page_footer.tpl"}