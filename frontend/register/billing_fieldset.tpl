{extends file='parent:frontend/register/billing_fieldset.tpl'}

                {* Company *}
                {block name='frontend_register_billing_fieldset_input_company'}
                    <div class="register--companyname">
                        <input autocomplete="section-billing billing organization"
                               name="register[billing][company]"
                               type="text"
                               maxlength="120"
                               required="required"
                               aria-required="true"
                               placeholder="{s name='RegisterPlaceholderCompany'}{/s}{s name="RequiredField" namespace="frontend/register/index"}{/s}"
                               id="register_billing_company"
                               value="{$form_data.company|escape}"
                               class="register--field is--required{if isset($error_flags.company)} has--error{/if}" />
                                
                    </div>
                {/block}

                {* Department *}
                {block name='frontend_register_billing_fieldset_input_department'}
                    
                {/block}

                {* VAT Id *}
                {block name='frontend_register_billing_fieldset_input_vatId'}
                    <div class="register--vatId">
                        <input name="register[billing][vatId]"
                               type="number" {if {config name=vatCheckRequired}} required="required" aria-required="true"{/if}
                               placeholder="{s name='RegisterLabelTaxId'}{/s}{if {config name=vatcheckrequired}}{s name="RequiredField" namespace="frontend/register/index"}{/s}{/if}"
                               id="register_billing_vatid"
                               value="{$form_data.vatId|escape}"
                                {if {config name=vatcheckrequired}} required="required" aria-required="true"{/if}
                               class="register--field{if isset($error_flags.vatId)} has--error{/if}{if {config name=vatcheckrequired}} is--required{/if}"/>
                    </div>
                {/block}

                {* Street *}
                {block name='frontend_register_billing_fieldset_input_street'}
                    <div class="register--street">
                        <input autocomplete="section-billing billing street-address"
                               name="register[billing][street]"
                               type="text"
                               maxlength="50"
                               required="required"
                               aria-required="true"
                               placeholder="{s name='RegisterBillingPlaceholderStreet'}{/s}{s name="RequiredField" namespace="frontend/register/index"}{/s}"
                               id="street"
                               value="{$form_data.street|escape}"
                               class="register--field register--field-street is--required{if isset($error_flags.street)} has--error{/if}" />
                    </div>
                {/block}
                
                {* Zip + City *}
                {block name='frontend_register_billing_fieldset_input_zip_and_city'}
                    <div class="register--zip-city">
                        {if {config name=showZipBeforeCity}}
                            <input autocomplete="section-billing billing postal-code"
                                   name="register[billing][zipcode]"
                                   type="text"
                                   maxlength="6"
                                   required="required"
                                   aria-required="true"
                                   placeholder="{s name='RegisterBillingPlaceholderZipcode'}{/s}{s name="RequiredField" namespace="frontend/register/index"}{/s}"
                                   id="zipcode"
                                   value="{$form_data.zipcode|escape}"
                                   class="register--field register--spacer register--field-zipcode is--required{if isset($error_flags.zipcode)} has--error{/if}" />

                            <input autocomplete="section-billing billing address-level2"
                                   name="register[billing][city]"
                                   type="text"
                                   maxlength="50"
                                   required="required"
                                   aria-required="true"
                                   placeholder="{s name='RegisterBillingPlaceholderCity'}{/s}{s name="RequiredField" namespace="frontend/register/index"}{/s}"
                                   id="city"
                                   value="{$form_data.city|escape}"
                                   size="25"
                                   class="register--field register--field-city is--required{if isset($error_flags.city)} has--error{/if}" />
                        {else}
                            <input autocomplete="section-billing billing address-level2"
                                   name="register[billing][city]"
                                   type="text"
                                   maxlength="50"
                                   required="required"
                                   aria-required="true"
                                   placeholder="{s name='RegisterBillingPlaceholderCity'}{/s}{s name="RequiredField" namespace="frontend/register/index"}{/s}"
                                   id="city"
                                   value="{$form_data.city|escape}"
                                   size="25"
                                   class="register--field register--spacer register--field-city is--required{if isset($error_flags.city)} has--error{/if}" />

                            <input autocomplete="section-billing billing postal-code"
                                   name="register[billing][zipcode]"
                                   type="text"
                                   maxlength="6"
                                   required="required"
                                   aria-required="true"
                                   placeholder="{s name='RegisterBillingPlaceholderZipcode'}{/s}{s name="RequiredField" namespace="frontend/register/index"}{/s}"
                                   id="zipcode"
                                   value="{$form_data.zipcode|escape}"
                                   class="register--field register--field-zipcode is--required{if isset($error_flags.zipcode)} has--error{/if}" />
                        {/if}
                    </div>
                {/block}
