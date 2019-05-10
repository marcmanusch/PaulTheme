{block name="frontend_detail_index_outer_tabs"}
    <div class="tab--container-list">
    {block name="frontend_detail_index_inner_tabs"}
        {block name='frontend_detail_index_before_tabs'}{/block}

        {* Similar products slider *}
        {if $sArticle.sSimilarArticles}
            {block name="frontend_detail_index_tabs_similar"}
                <div class="tab--container" data-tab-id="similar">
                    {block name="frontend_detail_index_tabs_similar_inner"}
                        <div class="tab--header">
                            <a href="#" class="tab--title"
                               title="{s name=" DetailRecommendationSimilarLabel" namespace="frontend/detail/index"}{/s}">{s
                                name="DetailRecommendationSimilarLabel" namespace="frontend/detail/index"}{/s}</a>
                        </div>
                        <div class="tab--content content--similar">{include file='frontend/detail/tabs/similar.tpl'}</div>
                    {/block}
                </div>
            {/block}
        {/if}

        {* Accessory articles *}
        {if $sArticle.sRelatedArticles && !$sArticle.crossbundlelook}
            {block name="frontend_detail_index_tabs_related"}
                <div class="tab--container" data-tab-id="related">
                    {block name="frontend_detail_index_tabs_related_inner"}
                        <div class="tab--header">
                            <a href="#" class="tab--title"
                               title="{s namespace=" frontend/detail/tabs" name='DetailTabsAccessories'}{/s}">
                                {s namespace="frontend/detail/tabs" name='DetailTabsAccessories'}{/s}
                                <span class="product--rating-count-wrapper">
                                        <span class="product--rating-count">{$sArticle.sRelatedArticles|@count}</span>
                                    </span>
                            </a>
                        </div>
                        <div class="tab--content content--related">{include file="frontend/detail/tabs/related.tpl"}</div>
                    {/block}
                </div>
            {/block}
        {/if}


        {* Downloads *}
        {if $sArticle.sDownloads}
            {block name="frontend_detail_index_tabs_download"}
                <div class="tab--container paul--downloads--container" data-tab-id="downloads">
                    {block name="frontend_detail_index_tabs_download_inner"}
                        <div class="tab--header">
                            <a href="#" class="tab--title" title="downloads">
                                Downloads
                            </a>
                        </div>
                        <div class="tab--content content--downloads">

                            {* INHALT *}
                            {if $sArticle.paul_set_article}
                                {foreach $downloadArray as $download}
                                    {foreach $download as $downloadItem}
                                        <ul class="content--list list--unstyled paul--download--list">
                                        <li class="paul--mobile--download--list">
                                            <a href="{$downloadItem.filename}" target="_blank"
                                               title="{"{s name="DetailDescriptionLinkDownload"}{/s}"|escape} {$downloadItem.description|escape}">
                                                <i class="icon--download"></i> {s name="DetailDescriptionLinkDownload"}{/s} {$downloadItem.description}
                                            </a>
                                        </li>
                                    {/foreach}
                                {/foreach}
                                </ul>
                            {elseif $sArticle.sDownloads && !$sArticle.paul_set_article}
                                <div class="tab--content downloads--tab-content">
                                    {include file="frontend/detail/tabs/downloads.tpl"}
                                </div>
                            {/if}
                        </div>
                    {/block}
                </div>
            {/block}
        {/if}



        </div>
    {/block}

{/block}




