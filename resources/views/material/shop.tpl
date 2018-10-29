





{include file='header.tpl'}





	<main class="content">
		<div class="content-header ui-content-header">
			<div class="container">
				<h1 class="content-heading">套餐价格</h1>
			</div>
		</div>
		<div class="container">
			<div class="col-lg-12 col-sm-12">
				<section class="content-inner margin-top-no">
					
					<div class="card">
						<div class="card-main">
							<div class="card-inner">
							<p class="card-heading">
					1，本站没有游戏节点，不建议用来玩游戏，不保证可以观看TVB、NF等网站视频；<br>
					2，商品不可叠加，新购商品会覆盖旧商品的效果，V2ray不提供任何技术支持，年付用户可用VIP/SVIP节点，其他用户可使用VIP节点；<br>
					3，本站不提供试用，如有任何问题，请<a href="/cous">联系管理员</a></p>	
							</div>
						</div>
					</div>
                  
                  {*
					<div class="shop-switch">
                         <div class="card">
							 <div class="card-main">
								 <div class="card-inner shop-switch">
										<div class="switch-btn" id="switch-cards"><a href="#" onclick="return false"><i class="mdui-icon material-icons">apps</i></a></div>
										<div class="switch-btn" id="switch-table"><a href="#" onclick="return false"><i class="mdui-icon material-icons">dehaze</i></a></div>
								 </div>
							 </div>
						 </div>
					</div>
					*}
						
            <div class="shop-flex">
				{$shops->render()}
				{foreach $shops as $shop}
                  <div class="card">
					  <div class="card-main">
						  <div class="card-inner">
								<div class="shop-name">{$shop->name}</div>
								<div class="shop-price">价格：<code>{$shop->price}</code> 元</div>
								<div class="shop-content">
								{if $shop->id==57}
								<div>账号流量重置为 <code>{$shop->bandwidth()}</code> G</div>
								<div>仅适合流量已用完的用户使用</div>
								<div>不增加等级和等级到期时间</div>
								<div>仅重置账号流量为<code>{$shop->bandwidth()}</code> G</div>
								<div>请谨慎购买</div>
								
								{else}
								
								{if $shop->auto_reset_day!=0}
								<div>可使用SSR节点和V2RAY节点</div>
								
								<div>为账号添加流量 <code>{$shop->bandwidth()}</code> G</div>
								<div>为账号等级有效期添加 <code>{$shop->class_expire()}</code> 天</div>
								<div>每月自动重置流量为 <code>{$shop->bandwidth()}</code> G</div>
								
									{else}
                                    <div>可使用SSR节点</div>
									<div>为账号添加流量 <code>{$shop->bandwidth()}</code> G</div>
									<div>为账号等级有效期添加 <code>{$shop->class_expire()}</code> 天</div>
									
                                   {/if}	
								   {/if}
							    </div>
								<a class="btn btn-brand shop-btn" href="/user">购买</a>
						  </div>
					  </div>
				  </div>
				{/foreach}
				{$shops->render()}
				<div class="flex-fix3"></div>
				<div class="flex-fix4"></div>
			</div>

					
			</div>
			
			
			
		</div>
	</main>









{include file='footer.tpl'}


<script>
function ()
$("#switch-cards").click(function (){
	$(".shop-flex").css("display","flex");
	$(".shop-display").css("display","none");
});
$("#switch-table").click(function (){
     $(".shop-flex").css("display","none");
	 $(".shop-display").css("display","block");
});

</script>
