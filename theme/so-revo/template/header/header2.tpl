
<header id="header" class=" variant typeheader-<?php echo isset($typeheader) ? $typeheader : '1'?>">
	<!-- HEADER TOP -->
	<div class="header-top compact-hidden">
		<div class="container">
			<div class="row">
				<div class="header-top-left  col-lg-6  hidden-sm col-md-5 hidden-xs">
					<ul class="list-inlines">
						<?php if($welcome_message_status):?>
						<li class="hidden-xs" >
							<?php
								if (isset($welcome_message) && is_string($welcome_message)) {
									echo html_entity_decode($welcome_message, ENT_QUOTES, 'UTF-8');
								} else {echo 'Default welcome msg!';}
							?>
							<?php if ($logged) { ?>
							<a class="link-lg" href="<?php echo $logout; ?>"><?php echo $text_logout; ?></a>
							
							<?php } else { ?>
							<a class="link-lg" href="<?php echo $register; ?>"><?php echo $text_register; ?></a> or 
							<a class="link-lg" href="<?php echo $login; ?>"><?php echo $text_login; ?></a>
							<?php } ?>
						</li>
						<?php endif; ?>
					</ul>
				</div>
				<div class="header-top-right collapsed-block col-lg-6 col-sm-12 col-md-7 col-xs-12 ">
					<h5 class="tabBlockTitle hidden-lg hidden-sm hidden-md visible-xs"><?php echo $text_more; ?><a class="expander " href="#TabBlock-1"><i class="fa fa-angle-down"></i></a></h5>
					<div  class="tabBlock" id="TabBlock-1">
						<ul class="top-link list-inline">
							<li class="account" id="my_account"><a href="<?php echo $account; ?>" title="<?php echo $text_account; ?>" class="btn-xs dropdown-toggle" data-toggle="dropdown"> <span><?php echo $text_account; ?></span> <span class="fa fa-angle-down"></span></a>
								<ul class="dropdown-menu ">
									
									<li><a href="<?php echo $account; ?>"><?php echo $text_account; ?></a></li>
									<li><a href="<?php echo $order; ?>"><?php echo $text_order; ?></a></li>
									<li><a href="<?php echo $transaction; ?>"><?php echo $text_transaction; ?></a></li>
									<li><a href="<?php echo $download; ?>"><?php echo $text_download; ?></a></li>
									
									<?php if($checkout_status):?><li class="checkout"><a href="<?php echo $checkout; ?>" class="btn-link" title="<?php echo $text_checkout; ?>"><span ><?php echo $text_checkout; ?></span></a></li><?php endif; ?>
								</ul>
							</li>
							<!-- LANGUAGE CURENTY -->
							<?php if($lang_status):?>
								
								<li ><?php echo $language; ?></li>
								<li class="currency" > <?php echo $currency; ?> </li>
							<?php endif; ?>
							
						</ul>
					</div>
				</div>
			</div>
		</div>
	</div>
	
	<!-- HEADER CENTER -->
	<div class="header-center compact-hidden">
		<div class="container">
			<div class="row">
				<!-- LOGO -->
				<div class="navbar-logo col-lg-3 col-md-3 col-sm-12 col-xs-12">
				   <?php  $this->soconfig->get_logo();?>
				</div>
				<div class="header-center-right col-lg-9 col-md-9 col-sm-12 col-xs-12">
					<!-- BOX CONTENT MENU -->
					<div class="header_search">
						<?php  echo $content_search; ?>
					</div>
					<div class="phone-header pull-right">
						<?php if($phone_status):?>
						<div class="telephone hidden-xs" >
							<?php
								if (isset($contact_number) && is_string($contact_number)) {
									echo html_entity_decode($contact_number, ENT_QUOTES, 'UTF-8');
								} else {echo 'Telephone No';} 
							?>
							
						</div>
						<?php endif; ?>
						
					</div>
				</div>
			</div>
		</div>
	</div>
	
	<!-- HEADER BOTTOM -->
	<div class="header-bottom ">
		<div class="container">
			<div class="header-bottom-inner">
				<div class="row">
					<!--<div class="header-bottom-left menu-vertical col-md-3 col-sm-2 col-xs-3">
						<?php if (trim($content_menu1)) : 
								echo $content_menu1;
						endif; ?>
					</div>-->
					<div class="header-bottom-right col-md-12 col-sm-12 col-xs-12">
						<div class="row">
							<div class="header-menu col-lg-12 col-md-12 col-sm-12 col-xs-9">
								<?php echo $content_menu; ?>
							</div>
							<div class="header-right col-lg-3 col-md-3 col-sm-3 col-xs-4 pull-right">
								<div class="block-cart">
									<div class="shopping_cart">
										<?php echo $cart; ?>
									</div>
								</div>
								<div class="header_custom_link hidden-xs">
									<ul>
										<li class="wishlist"><a href="<?php echo $wishlist; ?>" id="wishlist-total" class="top-link-wishlist" title="<?php echo $text_wishlist; ?>"></a></li>
										<li class="compare"><a href="#" id="compare-total" class="top-link-compare" title="<?php echo $text_compare; ?>"></a></li>
									</ul>	
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	  
	</div>
	
	<!-- Navbar switcher -->
	<?php if (!isset($toppanel_status) || $toppanel_status != 0) : ?>
	<?php if (!isset($toppanel_type) || $toppanel_type != 2 ) :  ?>
	<div class="navbar-switcher-container">
		<div class="navbar-switcher">
			<span class="i-inactive">
				<i class="fa fa-caret-down"></i>
			</span>
			 <span class="i-active fa fa-times"></span>
		</div>
	</div>
	<?php endif; ?>
	<?php endif; ?>
</header>