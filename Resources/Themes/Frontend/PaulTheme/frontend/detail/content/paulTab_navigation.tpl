{block name="frontend_detail_index_tabs_navigation"}
    <div class="tab--navigation">
        {block name="frontend_detail_index_tabs_navigation_inner"}
            {block name="frontend_detail_index_related_similiar_tabs"}

                {* Similar products *}
                {block name="frontend_detail_index_recommendation_tabs_entry_similar_products"}
                    {if count($sArticle.sSimilarArticles) > 0}
                        <a href="#content--similar-products"
                           title="{s name="DetailRecommendationSimilarLabel" namespace="frontend/detail/index"}{/s}"
                           class="tab--link">{s name="DetailRecommendationSimilarLabel" namespace="frontend/detail/index"}{/s}
							<span class="product--rating-count-wrapper">
                                <span class="product--rating-count">{$sArticle.sSimilarArticles|@count}</span>
                            </span>
						</a>
                    {/if}
                {/block}

                {* Tab navigation - Accessory products *}
                {block name="frontend_detail_tabs_entry_related"}
                    {if $sArticle.sRelatedArticles && !$sArticle.crossbundlelook}
                        <a href="#content--related-products"
                           title="{s namespace="frontend/detail/tabs" name='DetailTabsAccessories'}{/s}"
                           class="tab--link">
                            {s namespace="frontend/detail/tabs" name='DetailTabsAccessories'}{/s}
                            <span class="product--rating-count-wrapper">
                                <span class="product--rating-count">{$sArticle.sRelatedArticles|@count}</span>
                            </span>
                        </a>
                    {/if}
                {/block}
            {/block}
        {/block}
    </div>
{/block}


