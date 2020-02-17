<!--{* Notepad entry *}
{block name="frontend_index_checkout_actions_notepad"}
    <li class="navigation--entry entry--notepad" role="menuitem">
        {s namespace="frontend/index/checkout_actions" name="IndexLinkNotepad" assign="snippetIndexLinkNotepad"}{/s}
        <a href="{url controller='note'}" title="{$snippetIndexLinkNotepad|escape}" class="btn">
            <i class="icon--heart"></i>
            {if $sNotesQuantity > 0}
                <span class="badge notes--quantity">
                    {$sNotesQuantity}
                </span>
            {/if}
        </a>
    </li>
{/block}-->

{* Hotline *}

<div class="telnormal"><a href="tel:00494040188564"><span class="hotline">040-4018 8564</span> </a></div>

<div class="telmobile"><a href="tel:00494040188564"><i class="fas fa-phone-square"></i></a></div>


{* Hallo *}
<a href="/daily-you/kontakt/"><span class="hallo"><img src="http://test.daily-catering.de/media/image/b5/f7/39/papierflieger.png" style="float:left;padding:5px 5px 0 0;margin-bottom:0;"> HALLO</span> </a>


{* shop *}
<a href="/cat/index/sCategory/20/"><span class="osbtn" style="">ONLINE SHOP</span> </a>



{* My account entry *}
{block name="frontend_index_checkout_actions_my_options"}
    <li class="navigation--entry entry--account{if {config name=useSltCookie} || $sOneTimeAccount} with-slt{/if}"
        role="menuitem"
        data-offcanvas="true"
        data-offCanvasSelector=".account--dropdown-navigation">
        {block name="frontend_index_checkout_actions_account"}
            <a href="{url controller='account'}"
               title="{"{if $userInfo}{s name="AccountGreetingBefore" namespace="frontend/account/sidebar"}{/s}{$userInfo['firstname']}{s name="AccountGreetingAfter" namespace="frontend/account/sidebar"}{/s} - {/if}{s namespace='frontend/index/checkout_actions' name='IndexLinkAccount'}{/s}"|escape}"
               class="btn is--icon-left entry--link account--link{if $userInfo} account--user-loggedin{/if}">
                <i class="icon--account"></i>
                {if $userInfo}
           
                <span class="account--display navigation--personalized">
                        <span class="account--display-greeting">
                            {s name="AccountGreetingBefore" namespace="frontend/account/sidebar"}{/s}
                            {$userInfo['firstname']}
                            {s name="AccountGreetingAfter" namespace="frontend/account/sidebar"}{/s}
                        </span>
                       <!-- {s namespace='frontend/index/checkout_actions' name='IndexLinkAccount'}{/s} -->
                         {s namespace='frontend/index/checkout_actions' name=''}{/s}
                    </span>
                {else}
                    <span class="account--display">
                        {s namespace='frontend/index/checkout_actions' name=''}{/s}
                    </span>
                {/if}
            </a>
        {/block}

        {if {config name=useSltCookie} || $sOneTimeAccount}
            {block name="frontend_index_checkout_actions_account_navigation"}
                <div class="account--dropdown-navigation">

                    {block name="frontend_index_checkout_actions_account_navigation_smartphone"}
                        <div class="navigation--smartphone">
                            <div class="entry--close-off-canvas">
                                <a href="#close-account-menu"
                                   class="account--close-off-canvas"
                                   title="{s namespace='frontend/index/menu_left' name="IndexActionCloseMenu"}{/s}">
                                    {s namespace='frontend/index/menu_left' name="IndexActionCloseMenu"}{/s} <i class="icon--arrow-right"></i>
                                </a>
                            </div>
                        </div>
                    {/block}

                    {block name="frontend_index_checkout_actions_account_menu"}
                        {include file="frontend/account/sidebar.tpl" showSidebar=true inHeader=true}
                    {/block}
                </div>
            {/block}
        {/if}
    </li>
{/block}

{* Cart entry *}
{block name="frontend_index_checkout_actions_cart"}
    <li class="navigation--entry entry--cart" role="menuitem">
        {s namespace="frontend/index/checkout_actions" name="IndexLinkCart" assign="snippetIndexLinkCart"}{/s}
        <a class="btn is--icon-left cart--link" href="{url controller='checkout' action='cart'}" title="{$snippetIndexLinkCart|escape}">
            <span class="cart--display">
                {if $sUserLoggedIn}
                    {s name='IndexLinkCheckout' namespace='frontend/index/checkout_actions'}{/s}
                {else}
                    {s namespace='frontend/index/checkout_actions' name='IndexLinkCart'}{/s}
                {/if}
            </span>

            <span class="badge is--primary is--minimal cart--quantity{if $sBasketQuantity < 1} is--hidden{/if}">{$sBasketQuantity}</span>

            <i class="icon--basket"></i>

            <span class="cart--amount">
                {$sBasketAmount|currency} {s name="Star" namespace="frontend/listing/box_article"}{/s}
            </span>
        </a>
        <div class="ajax-loader">&nbsp;</div>
    </li>
{/block}

{block name="frontend_index_checkout_actions_inner"}{/block}