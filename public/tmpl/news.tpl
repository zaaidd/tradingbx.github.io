{include file="logo.tpl"}


  <div class="login bannerContainer">
    <div class="bannerInner">
      <h3>News</h3>
    </div>
  </div>
  <!-- end bannerContainer -->

  <div class="technologyContainer">
    <div class="technologyInner">		
			
			
{if $news}
{section name=s loop=$news}
			<div class="news-text">
				
							<div class="news-title"><a name="2"></a>{$news[s].title}</div>
				
				<div class="news-date">{$news[s].d}</div>
				  {$news[s].full_text}
			</div>
{/section}
{else}
	<div class="news-text">
				
							<div class="news-title"><a name="2"></a>No news found</div>
				
				<div class="news-date">N/A</div>
				Visit this page regularly to keep yourself updated about latest company news & updates.
			</div>		
{/if}


</div>

		</div>
{include file="footer2.tpl"}