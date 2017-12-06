<?php

get_header();
the_post();

//Receber get aqui

$filter = $_GET['filter'];

?>

<section id="lookbookPage">
	<!--Demo styles (you can delete this block)-->
	
	<ul id="demo-block">
		
	</ul>
	
	<!--End of styles-->

	<!--Thumbnail Navigation-->
	<div id="prevthumb"></div>
	<div id="nextthumb"></div>
	
	<!--Arrow Navigation-->
	<a id="prevslide" class="load-item"></a>
	<a id="nextslide" class="load-item"></a>


	<div id="thumb-tray" class="load-item">
		<div id="thumb-back"></div>
		<div id="thumb-forward"></div>
	</div>

	
	<!--Time Bar-->
	<div id="progress-back" class="load-item">
		<div id="progress-bar"></div>
	</div>
	
	<!--Control Bar-->
	<div id="controls-wrapper" class="load-item">
		<div id="controls">
			
			<a id="play-button"><img id="pauseplay" src="<?php echo bloginfo('template_url'); ?>/img/pause.png"/></a>
		
			<!--Slide counter-->
			<div id="slidecounter">
				<span class="slidenumber"></span> / <span class="totalslides"></span>
			</div>
			
			<!--Slide captions displayed here-->
			<div id="slidecaption"></div>
			
			<!--Thumb Tray button -->
			<a id="tray-button"><img id="tray-arrow" src="<?php echo bloginfo('template_url'); ?>/img/button-tray-up.png"/></a>-
			
			<!--Navigation-->
			<ul id="slide-list"></ul>
			
		</div>
	</div>
