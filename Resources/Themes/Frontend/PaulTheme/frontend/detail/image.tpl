{extends file="parent:frontend/detail/image.tpl"}

{block name="frontend_detail_image_box"}
    {if $sArticle.plenty_connector_free5}
        <div class="ribbon is--right">
            <p class="ribbon--content green">{s namespace='frontend/detail/image' name="CertImageRibbon"}Zertifiziert<sup>*</sup>{/s}</p>
        </div>
    {/if}
    {$smarty.block.parent}
{/block}
