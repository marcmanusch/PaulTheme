{extends file="parent:frontend/detail/content/header.tpl"}

{block name='frontend_detail_index_header'}
    {if ($smarty.now|date_format:"%Y%m%d" >= $theme.show_message_date_from|date_format:"%Y%m%d") && ($smarty.now|date_format:"%Y%m%d" <= $theme.show_message_date_till|date_format:"%Y%m%d")}
        <div class="alert is--info is--rounded paul-message">
            <div class="alert--icon">
                <!-- Alert message icon -->
                <i class="icon--element icon--info"></i>
            </div>
            <div class="alert--content">
                {$theme.show_message_date_message}
            </div>
        </div>
    {/if}
    {$smarty.block.parent}
{/block}

{* Product name *}
{block name='frontend_detail_index_name'}{/block}