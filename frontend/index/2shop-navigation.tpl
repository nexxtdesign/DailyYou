<nav class="shop--navigation block-group">
    <ul class="navigation--list block-group" role="menubar">

        {* Menu (Off canvas left) trigger *}
        {block name='frontend_index_offcanvas_left_trigger'}
            <li class="navigation--entry entry--menu-left" role="menuitem">
                <a class="entry--link entry--trigger btn is--icon-left" href="#offcanvas--left" data-offcanvas="true" data-offCanvasSelector=".sidebar-main">
                    <i class="icon--menu"></i> 
                </a>
            </li>
        {/block}

       <!-- {* Sidebar category tree *}
                {block name='frontend_index_left_categories'}

                    {* Categories headline *}
                    {block name="frontend_index_left_categories_headline"}
                        <div class="categories--headline navigation--headline">
                            {s namespace='frontend/index/menu_left' name="IndexSidebarCategoryHeadline"}{/s}
                        </div>
                    {/block}-->

                   <!-- {* Actual include of the categories *}
                    {block name='frontend_index_left_categories_inner'}
                        <div class="sidebar--categories-navigation">
                            {include file='frontend/index/sidebar-categories.tpl'}
                        </div>
                    {/block}
                {/block}-->
        <!-- ausgeblendet-->
        {* Maincategories navigation top *}
                {block name='frontend_index_navigation_categories_top'}
                    <nav class="navigation-main">
                        <div class="container" data-menu-scroller="true" data-listSelector=".navigation--list.container" data-viewPortSelector=".navigation--list-wrapper">
                            {block name="frontend_index_navigation_categories_top_include"}
                                {include file='frontend/index/main-navigation.tpl'}
                            {/block}
                        </div>
                    </nav>
                {/block}
        
        <!-- {* Search form *}
        {block name='frontend_index_search'}
            <li class="navigation--entry entry--search" role="menuitem" data-search="true" aria-haspopup="true"{if $theme.focusSearch && {controllerName|lower} == 'index'} data-activeOnStart="true"{/if} data-minLength="{config name="MinSearchLenght"}">
                {s namespace="frontend/index/search" name="IndexTitleSearchToggle" assign="snippetIndexTitleSearchToggle"}{/s}
                <a class="btn entry--link entry--trigger" href="#show-hide--search" title="{$snippetIndexTitleSearchToggle|escape}">
                    <i class="icon--search"></i>

                    {block name='frontend_index_search_display'}
                        <span class="search--display">{s namespace='frontend/index/search' name="IndexSearchFieldSubmit"}{/s}</span>
                    {/block}
                </a>

                {* Include of the search form *}
                {block name='frontend_index_search_include'}
                    {include file="frontend/index/search.tpl"}
                {/block}
            </li>
        {/block} -->

        {* Cart entry *}
        {block name='frontend_index_checkout_actions'}
            {* Include of the cart *}
            {block name='frontend_index_checkout_actions_include'}
                {action module=widgets controller=checkout action=info}
            {/block}
        {/block}
    </ul>
</nav>