</section>
<script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/1.6.1/jquery.min.js"></script>
<script type="text/javascript" src="<?php bloginfo('template_url'); ?>/js/jquery.easing.min.js"></script>
<script type="text/javascript" src="<?php bloginfo('template_url'); ?>/js/supersized.3.2.7.min.js"></script>
<script type="text/javascript" src="<?php bloginfo('template_url'); ?>/js/supersized.shutter.min.js"></script>
<script type="text/javascript">
	jQuery(function($){			
		$.supersized({
		
			// Functionality
			slideshow               :   1,			// Slideshow on/off
			autoplay				:	1,			// Slideshow starts playing automatically
			start_slide             :   1,			// Start slide (0 is random)
			stop_loop				:	0,			// Pauses slideshow on last slide
			random					: 	0,			// Randomize slide order (Ignores start slide)
			slide_interval          :   3000,		// Length between transitions
			transition              :   6, 			// 0-None, 1-Fade, 2-Slide Top, 3-Slide Right, 4-Slide Bottom, 5-Slide Left, 6-Carousel Right, 7-Carousel Left
			transition_speed		:	1000,		// Speed of transition
			new_window				:	1,			// Image links open in new window/tab
			pause_hover             :   0,			// Pause slideshow on hover
			keyboard_nav            :   1,			// Keyboard navigation on/off
			performance				:	1,			// 0-Normal, 1-Hybrid speed/quality, 2-Optimizes image quality, 3-Optimizes transition speed // (Only works for Firefox/IE, not Webkit)
			image_protect			:	1,			// Disables image dragging and right click with Javascript
													   
			// Size & Position						   
			min_width		        :   0,			// Min width allowed (in pixels)
			min_height		        :   0,			// Min height allowed (in pixels)
			vertical_center         :   1,			// Vertically center background
			horizontal_center       :   1,			// Horizontally center background
			fit_always				:	0,			// Image will never exceed browser width or height (Ignores min. dimensions)
			fit_portrait         	:   1,			// Portrait images will not exceed browser height
			fit_landscape			:   0,			// Landscape images will not exceed browser width
													   
			// Components							
			slide_links				:	'blank',	// Individual links for each slide (Options: false, 'num', 'name', 'blank')
			thumb_links				:	1,			// Individual thumb links for each slide
			thumbnail_navigation    :   0,			// Thumbnail navigation
			slides 					:  	[			// Slideshow Images


											<?php if (empty($filter)) : ?>

											<?php

												$args = array(
													'orderby' => 'date',
    												'order'   => 'DESC',
													'posts_per_page' => 1,
													'post_type' => 'lookbook',
												);

												$the_query = new WP_Query( $args );
 
												// The Loop
												if ( $the_query->have_posts() ) {
												    while ( $the_query->have_posts() ) {
												        $the_query->the_post();
												        $id = get_the_ID();
												    }
												}

												wp_reset_postdata();

												$galeria = acf_photo_gallery('fotos_1', $id);
											    if( count($galeria) ):
											        foreach($galeria as $imagem):
											            $full_image_url = $imagem['full_image_url']; 
											            $full_image_url_thumb = acf_photo_gallery_resize_image($full_image_url, 200, 150); 
												?>
												

												{image : '<?php echo $full_image_url; ?>', thumb : '<?php echo $full_image_url_thumb; ?>', url : ''},

											<?php endforeach; endif; ?>

											<?php

												$args = array(
													'orderby' => 'date',
    												'order'   => 'DESC',
													'posts_per_page' => 1,
													'post_type' => 'lookbook',
												);

												$the_query = new WP_Query( $args );
 
												// The Loop
												if ( $the_query->have_posts() ) {
												    while ( $the_query->have_posts() ) {
												        $the_query->the_post();
												        $id = get_the_ID();
												    }
												}

												wp_reset_postdata();

												$galeria = acf_photo_gallery('fotos_2', $id);
											    if( count($galeria) ):
											        foreach($galeria as $imagem):
											            $full_image_url = $imagem['full_image_url']; 
											            $full_image_url_thumb = acf_photo_gallery_resize_image($full_image_url, 200, 150); 
												?>
												

												{image : '<?php echo $full_image_url; ?>', thumb : '<?php echo $full_image_url_thumb; ?>', url : ''},

											<?php endforeach; endif; ?>

											<?php

												$args = array(
													'orderby' => 'date',
    												'order'   => 'DESC',
													'posts_per_page' => 1,
													'post_type' => 'lookbook',
												);

												$the_query = new WP_Query( $args );
 
												// The Loop
												if ( $the_query->have_posts() ) {
												    while ( $the_query->have_posts() ) {
												        $the_query->the_post();
												        $id = get_the_ID();
												    }
												}

												wp_reset_postdata();

												$galeria = acf_photo_gallery('fotos_3', $id);
											    if( count($galeria) ):
											        foreach($galeria as $imagem):
											            $full_image_url = $imagem['full_image_url']; 
											            $full_image_url_thumb = acf_photo_gallery_resize_image($full_image_url, 200, 150); 
												?>
												

												{image : '<?php echo $full_image_url; ?>', thumb : '<?php echo $full_image_url_thumb; ?>', url : ''},

											<?php endforeach; endif; ?>

											<?php else : ?>

											<?php

												$args = array(
													'orderby' => 'date',
    												'order'   => 'DESC',
													'posts_per_page' => 1,
													'post_type' => 'lookbook',
												);

												$the_query = new WP_Query( $args );
 
												// The Loop
												if ( $the_query->have_posts() ) {
												    while ( $the_query->have_posts() ) {
												        $the_query->the_post();
												        $id = get_the_ID();
												    }
												}

												wp_reset_postdata();

												$galeria = acf_photo_gallery('fotos_'.$filter, $id);
											    if( count($galeria) ):
											        foreach($galeria as $imagem):
											            $full_image_url = $imagem['full_image_url']; 
											            $full_image_url_thumb = acf_photo_gallery_resize_image($full_image_url, 200, 150); 
												?>
												

												{image : '<?php echo $full_image_url; ?>', thumb : '<?php echo $full_image_url_thumb; ?>', url : ''},

											<?php endforeach; endif; ?>


											<?php endif; ?>
											
										],
										
			// Theme Options			   
			progress_bar			:	1,			// Timer for each slide							
			mouse_scrub				:	0
			
		});
	});
</script>

<?php get_footer(); ?>