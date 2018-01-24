<?php get_header(); ?>
	<section id="restricted-area">
		<div class="container">

			
			<?php
			$args = array(
				'orderby' => 'date',
				'order' => 'DESC',
				'post_type' => 'lookbook',
				'showposts' => 999,
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
				$img1 = get_field('imagem_1',get_the_ID());
				$img2 = get_field('imagem_2',get_the_ID());
				$img3 = get_field('imagem_3',get_the_ID());
				$pdf1 = get_field('pdf_1',get_the_ID());
				$pdf2 = get_field('pdf_2',get_the_ID());
				$pdf3 = get_field('pdf_3',get_the_ID());

				if (isset($pdf1) && !empty($pdf1) && isset($pdf2) && !empty($pdf2) && isset($pdf3) && !empty($pdf3)) {
					$class = "col-md-4 col-sm-4 col-xs-12";
				} elseif (isset($pdf1) && !empty($pdf1) && !isset($pdf2) && empty($pdf2) && !isset($pdf3) && empty($pdf3)) {
					$class = "col-md-12 col-sm-12 col-xs-12";
				} else {
					$class = "col-md-6 col-sm-6 col-xs-12";
				}

			?>

				<header><h1 class="title">Coleção <span><?php the_title(); ?></span></h1></header>
				<div class="row">

					<?php if (isset($pdf1) && !empty($pdf1)) : ?>
					<div class="<?php echo $class; ?>">
						<div class="lookbook-wrapper">
							<div class="lookbook-item">
								<div class="lookbook-item-thumbnail" style="background-image: url('<?php echo $img1; ?>');"></div>
								<div class="lookbook-item-title"><?php echo $titulo1; ?></div>
								<?php
									if (isset($pdf1) && !empty($pdf1)) : ?>
								<a href="<?php echo $pdf1; ?>" class="lookbook-item-button btn btn-custom" target="_blank">Baixar</a>
								<?php endif; ?>
								<p class="desc"><?php echo $desc1; ?></p>
							</div>
						</div>
					</div>
					<?php endif; ?>

					<?php if (isset($pdf2) && !empty($pdf2)) : ?>
					<div class="<?php echo $class; ?>">
						<div class="lookbook-wrapper">
							<div class="lookbook-item">
								<div class="lookbook-item-thumbnail" style="background-image: url('<?php echo $img2; ?>');"></div>
								<div class="lookbook-item-title"><?php echo $titulo2; ?></div>
								<?php
									if (isset($pdf2) && !empty($pdf2)) : ?>
								<a href="<?php echo $pdf2; ?>" class="lookbook-item-button btn btn-custom" target="_blank">Baixar</a>
								<?php endif; ?>
								<p class="desc"><?php echo $desc2; ?></p>
							</div>
						</div>
					</div>
					<?php endif; ?>

					<?php if (isset($pdf3) && !empty($pdf3)) : ?>
					<div class="<?php echo $class; ?>">
						<div class="lookbook-wrapper">
							<div class="lookbook-item">
								<div class="lookbook-item-thumbnail" style="background-image: url('<?php echo $img3; ?>');"></div>
								<div class="lookbook-item-title"><?php echo $titulo3; ?></div>
								<?php
									if (isset($pdf3) && !empty($pdf3)) : ?>
								<a href="<?php echo $pdf3; ?>" class="lookbook-item-button btn btn-custom" target="_blank">Baixar</a>
								<?php endif; ?>
								<p class="desc"><?php echo $desc3; ?></p>
							</div>
						</div>
					</div>
					<?php endif; ?>

					<?php if (empty($pdf1) && empty($pdf2) && empty($pdf3)) : ?>
						<p style="color: #FFF; display: block; text-align: center;">Nenhum arquivo disponível para download.</p>
					<?php endif; ?>

				</div>

			<?php endwhile; endif; wp_reset_query(); ?>

		</div>
	</section>
<?php get_footer(); ?>