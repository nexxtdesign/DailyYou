{extends file='parent:frontend/checkout/change_shipping.tpl'}

                        {block name='frontend_checkout_dispatch_shipping_input_label'}
                            <div class="method--label is--first">
                                <label class="method--name is--strong" for="confirm_dispatch{$dispatch.id}">{$dispatch.description}</label>
                            </div>
                        {/block}
