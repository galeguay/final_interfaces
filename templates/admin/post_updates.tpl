{if $user['rol'] > 1}
{include file="admin/page_header_admin.tpl" title='Publicar actualizaciones'}

    <form class="mt-5 pt-5" action="api/postUpdate" method="POST">
        <div class="form-group">
            <label for="story_id">StoryID:</label>
            <input type="number" id="story_id" name="story_id" class="input-field" value="760001">
        </div>
        <select class="form-select " aria-label="update_kind" name="update_kind">
                <option selected value="all">ALL</option>
                <option value="status_and_price">ESTADO Y PRECIO</option>
        </select>
        <input type="submit" id="submit-btn" class="btn btn-warning btn-lg mb-5" value="Publicar">
    </form>

{include file="page_footer.tpl" hide=true}
{/if}