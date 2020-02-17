{extends file="parent:frontend/plugins/advanced_menu/index.tpl"}


{block name="frontend_plugins_advanced_menu_list"}
        {debug}
    {foreach $categories as $category}
        {if $category.hideTop}
            {continue}
        {/if}

        {$categoryLink = $category.link}
        {if $category.external}
            {$categoryLink = $category.external}
        {/if}

        
            {block name="frontend_plugins_advanced_menu_list_item"}
                {$category.name}

                {if $category.sub}
                    {call name=categories_top categories=$category.sub level=$level+4}
                {/if}
            {/block}
        
    {/foreach}
{/block}