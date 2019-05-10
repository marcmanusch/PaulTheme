{extends file="parent:frontend/index/sidebar.tpl"}

{block name="frontend_index_left_inner"}

    {if $theme.config_sidebar_image_1}
        {if $theme.config_sidebar_link_1}
            <a href="{$theme.config_sidebar_link_1}">
        {/if}

        <img src="{$theme.config_sidebar_image_1}" class="config_sidebar_image_1">

        {if $theme.config_sidebar_link_1}
            </a>
        {/if}
    {/if}

    {$smarty.block.parent}
{/block}