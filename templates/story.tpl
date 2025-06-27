{include file="page_header.tpl" title=$story->title|default:'EL TITULO LARGUíSIMO DE LA HISTORIA'}
<div class="space-nav">
    <article class="boxcolor1 mb-5 pb-md-5">
        <div class="container px-4 mt-5">
            <div class="d-lg-flex">
                <div class="d-flex justify-content-center pb-5">
                    <img class="" height="300px" src="/images/stories/icon_{$story->story_id}.webp"
                        alt="Imagen de historia de {$story->title}">
                </div>
                <div class="d-flex flex-column justify-content-center align-items-centerpx-4 px-md-5 pb-5">
                    <h1 class="ff-misteryzero text-yellow text-uppercase">
                        {$story->title|default:'EL TITULO LARGUíSIMO DE LA HISTORIA'}</h1>
                    <p>{$story->synopsis|default:'bla bla bla...'}
                    </p>
                </div>
            </div>
            {if $story->story_id == 760001}
                <section class="mb-5 mb-md-0">
                    <div class="container">
                        <div class="ratio ratio-16x9">
                            <iframe width="560" height="315"
                                src="https://www.youtube.com/embed/Dh1FYcem0gU?si=jbTGVuVf9Ybrfbxr&amp;controls=0&vq=hd720&autoplay=1&loop=1&rel=0"
                                title="Asesino torre tanque - Develación" frameborder="0"
                                allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share"
                                referrerpolicy="strict-origin-when-cross-origin" allowfullscreen>
                            </iframe>
                        </div>
                    </div>
                </section>
            {/if}
                <section class="mt-3">
                    <div class="row d-flex justify-content-center">
                        <div class="storyitem bg-light rounded-2 m-3 p-1">
                            <div class="d-flex justify-content-center mt-2 mx-2">
                                <img class="" width="60px" src="/images/icono_duracion.webp" alt="Icono tiempo limite">
                            </div>
                            <p class="text-center text-secondary fw-bold mb-0 mt-3">
                                Duración
                            </p class>
                            <p class="text-center text-secondary fw-bold m-0 pt-1 text-uppercase">
                                {$story->time|default:'0'} min
                            </p>
                        </div>
                        <div class="storyitem bg-light rounded-2 m-3 p-1">
                            <div class="d-flex justify-content-center mt-2 mx-2">
                                <img class="" width="60px" src="/images/icon_distancia.webp" alt="Icono distancia">
                            </div>
                            <p class="text-center text-secondary fw-bold mb-0 mt-3">
                                Distancia
                            </p class>
                            <p class="text-center text-secondary fw-bold m-0 pt-1 text-uppercase">
                                {$story->distance_in_meters|default:'0'} MTS
                            </p>
                        </div>
                        <div class="storyitem bg-light rounded-2 m-3 p-1">
                            <div class="d-flex justify-content-center mt-2 mx-2">
                                <img class="" width="60px" src="/images/icono_dificultad.webp" alt="Icono dificultad">
                            </div>
                            <p class="text-center text-secondary fw-bold mb-0 mt-3">
                                Dificultad
                            </p class>
                            <p class="text-center text-secondary fw-bold m-0 pt-1 text-uppercase">
                                {$story->difficulty|default:'1'}
                            </p>
                        </div>
                        <div class="storyitem bg-light rounded-2 m-3 p-1">
                            <div class="d-flex justify-content-center mt-2 mx-2">
                                <img class="" width="60px" src="/images/icono_accesibilidad.webp"
                                    alt="Icono accesibilidad">
                            </div>
                            <p class="text-center text-secondary fw-bold mb-0 mt-3">
                                Accesibilidad
                            </p class>
                            <p
                                class="d-flex flex-wrap justify-content-center text-center text-secondary fw-bold m-0 pt-1 text-uppercase">
                                {$story->accessibility|default:'-'}
                            </p>
                        </div>
                        <div class="storyitem bg-light rounded-2 m-3 p-1">
                            <div class="d-flex justify-content-center mt-2 mx-2">
                                <img class="" width="60px" src="/images/icono_mascotas.webp" alt="Icono mascotas">
                            </div>
                            <p class="text-center text-secondary fw-bold mb-0 mt-3">
                                Mascotas
                            </p class>
                            <p class="text-center text-secondary fw-bold m-0 pt-1 text-uppercase">
                                {$story->pets|default:'-'}
                            </p>
                        </div>
                        <div class="storyitem bg-light rounded-2 m-3 p-1">
                            <div class="d-flex justify-content-center mt-2 mx-2">
                                <img class="" width="60px" src="/images/icon_price.webp" alt="Icono precio">
                            </div>
                            <p class="text-center text-secondary fw-bold mb-0 mt-3">
                                Precio
                            </p class>
                            <p class="text-center text-secondary fw-bold m-0 pt-1 text-uppercase">
                                {if isset($story)}
                                    {if $story->price == 0}
                                        GRATIS
                                    {else}
                                        $ {$story->price}
                                    {/if}
                                {/if}
                            </p>
                        </div>
                        <div class="storyitem-xl bg-light rounded-2 d-flex justify-content-start m-3 p-1">
                            <div class="mt-2 mx-2">
                                <img class="" width="60px" src="/images/icon_ubicacion.webp" alt="Icono ubicación">
                                <p class="text-center text-secondary fw-bold mb-0 mt-3">
                                    Ubicación
                                </p class>
                                <p></p>
                            </div>
                            <div class="d-flex justify-content-center align-items-center">
                                <a href="{$story->startLocationLink|default:''}"
                                    class="text-center text-primary fw-bold m-0 pt-1 text-uppercase sin-deco">
                                    {$story->startLocation|default:'-'}
                                </a>
                            </div>
                        </div>
                    </div>
                </section>
        </div>
    </article>
    <article class="boxcolor3 py-5">
        <div class="container d-flex justify-content-center py-3 py-md-5">
            <div class="row d-flex justify-content-center">
                <div class="px-4 px-md-0 ms-md-5 text-center text-md-end col-md-8">
                    <h1 class="ff-misteryzero2 mb-2 fw-bold">¡Regalá experiencias inolvidables!<br>Descubrí nuestras
                        Gift Cards</h1>
                    <h3 class="ff-misteryzero2 mt-1 fw-bold text-secondary">Nada mejor que regalar un momento de
                        diversión para compartir junto con tu amig@ o familiar.</h3>
                    <div class="d-none d-md-block d-inline-flex justify-content-center">
                        <a class="btn btn-dark btn-lg mt-2" href="giftcard">+ INFO</a>
                    </div>
                </div>
                <div class="col-md-3 d-flex justify-content-center mt-2 mt-md-0 zoom-container">
                    <a href="/giftcard"><img height="350" class="shadow-b-1" src="/images/mininewGiftcard.webp"
                            alt="Imagen ejemplo de giftcard"></a>
                </div>
                <div class="d-md-none d-inline-flex justify-content-center">
                    <button class="btn btn-dark btn-lg mt-5 ">+ INFO</button>
                </div>
            </div>
        </div>
    </article>
</div>
{include file="page_footer.tpl"}