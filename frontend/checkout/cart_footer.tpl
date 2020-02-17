{extends file='parent:frontend/checkout/cart_footer.tpl'}

                {block name='frontend_checkout_cart_footer_field_labels_total' prepend}
                	{if $sUserData.additional.charge_vat}
                        {foreach $sBasket.sTaxRates as $rate => $value}
                            {block name='frontend_checkout_cart_footer_field_labels_taxes_entry'}
                                <li class="list--entry block-group entry--taxes">

                                    {block name='frontend_checkout_cart_footer_field_labels_taxes_label'}
                                        <div class="entry--label block">
                                            {s name="CartFooterTotalTax"}{/s}
                                        </div>
                                    {/block}

                                    {block name='frontend_checkout_cart_footer_field_labels_taxes_value'}
                                        <div class="entry--value block is--no-star">
                                            {$value|currency}
                                        </div>
                                    {/block}
                                </li>
                            {/block}
                        {/foreach}
                    {/if}
                {/block}
            
            	{block name='frontend_checkout_cart_footer_field_labels_taxes'}{/block}
            	