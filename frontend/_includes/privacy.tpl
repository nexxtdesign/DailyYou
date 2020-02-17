{extends file='parent:frontend/_includes/privacy.tpl'}
{block name="frontend_data_protection_information"}
    <p class="privacy-information">
        {if {config name=ACTDPRCHECK} && !$hideCheckbox}
            {block name="frontend_data_protection_information_checkbox"}
                <input name="privacy-checkbox" type="checkbox" id="privacy-checkbox" required="required" aria-required="true" value="1" class="is--required"{if $smarty.post['privacy-checkbox']} checked{/if} />
                <label for="privacy-checkbox">
                    {s name="PrivacyText" namespace="frontend/index/privacy"}{/s}
                </label>
            {/block}
        {elseif {config name=ACTDPRTEXT}}
            {block name="frontend_data_protection_information_text"}
 Ich stimme zu, dass meine Angaben aus dem Kontaktformular zur Beantwortung meiner Anfrage erhoben und verarbeitet werden. Die Daten werden nach abgeschlossener Bearbeitung Ihrer Anfrage gelöscht. Hinweis: Sie können Ihre Einwilligung jederzeit für die Zukunft per E-Mail an info@daily-company.de widerrufen. Detaillierte Informationen zum Umgang mit Nutzerdaten finden Sie in unserer Datenschutzerklärung.
            {/block}
        {/if}
    </p>
{/block}
