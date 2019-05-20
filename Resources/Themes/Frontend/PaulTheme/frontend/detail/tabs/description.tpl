{extends file="parent:frontend/detail/tabs/description.tpl"}

{* Headline *}
{block name='frontend_detail_description_title'}{/block}

{* Product description *}
{block name='frontend_detail_description_text'}
    {if $sArticle.plenty_connector_free5}
        <div class="alert is--info is--rounded">
            <div class="alert--icon">
                <i class="icon--element icon--info"></i>
            </div>
            <div class="alert--content">{s namespace='frontend/detail/tabs/description' name="CertDescriptionText"}<b>Zertifiziert<sup>*</sup>: Das geprüfte Material entspricht den Vorgaben des Umweltbundesamtes bezüglich der „Bewertungsgrundlagen für metallene Werkstoffe im Kontakt mit Trinkwasser“- UBA- Positivliste. Der Werkstoff erfüllt laut <b>Umweltbundesamt</b> die Norm <b>DIN 50930-6</b>, die Aussagen bezüglich der Korrosionsbeständigkeit darlegt.{/s}</div>
        </div>
    {/if}
    {$smarty.block.parent}
{/block}


{* Product - Further links *}
{block name='frontend_detail_description_links'}{/block}

{* Downloads *}
{block name='frontend_detail_description_downloads'}{/block}