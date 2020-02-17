	<div class="listing--categories">
		{foreach $sCategories as $category}
			{if $category.id == 20}
				<div class="listing--categoriestop">
				{foreach $category.subcategories as $subcategory}
					{if !$subcategory.hideTop}
						<div class="listing--category">
							<a href="{$subcategory.link}"><img src="{$subcategory.media.path}" /></a>
							<a href="{$subcategory.link}">{$subcategory.name}</a>
							{if $subcategory.flag}
								<a href="{$subcategory.link}">
									<img src="/themes/Frontend/DailyYou/frontend/_public/src/img/icons/icon_haken.png" class="category--selected" />
								</a>
							{/if}
						</div>
					{/if}
				{/foreach}
				</div>
			{/if}
		{/foreach}
		{foreach $sCategories as $category}
			{if $category.id == 20}
				{foreach $category.subcategories as $subcategory}
					{if $subcategory.flag && $subcategory.subcategories|@count > 0}
						<div class="listing--categoriesbottom">
						<img src="/themes/Frontend/DailyYou/frontend/_public/src/img/icons/pfeil_default.png" class="category--line" />
						{foreach $subcategory.subcategories as $subsubcategory}
							{if !$subsubcategory.hideTop}
								<a href="{$subsubcategory.link}" {if $subsubcategory.flag}class="is--active"{/if}>{$subsubcategory.name}</a>
							{/if}
						{/foreach}
						</div>
					{/if}
				{/foreach}
			{/if}
		{/foreach}
	</div>
	
	<a href="" class="opener">Categories<i class="icon--arrow-down"></i></a>
