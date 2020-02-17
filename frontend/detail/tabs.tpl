{extends file='parent:frontend/detail/tabs.tpl'}

					{block name="frontend_detail_tabs" append}
						<div class="product--attributes">
                        	{foreach $sArticle.sProperties as $sProperty}
                        		{foreach $sProperty.media as $sMediaItem}
                        			{if $sMediaItem.valueId == 34 || $sMediaItem.valueId == 35 || $sMediaItem.valueId == 36 || $sMediaItem.valueId == 37}
	                        			<div class="product--attribute">
		                        			{if $sMediaItem.valueId == 34}
		                        				<img src="{media path="media/image/Icon_Vegetarisch_18x18xjWffX1hfPR1D.png"}" />
		                        			{elseif $sMediaItem.valueId == 35}
		                        				<img src="{media path="media/image/Icon_Vegan_18x18MDiczPVldRPpZ.png"}" />
		                        			{elseif $sMediaItem.valueId == 36}
		                        				<img src="{media path="media/image/Icon_Glutenfrei_18x18Kf7OgTTfCwd0s.png"}" />
		                        			{elseif $sMediaItem.valueId == 37}
		                        				<img src="{media path="media/image/Icon_Laktosefrei_18x18U6ZCL1wjv9Ekt.png"}" />
		                        			{/if}
		                        			
		                        			{foreach $sProperty.options as $sOption}
		                        				{if $sOption.id == $sMediaItem.valueId}
		                        					<span>{$sOption.name}</span>
		                        				{/if}
		                        			{/foreach}
	                        			</div>
                        			{/if}
                        		{/foreach}
                        	{/foreach}
                        </div>
                        
                        <div class="product--attributes">
                        	<div class="product--attribute">
                        		<label>
                        			Enthaltene Allergene:
                        		</label>
                        	</div>
                        	{foreach $sArticle.sProperties as $sProperty}
                        		{foreach $sProperty.media as $sMediaItem}
	                        		{if $sMediaItem.valueId != 34 && $sMediaItem.valueId != 35 && $sMediaItem.valueId != 36 && $sMediaItem.valueId != 37}
	                        			<div class="product--attribute">
		                        			<img src="{$sMediaItem.source}" />
		                        			
		                        			{foreach $sProperty.options as $sOption}
		                        				{if $sOption.id == $sMediaItem.valueId}
		                        					<span>{$sOption.name}</span>
		                        				{/if}
		                        			{/foreach}
	                        			</div>
	                        		{/if}
                        		{/foreach}
                        	{/foreach}
                        </div>
					{/block}
