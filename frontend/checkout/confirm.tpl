{extends file='parent:frontend/checkout/confirm.tpl'}

                                            {block name='frontend_checkout_confirm_left_shipping_method'}
                                                <p class="shipping--method-info">
                                                    <strong class="shipping--title">{s name="ConfirmHeadDispatch"}{/s}</strong>
                                                    {if $sDispatch.id != 9}
                                                    	<span class="shipping--description" title="{$sDispatch.description}">{$sDispatch.description|truncate:9:"":true}</span>
                                                    {else}
                                                    	<span class="shipping--description" title="{$sDispatch.description}">{$sDispatch.description}</span>
                                                    {/if}
                                                </p>
                                            {/block}
                                      