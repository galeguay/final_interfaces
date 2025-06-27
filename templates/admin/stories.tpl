{include file="admin/page_header_admin.tpl" title='Historias'}
<div class="container-fluid d-flex flex-column align-items-center justify-content-center default-space">
    <div class="fw-bold title text-warning">Historias</div>
    {if isset($alert_type)}
        {include file="alerts.tpl" alert_type=$alert_type message=$alert_message}
    {/if}
    <div class="w-100 d-flex flex-wrap justify-content-center aling-items-center">
        {if isset($stories)}
            {foreach $stories as $story}
                {include file="admin/story_card.tpl" story=$story}
            {/foreach}
        {else}
            No hay historias, o hubo un error al cargar las historias.
        {/if}
    </div>
</div>
{include file="page_footer.tpl" hide=true}