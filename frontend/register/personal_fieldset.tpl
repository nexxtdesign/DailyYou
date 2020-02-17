{extends file='parent:frontend/register/personal_fieldset.tpl'}

                {block name='frontend_register_personal_fieldset_input_firstname'}
                    <div class="register--firstname">
                        <input autocomplete="section-personal given-name"
                               name="register[personal][firstname]"
                               type="text"
                               maxlength="30"
                               required="required"
                               aria-required="true"
                               placeholder="{s name='RegisterPlaceholderFirstname'}{/s}{s name="RequiredField" namespace="frontend/register/index"}{/s}"
                               id="firstname"
                               value="{$form_data.firstname|escape}"
                               class="register--field is--required{if isset($error_flags.firstname)} has--error{/if}" />
                    </div>
                {/block}

                {block name='frontend_register_personal_fieldset_input_lastname'}
                    <div class="register--lastname">
                        <input autocomplete="section-personal family-name"
                               name="register[personal][lastname]"
                               type="text"
                               maxlength="30"
                               required="required"
                               aria-required="true"
                               placeholder="{s name='RegisterPlaceholderLastname'}{/s}{s name="RequiredField" namespace="frontend/register/index"}{/s}"
                               id="lastname" value="{$form_data.lastname|escape}"
                               class="register--field is--required{if isset($error_flags.lastname)} has--error{/if}" />
                    </div>
                {/block}
                