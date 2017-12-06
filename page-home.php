<?php get_header(); global $post ?>
	<section id="home" class="swiper-container">
		<div class="swiper-wrapper">
			<?php
			    //Get the images ids from the post_metadata
			    $images = acf_photo_gallery('slides_home', $post->ID);
			    //Check if return array has anything in it
			    if( count($images) ):
			        //Cool, we got some data so now let's loop over it
			        foreach($images as $image):
			            $full_image_url= $image['full_image_url']; //Full size image url
			            
			?>
			<div class="swiper-slide" style="background-image: url('<?php echo $full_image_url; ?>');"></div>
			<?php endforeach; endif; ?>
			
		</div>
		<div class="swiper-prev"></div>
		<div class="swiper-next"></div>
	</section>
	<section id="quemsomos" class="section-b">
		<div class="container">
			<div class="row">
				<div class="col-md-6 col-sm-12 col-xs-12">
					<article class="primary-article">
						<h1 class="primary-title">Olá, somos a <strong>BB2</strong></h1>
						<?php the_field('quem_somos'); ?>
						<!--<a href="#" class="btn btn-custom">Saiba mais</a>-->
					</article>
				</div>
				<div class="col-md-6 col-sm-12 col-xs-12">
					<div class="swiper-container">
						<div class="swiper-wrapper">
							<?php
							    //Get the images ids from the post_metadata
							    $images = acf_photo_gallery('galeria_quem_somos', $post->ID);
							    //Check if return array has anything in it
							    if( count($images) ):
							        //Cool, we got some data so now let's loop over it
							        foreach($images as $image):
							            $full_image_url= $image['full_image_url']; //Full size image url
							            $full_image_url_thumb = acf_photo_gallery_resize_image($full_image_url, 700, 371); //Resized size to 262px width by 160px height image url

							            
							?>
							<div class="swiper-slide"><img src="<?php echo $full_image_url_thumb; ?>" alt="Foto de <?php bloginfo('name'); ?>" title="Foto de <?php bloginfo('name'); ?>"></div>
							<?php endforeach; endif; ?>
							
						</div>
						<div class="swiper-prev"></div>
						<div class="swiper-next"></div>
					</div>
				</div>
			</div>
		</div>
	</section>
	<section id="colecao" class="section-c collections" style="background-image: url('<?php the_field('fundo_colecao'); ?>');">
		<div class="container">
			<?php
			$args = array(
				'orderby' => 'date',
				'order' => 'DESC',
				'post_type' => 'lookbook',
				'showposts' => 1,
			); 
			$loop = new WP_Query($args);
			if ($loop->have_posts()) : while ($loop->have_posts()) : $loop->the_post(); ?>

			<?php
				$titulo1 = get_field('titulo_1',get_the_ID());
				$titulo2 = get_field('titulo_2',get_the_ID());
				$titulo3 = get_field('titulo_3',get_the_ID());
				$desc1 = get_field('descricao_1',get_the_ID());
				$desc2 = get_field('descricao_2',get_the_ID());
				$desc3 = get_field('descricao_3',get_the_ID());
				$img1 = get_field('imagem_home_1',get_the_ID());
				$img2 = get_field('imagem_home_2',get_the_ID());
				$img3 = get_field('imagem_home_3',get_the_ID());
				$pdf1 = get_field('pdf_1',get_the_ID());
				$pdf2 = get_field('pdf_2',get_the_ID());
				$pdf3 = get_field('pdf_3',get_the_ID());


				if (isset($titulo1) && !empty($titulo1) && isset($titulo2) && !empty($titulo2) && isset($titulo3) && !empty($titulo3)) {
					$class = "col-md-4 col-sm-4 col-xs-12";
				} elseif (isset($titulo1) && !empty($titulo1) && !isset($titulo2) && empty($titulo2) && !isset($titulo3) && empty($titulo3)) {
					$class = "col-md-12 col-sm-12 col-xs-12";
				} else {
					$class = "col-md-6 col-sm-6 col-xs-12";
				}


			?>

				<header><h2 class="title">Coleção <span><?php the_title(); ?></span></h2></header>

				<div class="row">

					<?php if (isset($img1) && !empty($img1)) : ?>
					<div class="<?php echo $class; ?>">
						<a href="<?php bloginfo('url') ?>/lookbook/?filter=1" class="lookbook-wrapper" target="_blank">
							<div class="lookbook-item">
								<div class="lookbook-item-thumbnail" style="background-image: url('<?php echo $img1; ?>');"></div>
								<!--<div class="lookbook-item-title"><?php echo $titulo1; ?></div>-->
							</div>
						</a>
					</div>
					<?php endif; ?>

					<?php if (isset($img2) && !empty($img2)) : ?>
					<div class="<?php echo $class; ?>">
						<a href="<?php bloginfo('url') ?>/lookbook/?filter=2" class="lookbook-wrapper" target="_blank">
							<div class="lookbook-item">
								<div class="lookbook-item-thumbnail" style="background-image: url('<?php echo $img2; ?>');"></div>
								<!--<div class="lookbook-item-title"><?php echo $titulo2; ?></div>-->
							</div>
						</a>
					</div>
					<?php endif; ?>

					<?php if (isset($img3) && !empty($img3)) : ?>
					<div class="<?php echo $class; ?>">
						<a href="<?php bloginfo('url') ?>/lookbook/?filter=3" class="lookbook-wrapper" target="_blank">
							<div class="lookbook-item">
								<div class="lookbook-item-thumbnail" style="background-image: url('<?php echo $img3; ?>');"></div>
								<!--<div class="lookbook-item-title"><?php echo $titulo3; ?></div>-->
							</div>
						</a>
					</div>
					<?php endif; ?>

				</div>

			<?php endwhile; endif; wp_reset_query(); ?>


		</div>
	</section>
	<section class="newsletter">
		<div class="container">
			<div class="row">
				<div class="col-md-4 col-sm-12 col-xs-12">
					<div class="newsletter-text">
						Envie a foto do seu bebê usando nossas roupinhas
					</div>
				</div>
				<div class="col-md-8 col-sm-12 col-xs-12">
					<div class="row">
						<form name="newsletter" id="newsletter" method="post" class="newsletter-form-wrapper" action="<?php bloginfo('url'); ?>/send/" enctype="multipart/form-data" multipart="" >
							<div class="col-md-3 col-sm-6 col-xs-12">
								<input type="text" name="nome" placeholder="Nome">
							</div>
							<div class="col-md-3 col-sm-6 col-xs-12">
								<input type="text" name="email" placeholder="E-mail" required>
							</div>
							<div class="col-md-3 col-sm-6 col-xs-12">
								<input type="file" multiple name="arquivos[]" id="files" placeholder="Selecionar arquivos" required>
							</div>
							<div class="col-md-3 col-sm-6 col-xs-12">
								<button class="btn btn-custom">Enviar</button>
							</div>
							<div class="col-xs-12">
								<input type="checkbox" name="autorizo" />
								<label class="obs">Marque essa caixa para autorizará a publicação da imagem em nosso instagram</label>
							</div>
						</form>
					</div>
				</div>
			</div>
		</div>
	</section>
	<section id="contato" class="section-d">

		<div class="map">
			<!--
			<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3661.6333682831832!2d-46.3217179850252!3d-23.40147708476249!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x94ce7d80b51caff3%3A0x88de32074a226409!2sR.+Espanha%2C+91+-+Jardim+Rincao%2C+Aruj%C3%A1+-+SP%2C+07432-575!5e0!3m2!1spt-BR!2sbr!4v1512519586515" frameborder="0" style="border:0" allowfullscreen></iframe>-->
			<?php the_field('mapa'); ?>
		</div>



		<section class="content-map">
			<article>
			<h3 class="title">Fale Conosco</h3>
			<?php echo get_field('fale_conosco'); ?>
			</article>
		</section>
	</section>
<?php get_footer(); ?>