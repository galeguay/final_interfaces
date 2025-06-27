{if $user['rol'] > 1}
<header>
    <nav id="mainNav" class="navbar navbar-expand-xl navbar-dark bg-dark w-100 es-true fixed-top navbar-home d-lg-none">
        <div class="container-xxl">
            <a class="navbar-brand" href="admin">
                <img height="60" src="images/logo_circle_200x200.webp" alt="Logo de Urban Mysteries" class="imgbrand">
            </a>
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav"
                aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse justify-content-between align-items-end" id="navbarNav">
                <ul class="nav flex-column align-items-center flex-md-nowrap p-3 mt-5">
                    <div class="d-flex flex-column align-items-center col-8 fs-14">
                        <li class="text-secondary my-2">
                            <span class="fw-bold "> Giftcards </span>
                        </li>
                        <li class="nav-item mb-2 d-flex justify-content-between">
                            <a class="nav-custom" href="admin/giftcards">
                                <i class="bi bi-card-heading"></i> Ver giftcards
                            </a>
                        </li>
                        <li class="nav-item mb-4 d-flex justify-content-between">
                            <a class="nav-custom" href="admin/giftcards/generator">
                                <i class="bi bi-plus-square-dotted"></i> Generar
                            </a>
                        </li>
                        <li class="text-secondary my-2">
                            <span class="fw-bold "> Cupones de descuentos </span>
                        </li>
                        <li class="nav-item mb-2 d-flex justify-content-between">
                            <a class="nav-custom" href="admin/coupons">
                                <i class="bi bi-percent"></i> Ver cupones <span class="ms-1 text-dark badge badge-sm bg-warning">NUEVO</span>
                            </a>
                        </li>
                        <li class="nav-item mb-4 d-flex justify-content-between">
                            <a class="nav-custom" href="admin/coupons/generator">
                                <i class="bi bi-plus-square-dotted"></i> Generar <span class="ms-1 text-dark badge badge-sm bg-warning">NUEVO</span>
                            </a>
                        </li>
                        <li class="text-secondary my-2">
                            <span class="fw-bold "> Historias </span>
                        </li>
                        <li class="nav-item mb-2 d-flex justify-content-between">
                            <a class="nav-custom" href="admin/stories">
                                <i class="bi bi-list-columns-reverse"></i> Ver historias
                            </a>
                        </li>
                        <li class="nav-item mb-2">
                            <a class="nav-custom" href="admin/stories/status">
                                <i class="bi bi-sliders"></i> Estados <span class="ms-1 text-dark badge badge-sm bg-warning">NUEVO</span>
                            </a>
                        </li>
                        <li class="nav-item mb-2 d-flex justify-content-between">
                            <a class="nav-custom" href="admin/stories/prices">
                                <i class="bi bi-currency-dollar"></i> Precios <span class="ms-1 text-dark badge badge-sm bg-warning">NUEVO</span>
                            </a>
                        </li>
                        {* <li class="nav-item mb-5">
                            <a class="nav-custom" href="admin/storytellings">
                                <i class="bi bi-book-fill"></i> Storytelling
                            </a>
                        </li> *}
                    </div>
                </ul>
                <div class="d-flex justify-content-around align-items-center text-secondary text-center mb-3 mt-5 mt-md-0 fs-5">
                    {*<a class="nav-custom me-3" href="account/settings">
                        <i class="bi bi-gear-wide-connected text-truncate"></i>
                    </a> *}
                    <a class="nav-custom nav-custom fs-4" href="admin/logout">
                        <i class="bi bi-box-arrow-right"></i>
                    </a>
                </div>
            </div>
        </div>
    </nav>
</header>
<div class="d-flex">
    <nav class="d-none d-lg-flex col-lg-2 bg-dark justify-content-center align-items-center overflow-auto vh-100">
        <div class="d-flex flex-column justify-content-between align-items-center vh-100 p-2 ">
            <div>
                <div class="d-flex justify-content-center mt-4 mb-5">
                    <a href="admin" class="nav-custom">
                        <img height="80" src="/images/logo_circle_200x200.webp" alt="Logo de Urban Mysteries">
                    </a>
                </div>
                <ul class="nav flex-column align-items-center flex-md-nowrap">
                    <div class="flex-column ">
                        <li class="text-secondary my-2">
                            <span class="fw-bold"> Giftcards </span>
                        </li>
                        <li class="nav-item mb-2 d-flex justify-content-between">
                            <a class="nav-custom" href="admin/giftcards">
                                <i class="bi bi-card-heading"></i> Ver giftcards
                            </a>
                        </li>
                        <li class="nav-item mb-4 d-flex justify-content-between">
                            <a class="nav-custom" href="admin/giftcards/generator">
                                <i class="bi bi-plus-square-dotted"></i> Generar
                            </a>
                        </li>
                        <li class="text-secondary my-2">
                            <span class="fw-bold"> Cupones de descuentos </span>
                        </li>
                        <li class="nav-item mb-2 d-flex justify-content-between">
                            <a class="nav-custom" href="admin/coupons">
                                <i class="bi bi-percent"></i> Ver cupones <span class="ms-1 text-dark badge badge-sm bg-warning">NUEVO</span>
                            </a>
                        </li>
                        <li class="nav-item mb-4 d-flex justify-content-between">
                            <a class="nav-custom" href="admin/coupons/generator">
                                <i class="bi bi-plus-square-dotted"></i> Generar <span class="ms-1 text-dark badge badge-sm bg-warning">NUEVO</span>
                            </a>
                        </li>
                        <li class="text-secondary my-2">
                        <span class="fw-bold"> Historias </span>
                        </li>
                        <li class="nav-item mb-2 d-flex justify-content-between">
                            <a class="nav-custom" href="admin/stories">
                                <i class="bi bi-list-columns-reverse"></i> Ver historias
                            </a>
                        </li>
                        <li class="nav-item mb-2">
                            <a class="nav-custom" href="admin/stories/status">
                                <i class="bi bi-sliders"></i> Estados <span class="ms-1 text-dark badge badge-sm bg-warning">NUEVO</span>
                            </a>
                        </li>
                        <li class="nav-item mb-2 d-flex justify-content-between">
                            <a class="nav-custom" href="admin/stories/prices">
                                <i class="bi bi-currency-dollar"></i> Precios <span class="ms-1 text-dark badge badge-sm bg-warning">NUEVO</span>
                            </a>
                        </li>
                        {* <li class="nav-item mb-3 d-flex justify-content-between">
                            <a class="nav-custom" href="admin/storytellings">
                                <i class="bi bi-book-fill"></i> Storytelling
                            </a>
                        </li> *}
                    </div>
                </ul>
            </div>
            <div
                class="d-flex justify-content-around align-items-center text-secondary text-center mb-1 mt-5 mt-md-0 fs-6 w-100">
                {* <a class="nav-custom" href="account/settings">
                    <i class="bi bi-gear-wide-connected text-truncate"></i>
                </a> *}
                <a class="nav-custom nav-custom  fs-5" href="admin/logout">
                    <i class="bi bi-box-arrow-right"></i>
                </a>
            </div>
        </div>
    </nav>
    <div class="col-12 col-lg-8 overflow-auto vh-100 px-lg-0">
{/if}