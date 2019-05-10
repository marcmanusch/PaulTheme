{extends file="parent:frontend/detail/content/buy_container.tpl"}


{block name='frontend_detail_index_buy_container'}
    {* Product name *}
    {block name='frontend_detail_index_name'}
        <h1 class="product--title" itemprop="name">
            {$sArticle.articleName}
        </h1>
    {/block}
    {$smarty.block.parent}
{/block}




{block name='frontend_detail_data_ordernumber_content'}
    {$smarty.block.parent}

    {if $sArticle.ean}
        <li class="base-info--entry entry--gtin">
            {* Product GTIN - Label *}
            {block name='frontend_detail_data_gtin_label'}
                <strong class="entry--label">
                    {s name="DetailDataGtin" namespace="frontend/detail/data"}EAN: {/s}
                </strong>
            {/block}

            {* Product GTIN - Content *}
            <meta itemprop="gtin" content="{$sArticle.ean}"/>
            <span class="entry--content" itemprop="gtin">
            {$sArticle.ean}
        </span>
        </li>
    {/if}
{/block}