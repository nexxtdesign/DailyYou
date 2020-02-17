{extends file='parent:frontend/register/shipping_fieldset.tpl'}

                {* Company *}
                {block name="frontend_register_shipping_fieldset_input_company"}
                    <div class="register--companyname">
                        <input autocomplete="section-shipping shipping organization"
                               name="register[shipping][company]"
                               type="text"
                               maxlength="120"
                               placeholder="{s name='RegisterShippingPlaceholderCompany'}{/s}"
                               id="company2" value="{$form_data.company|escape}"
                               class="register--field{if isset($error_flags.company)} has--error{/if}" />
                    </div>
                {/block}

                {* Department *}
                {block name='frontend_register_shipping_fieldset_input_department'}
                   
                {/block}

                {* Firstname *}
                {block name='frontend_register_shipping_fieldset_input_firstname'}
                    <div class="register--firstname">
                        <input autocomplete="section-shipping shipping given-name"
                               name="register[shipping][firstname]"
                               type="text"
                               maxlength="30"
                               required="required"
                               aria-required="true"
                               placeholder="{s name='RegisterShippingPlaceholderFirstname'}{/s}{s name="RequiredField" namespace="frontend/register/index"}{/s}"
                               id="firstname2"
                               value="{$form_data.firstname|escape}"
                               class="register--field is--required{if isset($error_flags.firstname)} has--error{/if}" />
                    </div>
                {/block}

                {* Lastname *}
                {block name='frontend_register_shipping_fieldset_input_lastname'}
                    <div class="register--lastname">
                        <input autocomplete="section-shipping shipping family-name"
                               name="register[shipping][lastname]"
                               type="text"
                               maxlength="30"
                               required="required"
                               aria-required="true"
                               placeholder="{s name='RegisterShippingPlaceholderLastname'}{/s}{s name="RequiredField" namespace="frontend/register/index"}{/s}"
                               id="lastname2"
                               value="{$form_data.lastname|escape}"
                               class="register--field is--required{if isset($error_flags.lastname)} has--error{/if}" />
                    </div>
                {/block}

                {* Street *}
                {block name='frontend_register_shipping_fieldset_input_street'}
                    <div class="register--street">
                        <input autocomplete="section-shipping shipping street-address"
                               name="register[shipping][street]"
                               type="text"
                               maxlength="50"
                               required="required"
                               aria-required="true"
                               placeholder="{s name='RegisterShippingPlaceholderStreet'}{/s}{s name="RequiredField" namespace="frontend/register/index"}{/s}"
                               id="street2"
                               value="{$form_data.street|escape}"
                               class="register--field register--field-street is--required{if isset($error_flags.street)} has--error{/if}" />
                    </div>
                {/block}

                {* Zip + City *}
                {block name='frontend_register_shipping_fieldset_input_zip_and_city'}
                    <div class="register--zip-city">
                        {if {config name=showZipBeforeCity}}
                            <input autocomplete="section-shipping shipping postal-code"
                                   name="register[shipping][zipcode]"
                                   type="text"
                                   maxlength="6"
                                   required="required"
                                   aria-required="true"
                                   placeholder="{s name='RegisterShippingPlaceholderZipcode'}{/s}
                                   {s name="RequiredField" namespace="frontend/register/index"}{/s}"
                                   id="zipcode2"
                                   value="{$form_data.zipcode|escape}"
                                   class="register--field register--spacer register--field-zipcode is--required{if isset($error_flags.zipcode)} has--error{/if}" />

                            <input autocomplete="section-shipping shipping address-level2"
                                   name="register[shipping][city]"
                                   type="text"
                                   maxlength="50"
                                   required="required"
                                   aria-required="true"
                                   placeholder="{s name='RegisterShippingPlaceholderCity'}{/s}{s name="RequiredField" namespace="frontend/register/index"}{/s}"
                                   id="city2"
                                   value="{$form_data.city|escape}"
                                   size="25"
                                   class="register--field register--field-city is--required{if isset($error_flags.city)} has--error{/if}" />
                        {else}
                            <input autocomplete="section-shipping shipping address-level2"
                                   name="register[shipping][city]"
                                   type="text"
                                   maxlength="50"
                                   required="required"
                                   aria-required="true"
                                   placeholder="{s name='RegisterShippingPlaceholderCity'}{/s}{s name="RequiredField" namespace="frontend/register/index"}{/s}"
                                   id="city2"
                                   value="{$form_data.city|escape}"
                                   size="25"
                                   class="register--field register--spacer register--field-city is--required{if isset($error_flags.city)} has--error{/if}" />

                            <input autocomplete="section-shipping shipping postal-code"
                                   name="register[shipping][zipcode]"
                                   type="text"
                                   maxlength="6"
                                   required="required"
                                   aria-required="true"
                                   placeholder="{s name='RegisterShippingPlaceholderZipcode'}{/s}{s name="RequiredField" namespace="frontend/register/index"}{/s}"
                                   id="zipcode2"
                                   value="{$form_data.zipcode|escape}"
                                   class="register--field register--field-zipcode is--required{if isset($error_flags.zipcode)} has--error{/if}" />
                        {/if}
                    </div>
                {/block}
