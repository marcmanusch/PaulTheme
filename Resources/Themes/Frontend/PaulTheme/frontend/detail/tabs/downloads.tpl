<style>
    .download--headline {
        padding-bottom: 12px;
    }
</style>

{* offcanvas button *}
<div class="buttons--off-canvas">
    <a href="#" title="zurück"
       class="close--off-canvas">
        <i class="icon--arrow-left"></i>
        zurück
    </a>
</div>

{* content *}
<div class="content--description"">

{* downloads *}

<ul class="content--list list--unstyled">
    {if $sArticle.sDownloads}
        {foreach $sArticle.sDownloads as $download}
            {block name='frontend_detail_description_downloads_content_link'}
                <li class="list--entry downloadSpacing">
                    <a href="{$download.filename}" target="_blank" class="content--link link--download" title="{"{s name="DetailDescriptionLinkDownload"}{/s}"|escape} {$download.description|escape}">
                        <i class="icon--arrow-right"></i> {s name="DetailDescriptionLinkDownload"}{/s} {$download.description}
                    </a>
                </li>
                </br>
            {/block}
        {/foreach}
    {/if}
    <li class="list--entry downloadSpacing">
        <a href="../pflegen-reinigen" target="_blank" class="content--link link--download" title="Pflegehinweise">
            <i class="icon--arrow-right"></i> Pflegehinweise
        </a>
    </li>
</ul>


</div>