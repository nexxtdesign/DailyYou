{extends file='parent:frontend/detail/content/buy_container.tpl'}

                {block name='frontend_detail_index_data' prepend}
                    <h1 class="product--title" itemprop="name">
                    	{$sArticle.articleName}
                    </h1>
                {/block}
