{namespace name="frontend/index/menu_footer"}

{* Service hotline *}
{block name="frontend_index_footer_column_service_hotline"}
    <div class="footer--column column--hotline is--first block">
       <img src="http://test.daily-catering.de/media/vector/g0/8c/8e/daily-logo-2019-weiss-v2.svg" style="width:130px;height:auto;">
<img src="http://test.daily-catering.de/media/image/85/a6/8f/footer-zitat.png">
        <p style="margin:30px 0 0 30px;">
<a href="#" class="tooltip"><img src="/media/image/a6/35/2c/dge-zertifikat.png" style="float:left;" width="60px"><span>Unser KITA-Segment ist von der Deutschen Gesellschaft<br />für Ernährung zertifiziert!</span></a>
<a href="#" class="tooltip"><img src="/media/image/c1/47/c0/deutsche-see.png" style="float:left;" width="60px"><span>MSC-zertifizierter Fisch von DeutscheSee</span></a>
<a href="#" class="tooltip"><img src="/media/image/76/a3/96/klimaneutrale-produktion.png" style="float:left; " width="60px"><span>Klimaneutrale Produktion</span></a>
<a href="#" class="tooltip"><img src="/media/image/fd/07/59/klimaneutrale-lieferung.png" style="float:left;" width="60px"><span>Klimaneutrale Lieferung</span></a>


        </p>
        
    </div>
{/block}


{block name="frontend_index_footer_column_zusatz_menu"}
    <div class="footer--column column--menu block small">
       <!-- ... -->
   <!-- {block name="frontend_index_footer_column_service_menu_headline"}
            <div class="column--headline">Standorte</div>
        {/block} -->

        {block name="frontend_index_footer_column_zusatz_menu_content"}
            <nav class="column--navigation column--content">
                <ul class="dyfooternav">
                     <li style="margin-bottom:5px;color:#93c351;"><a href="../standorte/" style="color:#fff;"><strong>Service</strong></a></li>
                     	{foreach $sMenu.bottom as $item}
           					<li style="margin-left:20px;"><a href="{if $item.link}{$item.link}{else}{url controller='custom' sCustom=$item.id title=$item.description}{/if}">{$item.description}</a></li>
           				{/foreach}
        		</ul>
            </nav>
        {/block}
         <!-- ... -->
    </div>
{/block}


{block name="frontend_index_footer_column_information_menu"}
    <div class="footer--column column--menu block">
       <!-- ... -->
   <!-- {block name="frontend_index_footer_column_service_menu_headline"}
            <div class="column--headline">Standorte</div>
        {/block} -->

        {block name="frontend_index_footer_column_service_menu_content"}
            <nav class="column--navigation column--content">
    <ul class="dyfooternav">
        <li style="margin-bottom:5px;color:#93c351;"><a href="../cat/index/sCategory/20/"><strong>Online Shop</strong></a></li>
    <li style="margin-left:20px;"><a href="http://test.daily-catering.de/shop/belegtes/">Belegtes</a></li>
    <li style="margin-left:20px;"><a href="http://test.daily-catering.de/shop/fingerfood/">Fingerfood</a></li>
    <li style="margin-left:20px;"><a href="http://test.daily-catering.de/shop/spiesse/">Spieße</a></li>
   <li style="margin-left:20px;"> <a href="http://test.daily-catering.de/shop/warme-speisen/">Warme Speisen</a></li>
    <li style="margin-left:20px;"><a href="http://test.daily-catering.de/shop/lunch-pakete/">Lunch Pakete</a></li>
    <li style="margin-left:20px;"><a href="http://test.daily-catering.de/shop/salate/">Salate</a></li>
    <li style="margin-left:20px;"><a href="http://test.daily-catering.de/shop/dessert-obst/">Dessert & Obst</a></li>
    <li style="margin-left:20px;"><a href="http://test.daily-catering.de/shop/sweeties/">Sweeties</a></li>
    <li style="margin-left:20px;"><a href="http://test.daily-catering.de/shop/fresh-juices/">Fresh Juices</a></li>
    <li style="margin-left:20px;"><a href="http://test.daily-catering.de/shop/konferenz-getraenke/">Konferenz Getränke</a></li>
    <li style="margin-left:20px;"><a href="http://test.daily-catering.de/shop/daily-kaffee/">Daily Kaffee</a></li>
    </ul>
               
            </nav>
       
        {/block}
         <!-- ... -->
    </div>
{/block}

{block name="frontend_index_footer_column_newsletter"}
    <div class="footer--column column--newsletter is--last block">
       <!-- ... -->
       <!-- {block name="frontend_index_footer_column_information_menu_headline"}
            <div class="column--headline">Online Shop</div>
        {/block} -->

        {block name="frontend_index_footer_column_information_menu_content"}
           <nav class="column--navigation column--content">
                 <ul class="dyfooternav">     
                     <li style="margin-bottom:5px;color:#93c351;"><a href="../standorte/" style="color:#fff;"><strong>Standorte</strong></a></li>
           <li style="margin-left:20px;"><a href="../standorte/"> Hamburg Fleetinsel</a></li>
           <li style="margin-left:20px;"><a href="../standorte/"> Hamburg Hammerbrook</a></li>
            <li style="margin-bottom:20px;margin-left:20px;"><a href="../standorte/">Hamburg Heidenkampsweg</a></li>
                     
            <li style="margin-bottom:20px;"><a href="../catering/business-catering/" style="color:#fff;"><strong>Catering</strong></a></li>
            <li style="margin-left:20px;"><a href="../catering/kita-catering/">KITA Catering</a></li>
           <li style="margin-left:20px;"><a href="../catering/business-catering/"> Business Catering</a></li>
            <li style="margin-left:20px;"><a href="../catering/event-catering/">Event Catering</a></li>
            <li style="margin-left:20px;"><a href="../betriebsrestaurants/">Betriebsgastronomie</a></li>
        </ul>
            </nav>
        {/block}
        <!-- ... -->
    </div>
{/block}
