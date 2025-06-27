{include file="admin/page_header_admin.tpl" title='Iniciar Sesión'}
<div class="contenedor-imagen vh-100 bg-dark text-light space-nav space-foot overflow-hide">
    <img class="img1" src="/images/logo_gris.webp" alt="Logo Urban Mysteries">
    <img class="img2" src="/images/logo_ojo_gris.webp" alt="Logo Urban Mysteries">
    <div class="container d-flex flex-column justify-content-center align-items-center pt-2 mt-lg-0">
        <form id="startSession" action="startSession" method ="POST" class="form-custom col-10 col-md-6 col-lg-3 mt-5 mb-md-4">
            <h3 class="text-center mt-5 mt-lg-0 mb-5"><b>Iniciar Sesión</b></h3>
            <div class="mt-5">
            {include file="../alerts.tpl"}
            </div>
            <div class="form-group mb-3">
                <input type="email" id="email" name="email" class="input-field" placeholder="Correo electrónico" required>
            </div>
            <div class="form-group mb-3">
                <input type="password" id="pass" name="pass" class="input-field" placeholder="Contraseña" required>
            </div>
            <div class="form-group text-center">
                <div class="error-message alert alert-danger mt-4 mb-4 d-none" role="alert">
                    ERROR
                </div>
                <input type="submit" id="submit-btn" class="btn btn-outline-warning fs-12 mt-5" value="Iniciar Sesión">
            </div>
        </form>
        <a href="{BASE_URL}home" class="mt-5">Ir página principal</a>
    </div>
</section>
<script type="text/javascript" src="/js/login.js"></script>
{include file="page_footer.tpl" hide=true}