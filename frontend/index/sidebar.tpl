{extends file='parent:frontend/index/sidebar.tpl'}

        {block name="frontend_index_left_inner"}
            {block name="frontend_index_left_navigation_smartphone"}
                <div class="navigation--smartphone">
                    <ul class="navigation--list ">
                        {block name="frontend_index_left_categories_close_menu"}
                            <li class="navigation--entry entry--close-off-canvas">
                                <a href="#close-categories-menu" title="{s namespace='frontend/index/menu_left' name="IndexActionCloseMenu"}{/s}" class="navigation--link">
                                    {s namespace='frontend/index/menu_left' name="IndexActionCloseMenu"}{/s} <i class="icon--arrow-right"></i>
                                </a>
                            </li>
                        {/block}
                    </ul>

                {block name="frontend_index_left_switches"}
                    <div class="mobile--switches">
                        {action module=widgets controller=index action=shopMenu}
                    </div>
                {/block}
            </div>
        {/block}

            {if isset($sCategoryContent) && $sCategoryContent.id}
                {$subCategoryId = $sCategoryContent.id}
            {elseif isset($sArticle) && $sArticle.categoryID}
                {$subCategoryId = $sArticle.categoryID}
            {elseif isset($sCustomPage) && $sCustomPage.id}
                {$subCategoryId = $sCustomPage.id}
            {else}
                {$subCategoryId = 0}
            {/if}

            <div class="sidebar--categories-wrapper">

                {block name='frontend_index_left_categories'}

                    {block name="frontend_index_left_categories_headline"}
                        <div class="categories--headline navigation--headline">
                            {s namespace='frontend/index/menu_left' name="IndexSidebarCategoryHeadline"}{/s}
                        </div>
                    {/block}

                    {block name='frontend_index_left_categories_inner'}
                        <div class="sidebar--categories-navigation">
                            {include file='frontend/index/sidebar-categories.tpl'}
                        </div>
                    {/block}
                {/block}

                {block name='frontend_index_left_menu'}
                    {include file='frontend/index/sites-navigation.tpl'}
                {/block}
            </div>
        {/block}
