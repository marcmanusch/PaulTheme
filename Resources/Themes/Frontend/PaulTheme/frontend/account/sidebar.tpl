{extends file="parent:frontend/account/sidebar.tpl"}


{block name="frontend_account_menu_link_overview"}

    {if {config name=useSltCookie} && !$userInfo && $inHeader}
        <li class="navigation--entry">
                                    <span class="navigation--signin">
                                        <a href="{url module='frontend' controller='account'}#hide-registration"
                                           class="blocked--link btn is--primary navigation--signin-btn{if $register} registration--menu-entry entry--close-off-canvas{/if}"
                                           data-collapseTarget="#registration"
                                           data-action="close">
                                            {s name="AccountLogin"}{/s}
                                        </a>
                                        <span class="navigation--register">
                                            {s name="AccountOr"}{/s}
                                            <a href="{url module='frontend' controller='account'}#show-registration"
                                               class="blocked--link btn is--primary navigation--signin-btn{if $register} registration--menu-entry entry--close-off-canvas{/if}"
                                               data-collapseTarget="#registration"
                                               data-action="open">
                                                {s name="AccountRegister"}{/s}
                                            </a>
                                        </span>
                                    </span>
        </li>
    {/if}
    <li class="navigation--entry">
        <a href="{url module='frontend' controller='account'}" title="{s name="AccountLinkOverview"}{/s}"
           class="navigation--link{if {controllerName|lower} == 'account' && $sAction == 'index'} is--active{/if}"
           rel="nofollow">
            {s name="AccountLinkOverview"}{/s}
        </a>
    </li>
{/block}