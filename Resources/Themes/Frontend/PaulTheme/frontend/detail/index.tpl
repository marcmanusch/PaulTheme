{extends file="parent:frontend/detail/index.tpl"}

{* Main content *}
{block name='frontend_index_content_main'}

    <section class="{block name="frontend_index_content_main_classes"}content-main container block-group{/block}">

        {* Content top container *}
        {block name="frontend_index_content_top"}{/block}

        <div class="content-main--inner">
            {* Sidebar left *}
            {block name='frontend_index_content_left'}
                {include file='frontend/index/sidebar.tpl'}
            {/block}

            {* Main content *}
            {block name='frontend_index_content_wrapper'}
                <div class="content--wrapper">
                    {block name='frontend_index_content'}{/block}
                </div>
            {/block}

            {* Sidebar right *}
            {block name='frontend_index_content_right'}{/block}

        </div>
    </section>

{/block}