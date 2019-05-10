{namespace name="frontend/index/menu_footer"}

<div class="container-footer-line-one">


    {block name="frontend_index_footer_column_about_us"}
        <div class="footer--column column--about--us is--first block">
            {block name="frontend_index_footer_column_about_us_headline"}
                <div class="column--headline dotted">{s name="sFooterAboutUsHead"}Über uns{/s}</div>
            {/block}

            {block name="frontend_index_footer_column_about_us_content"}
                <div class="column--content">
                    <p class="column--desc">{s name="sFooterAboutUs"}Inhalt{/s}</p>
                </div>
            {/block}
        </div>
    {/block}

    {block name="frontend_index_footer_column_service_menu"}
        <div class="footer--column column--menu block">
            {block name="frontend_index_footer_column_service_menu_headline"}
                <div class="column--headline dotted">{s name="sFooterShopNavi1"}{/s}</div>
            {/block}

            {block name="frontend_index_footer_column_service_menu_content"}
                <nav class="column--navigation column--content">
                    <ul class="navigation--list" role="menu">
                        {block name="frontend_index_footer_column_service_menu_before"}{/block}
                        {foreach $sMenu.bottom as $item}

                            {block name="frontend_index_footer_column_service_menu_entry"}
                                <li class="navigation--entry" role="menuitem">
                                    <a class="navigation--link"
                                       href="{if $item.link}{$item.link}{else}{url controller='custom' sCustom=$item.id title=$item.description}{/if}"
                                       title="{$item.description|escape}"{if $item.target} target="{$item.target}"{/if}>
                                        {$item.description}
                                    </a>

                                    {* Sub categories *}
                                    {if $item.childrenCount > 0}
                                        <ul class="navigation--list is--level1" role="menu">
                                            {foreach $item.subPages as $subItem}
                                                <li class="navigation--entry" role="menuitem">
                                                    <a class="navigation--link"
                                                       href="{if $subItem.link}{$subItem.link}{else}{url controller='custom' sCustom=$subItem.id title=$subItem.description}{/if}"
                                                       title="{$subItem.description|escape}"{if $subItem.target} target="{$subItem.target}"{/if}>
                                                        {$subItem.description}
                                                    </a>
                                                </li>
                                            {/foreach}
                                        </ul>
                                    {/if}
                                </li>
                            {/block}
                        {/foreach}

                        {block name="frontend_index_footer_column_service_menu_after"}{/block}
                    </ul>
                </nav>
            {/block}
        </div>
    {/block}

    {block name="frontend_index_footer_column_information_menu"}
        <div class="footer--column column--menu block">
            {block name="frontend_index_footer_column_information_menu_headline"}
                <div class="column--headline dotted">{s name="sFooterShopNavi2"}{/s}</div>
            {/block}

            {block name="frontend_index_footer_column_information_menu_content"}
                <nav class="column--navigation column--content">
                    <ul class="navigation--list" role="menu">
                        {block name="frontend_index_footer_column_information_menu_before"}{/block}
                        {foreach $sMenu.bottom2 as $item}

                            {block name="frontend_index_footer_column_information_menu_entry"}
                                <li class="navigation--entry" role="menuitem">
                                    <a class="navigation--link"
                                       href="{if $item.link}{$item.link}{else}{url controller='custom' sCustom=$item.id title=$item.description}{/if}"
                                       title="{$item.description|escape}"{if $item.target} target="{$item.target}"{/if}>
                                        {$item.description}
                                    </a>

                                    {* Sub categories *}
                                    {if $item.childrenCount > 0}
                                        <ul class="navigation--list is--level1" role="menu">
                                            {foreach $item.subPages as $subItem}
                                                <li class="navigation--entry" role="menuitem">
                                                    <a class="navigation--link"
                                                       href="{if $subItem.link}{$subItem.link}{else}{url controller='custom' sCustom=$subItem.id title=$subItem.description}{/if}"
                                                       title="{$subItem.description|escape}"{if $subItem.target} target="{$subItem.target}"{/if}>
                                                        {$subItem.description}
                                                    </a>
                                                </li>
                                            {/foreach}
                                        </ul>
                                    {/if}
                                </li>
                            {/block}
                        {/foreach}
                        {block name="frontend_index_footer_column_information_menu_after"}{/block}
                    </ul>
                </nav>
            {/block}
        </div>
    {/block}
