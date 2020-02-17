{extends file='parent:frontend/index/index.tpl'}



            {* Shop header *}
            {block name='frontend_index_navigation'}
                <header class="header-main">
                    {* Include the top bar navigation *}
                    {block name='frontend_index_top_bar_container'}
                        {include file="frontend/index/topbar-navigation.tpl"}
                    {/block}

                    {block name='frontend_index_header_navigation'}
                        <div class="container header--navigation">

                            {* Logo container *}
                            {block name='frontend_index_logo_container'}
                                {include file="frontend/index/logo-container.tpl"}
                            {/block}

                           
                {* Maincategories navigation top *}
                {block name='frontend_index_navigation_categories_top'}
                    <nav class="navigation-main">
                        <div class="container" data-menu-scroller="true" data-listSelector=".navigation--list.container" data-viewPortSelector=".navigation--list-wrapper">
                            {block name="frontend_index_navigation_categories_top_include"}
                          <nav class="navigation-main">
<div class="container" data-menu-scroller="true" data-listSelector=".navigation--list.container" data-viewPortSelector=".navigation--list-wrapper">
<div class="navigation--list-wrapper">
    <ul class="navigation--list container" role="menubar" itemscope="itemscope" itemtype="http://schema.org/SiteNavigationElement">
        <li class="navigation--entry navigation--entry-7"role="menuitem"><a class="navigation--link"href="http://test.daily-catering.de/betriebsrestaurants/" title="BETRIEBSRESTAURANTS"itemprop="url"> <span itemprop="name">BETRIEBSRESTAURANTS</span></a></li>

        <li class="navigation--entry navigation--entry-5"role="menuitem"><a class="navigation--link"href="http://test.daily-catering.de/catering/" title="CATERING"itemprop="url"> <span itemprop="name">CATERING</span></a>
            
            <ul class="navigation--sub navigation--sub-5">
                <img src="/media/image/07/7a/b8/icon-catering-w.png">
            
                <li class="navigation--sub-entry"role="menuitem"><a class="navigation--sub-link"href="http://test.daily-catering.de/catering/kita-catering/"title="KITA Catering"itemprop="url"> <span itemprop="name">KITA Catering</span></a></li>
                
                <li class="navigation--sub-entry"role="menuitem"><a class="navigation--sub-link"href="http://test.daily-catering.de/catering/business-catering/"title="BUSINESS CATERING"itemprop="url"> <span itemprop="name">BUSINESS CATERING</span></a></li>
                
                <li class="navigation--sub-entry"role="menuitem"><a class="navigation--sub-link"href="http://test.daily-catering.de/catering/event-catering/"title="EVENT CATERING"itemprop="url"> <span itemprop="name">EVENT CATERING</span></a></li>
            
                
            </ul>
        </li>
        
        <li class="navigation--entry navigation--entry-15"role="menuitem"><a class="navigation--link"href="http://test.daily-catering.de/daily-you/" title="DAILY YOU"itemprop="url"> <span itemprop="name">DAILY YOU</span></a>
            <ul class="navigation--sub navigation--sub-15">
                   <img src="/media/image/a0/8b/a6/icon-daily-you-w.png">
              
                <li class="navigation--sub-entry"role="menuitem"><a class="navigation--sub-link"href="http://test.daily-catering.de/daily-you/ueber-uns/"title="ÜBER UNS"itemprop="url"> <span itemprop="name">ÜBER UNS</span></a></li>
            
                <li class="navigation--sub-entry"role="menuitem"><a class="navigation--sub-link"href="http://test.daily-catering.de/daily-you/referenzen/"title="REFERENZEN"itemprop="url"> <span itemprop="name">REFERENZEN</span></a></li><li class="navigation--sub-entry"role="menuitem"><a class="navigation--sub-link"href="http://test.daily-catering.de/daily-you/kontakt/"title="KONTAKT"itemprop="url"> <span itemprop="name">KONTAKT</span></a></li>
        
                <li class="navigation--sub-entry"role="menuitem"><a class="navigation--sub-link"href="http://test.daily-catering.de/daily-you/service-info/"title="SERVICE INFO"itemprop="url"> <span itemprop="name">SERVICE INFO</span></a></li>
            </ul>
            </li>
        </ul>
</div>
</div>
</nav>
                            {/block}
                        </div>
                    </nav>
                {/block}
                            
                            {* Shop navigation *}
                            {block name='frontend_index_shop_navigation'}
                                {include file="frontend/index/shop-navigation.tpl"}
                            {/block}

                            {block name='frontend_index_container_ajax_cart'}
                                <div class="container--ajax-cart" data-collapse-cart="true"{if $theme.offcanvasCart} data-displayMode="offcanvas"{/if}></div>
                            {/block}
                        </div>
                    {/block}

                </header>

            {/block}

