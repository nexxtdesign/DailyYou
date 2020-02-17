{extends file="parent:frontend/index/footer.tpl"}

{* Footer menu *}
{block name='frontend_index_footer_menu'}
    <div class="footer--columns block-group">
        {include file='frontend/index/footer-navigation.tpl'}
    </div>
{/block}

{* Copyright in the footer *}
{block name='frontend_index_footer_copyright'}
    <div class="footer--bottom">

        {* Vat info *}
        {block name='frontend_index_footer_vatinfo'}
            <div class="footer--vat-info">
                <p class="vat-info--text">
                    {if $sOutputNet}
                        {s name='FooterInfoExcludeVat' namespace="frontend/index/footer"}{/s}
                    {else}
                        {s name='FooterInfoIncludeVat' namespace="frontend/index/footer"}{/s}
                    {/if}
                </p>
            </div>
        {/block}

        {block name='frontend_index_footer_minimal'}
            {include file="frontend/index/footer_minimal.tpl" hideCopyrightNotice=true}
        {/block}

        {* Shopware footer *}
        {block name="frontend_index_shopware_footer"}

            {* Copyright *}
            {block name="frontend_index_shopware_footer_copyright"}
<div class="footer--copyright">
  <span style="padding-left:0px;">&copy; 2019 DAILY YOU</span><span style="float:right;"><a href="http://www.facebook.com/Daily.Company" target="_blank"><img src="/media/image/51/74/54/icon_facebook-2x.png" style="float:left;height:30px;width:auto;padding-right:10px;"></a> <a href="https://www.instagram.com/daily_company/" target="_blank"><img src="/media/image/3d/4f/c2/icon_instagram.png" style="float:left;height:30px;width:auto;padding-right:10px;"></a> <a href="http://www.youtube.com/user/DailyDeutschland" target="_blank"><img src="/media/image/c1/56/35/icon_youtube-2x.png" style="float:left;height:30px;width:auto;"></a></span>
                </div>
        <p style="color:#fff;font-size:12px;line-height:16px;text-align:justify;padding-top: 15px;">Catering Hamburg Kontakt  |  DAILY Catering Hamburg Fleetinsel  |  DAILY Catering Hamburg Hammerbrook  |  DAILY Catering bestellen  |  DAILY Catering Hamburg Wochenkarte  |  Catering italienisch Hamburg  |  Catering Hochzeit Hamburg  |  Catering Geburtstag Hamburg  Catering |  Firmenevent Hamburg  |  Kantine Hamburg  |  Mitarbeiterverpflegung in Hamburg  |  Gemeinschaftsverpflegung in Hamburg  |  Messe Catering Hamburg  |  Exhibition Catering Hamburg  |  Weihnachtsfeier Hamburg  |  Grill Buffet Catering Hamburg</p>
            <script src="https://kit.fontawesome.com/3ae3a9b293.js" crossorigin="anonymous"></script>
        {/block}

            {* Logo *}
       
        {/block}
    </div>
{/block}


