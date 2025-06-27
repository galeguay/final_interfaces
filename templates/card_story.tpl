<div
     class="card card-story bg-dark rounded-5 p-2 mb-5 mx-1 col-md-6 col-lg-3 zoom-container-min">
    <div class="d-flex justify-content-center align-items-center">
        <img class="card-img-top p-5 p-md-4" src="/images/stories/icon_{$story->story_id}.webp">
    </div>
    <div class="card-body">
        <h3 class="ff-misteryzero text-uppercase">{$story->title|default:'EL TITULO LARGUíSIMO DE LA HISTORIA'}</h3>
        <div class="d-flex flex-wrap">
            <p class="line-clamp">{$story->synopsis|default:'bla bla bla...'}</p>
        </div>
    </div>
    <div class="card-footer flex-wrap ">
        {if $story->status == 'Invisible'}
            {assign var="status_class" value="bg-secondary"}
        {elseif $story->status == 'Nuevo'}
            {assign var="status_class" value="bg-info text-dark"}
        {elseif $story->status == 'Proximamente'}
            {assign var="status_class" value="d-none"}
        {elseif $story->status == 'En mantenimiento'}
            {assign var="status_class" value="bg-danger"}
        {elseif $story->status == 'Disponible'}
            {assign var="status_class" value="bg-success"}
        {/if}
        {if $story->status == 'Nuevo'}
            <div class="badge text-uppercase me-2 mt-2 bg-success">Disponible</div>
            <div class="badge text-uppercase me-2 mt-2 {$status_class}">{$story->status|default:''}</div>
        {else}
            <div class="badge text-uppercase me-2 mt-2 {$status_class}">{$story->status|default:''}</div>
        {/if}
        {if $story->price == '0'}
            <div class="badge text-uppercase bg-success tintinear">GRATIS</div>
        {/if}
    </div>
    {if $story->status != 'Proximamente'}
        <a href="story/{$story->story_id}" class="btn fs-6 text-light bg-warning m-2 text-dark">+ INFO</a>
    {else}
        <p class="btn fs-6 bg-dark m-2 text-yellow"> PROXIMAMENTE </p>
    {/if}
</div>