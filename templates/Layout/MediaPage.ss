<section class="main typography">
	<% include Breadcrumbs %>
	<div class="row content-start">

		<article class="large-6 columns">
			<h1>$Title</h1>

			<p class="meta"><% if $getAttribute('Author').Content %>By <em>$getAttribute('Author').Content</em> on <% end_if %><em>$Date.Format('d M Y')</em></p>
			<div class="media-page-content">$Content</div>
			
			$Form
		</article>

		<aside class="large-6 columns">
			<div class="actions-panel" data-saveable-info="$ClassName-$ID"></div>
			<% if Images %>
				<h2 class="visually-hidden">Images</h2>
				<ul class="slides">
					<li class="slidesjs-previous slidesjs-navigation"><a><span class="typcn typcn-arrow-left"></span></a></li>
					<li class="slidesjs-next slidesjs-navigation"><a><span class="typcn typcn-arrow-right"></span></a></li>
					<% loop Images %>
						<li class="slide">
							<div><span class="pos">$Pos</span> of $TotalItems</div>
							<div>$SetRatioSize(600,600)</div>
						</li>
					<% end_loop %>
				</ul>
			<% end_if %>
			<dl class="tags">
				<% if $Tags %>
					<dt><span class="typcn typcn-tags"></span> Tags</dt>
					<dd>
						<ul class="inline-list tight">
							<% loop $Tags %>
								<li><a class="label round outline" href="{$Up.getParent.Link}?tag={$Title.URLATT}">$Title</a></li>
							<% end_loop %>
						</ul>
					</dd>
				<% end_if %>
				<dt><span class="typcn typcn-message"></span> Comments</dt>
					<dd class="postComments">
						<a href="{$BaseHref}timeline?tags=$ClassName$ID" class="comment-list-trigger in-page-action" data-reveal-id="comments-modal" data-reveal-ajax="true" title="View comments" data-tooltip aria-haspopup="true">
						<% if $ContextUser.UnreadPosts.count %>
							<span class="comment-count comment-count-$ContextUser.UnreadPosts.count" >$ContextUser.UnreadPosts.count</span>
						<% else %>
							<span class="comment-count comment-count-0"></span>
						<% end_if %>
						comments
						</a>
					</dd>
			</dl>
		</aside>
	</div>

	<div id="comments-modal" class="reveal-modal full" data-reveal></div>
</section>

