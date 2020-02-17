{extends file='parent:frontend/index/shop-navigation.tpl'}

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
        
        
{*Search form*}
{block name='frontend_index_search'}
{/block} 


    </ul>
</nav>

