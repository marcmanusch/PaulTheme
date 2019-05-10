{extends file="parent:widgets/listing/get_category.tpl"}

{block name="widgets_listing_get_category_categories_item_link"}

    {$link = $children.link}
    {if $children.external}
        {$link = $children.external}
    {/if}
    <a href="{$link}" title="{$children.name|escape}"
       class="navigation--link{if $children.childrenCount} link--go-forward{/if}"
       data-category-id="{$children.id}"
       data-fetchUrl="{url module=widgets controller=listing action=getCategory categoryId={$children.id}}"
       {if $children.external && $category.externalTarget}target="{$children.externalTarget}"{/if}>

        {block name="widgets_listing_get_category_categories_item_link_name"}
            <div class="mobile-menu-wrapper">
                <div class="menu-image">
                    <img src="{$children.media.path}" class="mobile">
                </div>
                <div class="menu-image">
                    <span class="mobile-name">{$children.name}</span>
                </div>

                {block name="widgets_listing_get_category_categories_item_link_children"}
                    {if $children.childrenCount}
                        <span class="is--icon-right">
                    <i class="icon--arrow-right"></i>
                </span>
                    {/if}
                {/block}
            </div>
        {/block}


    </a>
{/block}