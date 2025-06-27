{assign var="city_id" value=$stories[0]->story_id|substr:0:4}
{if $city_id == "7600"}
    {assign var="city_name" value='Mar del Plata'}
{elseif $city_id == "1000"}
    {assign var="city_name" value='Buenos Aires'}
{elseif $city_id == "5000"}
    {assign var="city_name" value='Córdoba'}
{/if}
{include file="page_header.tpl" title=$city_name}
<article>
    <div class="container space-nav mb-5 mt-5 mt-xl-0">
        <h2 class="text-center mb-5 fw-bold text-yellow">
            {assign var="city_id" value=$stories[0]->story_id|substr:0:4}
            {if $city_id == "7600"}
                Mar del Plata
            {elseif $city_id == "1000"}
                Buenos Aires
            {elseif $city_id == "5000"}
                Córdoba
            {/if}
        </h2>
        <div class="d-flex flex-wrap justify-content-around mt-3">
            {if isset($stories)}
            {foreach $stories as $story}
                {include file="card_story.tpl" story=$story}
            {/foreach}
                {else}
                <h3 class="badge bg-danger fs-5">No existen misiones para la ciudad seleccionada.</h3>
            {/if}
        </div>
    </div>
</article>
{include file="page_footer.tpl"}