{extends file='parent:frontend/checkout/items/product.tpl'}

{namespace name="frontend/checkout/cart_item"}

                    {block name='frontend_checkout_cart_item_details_title'}
                    	{if $sBasketItem.ordernumber != '800000'}
                        <a class="content--title" href="{$detailLink}" title="{$sBasketItem.articlename|strip_tags|escape}"
                            {if {config name=detailmodal} && {controllerAction|lower} === 'confirm'}
                               data-modalbox="true"
                               data-content="{url controller="detail" action="productQuickView" ordernumber="{$sBasketItem.ordernumber}" fullPath}"
                               data-mode="ajax"
                               data-width="750"
                               data-sizing="content"
                               data-title="{$sBasketItem.articlename|strip_tags|escape}"
                               data-updateImages="true"
                            {/if}>
                        {/if}
                            {$sBasketItem.articlename|strip_tags|truncate:60}
                        {if $sBasketItem.ordernumber != '800000'}
                        </a>
                       	{/if}
                    {/block}
