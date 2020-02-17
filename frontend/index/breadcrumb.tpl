{extends file='parent:frontend/index/breadcrumb.tpl'}

    {block name="frontend_index_breadcrumb_content"}
    	<li class="breadcrumb--entry" itemprop="itemListElement" itemscope itemtype="http://schema.org/ListItem">
    		Du bist hier: <a href="/">HOME</a>
    	</li>
    	<li class="breadcrumb--separator">
        	&gt;
        </li>
        {foreach $sBreadcrumb as $breadcrumb}
            {block name="frontend_index_breadcrumb_entry"}
                <li class="breadcrumb--entry{if $breadcrumb@last} is--active{/if}" itemprop="itemListElement" itemscope itemtype="http://schema.org/ListItem">
                    {if $breadcrumb.name}
                        {block name="frontend_index_breadcrumb_entry_inner"}
                            {if $breadcrumb.link}
                    			<a class="2breadcrumb--link" href="{$breadcrumb.link}" title="{$breadcrumb.name|escape}" itemprop="item">
                                    <link itemprop="url" href="{$breadcrumb.link}" />
                                    <span class="breadcrumb--title" itemprop="name">{$breadcrumb.name}</span>
                        		</a>
                            {else}
                                <span class="breadcrumb--link" itemprop="item">
                                    <span class="breadcrumb--title" itemprop="name">{$breadcrumb.name}</span>
                                </span>
                            {/if}
                            <meta itemprop="position" content="{$breadcrumb@index}" />
                        {/block}
                    {/if}
                </li>
                {if !$breadcrumb@last}
                    <li class="breadcrumb--separator">
                        &gt;
                    </li>
                {/if}
            {/block}
        {/foreach}
    {/block}