</div>


{*        ###### LINE 2 #####        *}

<div class="container-footer-line-two">

    {* Payment *}
    {block name="frontend_index_footer_column_service_payment"}
        <div class="footer--column column--payment is--first block">
            {block name="frontend_index_footer_column_payment_headline"}
                <div class="column--headline dotted">{s name="sFooterPaymentHead"}Unsere Zahlungsarten{/s}</div>
            {/block}

            {block name="frontend_index_footer_column_payment_content"}
                <div class="column--content">
                    <div class="payment">
                        {if $theme.payment_logo_paypal}<img
                            src="{link file = 'frontend/_public/src/img/logos/paypal.jpg' fullPath}" width="100px">{/if}
                        {if $theme.payment_logo_paypal_invoice}<img
                            src="{link file = 'frontend/_public/src/img/logos/paypal-rechnung.jpg' fullPath}"
                            width="100px">{/if}
                        {if $theme.payment_logo_lastschrift}<img
                            src="{link file = 'frontend/_public/src/img/logos/lastschrift.jpg' fullPath}"
                            width="100px">{/if}
                        {if $theme.payment_logo_mastercard}<img
                            src="{link file = 'frontend/_public/src/img/logos/mastercard.jpg' fullPath}"
                            width="100px">{/if}
                        {if $theme.payment_logo_visa}<img
                            src="{link file = 'frontend/_public/src/img/logos/visa.jpg' fullPath}" width="100px">{/if}
                        {if $theme.payment_logo_american_express}<img
                            src="{link file = 'frontend/_public/src/img/logos/american-express.jpg' fullPath}"
                            width="100px">{/if}
                        {if $theme.payment_logo_vorkasse}<img
                            src="{link file = 'frontend/_public/src/img/logos/vorkasse.jpg' fullPath}"
                            width="100px">{/if}
                    </div>
                </div>
            {/block}
        </div>
    {/block}

    {* Shipping *}
    {block name="frontend_index_footer_column_service_payment"}
        <div class="footer--column column--shipping is--first block">
            {block name="frontend_index_footer_column_shipping_headline"}
                <div class="column--headline dotted">{s name="sFooterShippingHead"}Unser Versandpartner{/s}</div>
            {/block}

            {block name="frontend_index_footer_column_shipping_content"}
                <div class="column--content">
                    <div class="shipping">
                        {if $theme.shipping_logo_dhl}<img
                            src="{link file = 'frontend/_public/src/img/logos/dhl.jpg' fullPath}" width="100px">{/if}
                    </div>
                </div>
            {/block}
        </div>
    {/block}

    {* Service hotline *}
    {block name="frontend_index_footer_column_service_hotline"}
        <div class="footer--column column--hotline is--first block">
            {block name="frontend_index_footer_column_service_hotline_headline"}
                <div class="column--headline dotted">{s name="sFooterServiceHotlineHead"}Kundenberatung{/s}</div>
            {/block}

            {block name="frontend_index_footer_column_service_hotline_content"}
                <div class="column--content">
                    <p class="column--desc">
                        {s name="sFooterServiceHotline"}
                            Telefonische Unterstützung und Beratung unter:
                            <br>
                            <br>
                            <a
                                    href="tel:+49512125534" class="footer--phone-link">+49(0) 5121 25534</a>
                            <br>
                            Mo-Fr, 08:00
                            - 14:00 Uhr
                        {/s}
                    </p>
                </div>
            {/block}
        </div>
    {/block}


</div>