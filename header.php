<!DOCTYPE html>
<html <?php language_attributes(); ?>>
<head>

<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=Edge">
<meta name="viewport" content="width=device-width, initial-scale=1">

<?php if (!is_page('lookbook')) : ?>
<link href="https://fonts.googleapis.com/css?family=Lato:300,400,700|Merriweather:300,400,700" rel="stylesheet">
<link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet">
<link href="<?php bloginfo('template_url'); ?>/css/bootstrap.min.css" rel="stylesheet">
<link href="<?php bloginfo('template_url'); ?>/css/swiper.min.css" rel="stylesheet">
<link href="<?php bloginfo('template_url'); ?>/css/iziModal.min.css" rel="stylesheet">
<?php else : ?>
<link href="<?php bloginfo('template_url'); ?>/css/supersized.css" rel="stylesheet">
<link href="<?php bloginfo('template_url'); ?>/css/supersized.shutter.css" rel="stylesheet">
<style type="text/css">
	ul#slide-list {
		z-index: 99999;
	}
</style>
<?php endif; ?>
<link href="<?php bloginfo('template_url'); ?>/css/style-custom.css" rel="stylesheet">

<title><?php bloginfo('name'); ?></title>

<?php wp_head(); ?>

<?php if (is_page('area-do-representante')) : ?>
	<?php the_post(); ?>
	<?php $id = get_the_ID(); ?>
	<?php $fundo = get_field('background_areadorepresentante'); ?>
	<style type="text/css">
		#restricted-area {background-image: url('<?php echo $fundo; ?>');}
	</style>
<?php endif; ?>

<style type="text/css">
	
	/*
		Estilos definidos pelo usuário

		Cores padrão
		Cor1: #f8af42
		Cor2: #816636
		Cor3: #c2d66f
	*/

	<?php $home = get_page_by_path( 'home' ); ?>
	<?php $idhome = $home->ID; ?>

	<?php $cor1 = get_field('cor_1',$idhome); ?>
	<?php $cor2 = get_field('cor_2',$idhome); ?>
	<?php $cor3 = get_field('cor_3',$idhome); ?>

	.btn-custom {background-color: <?php echo $cor1; ?>;}
	#navsite ul li a {color: <?php echo $cor2; ?>;} 
	#navsite ul li.social a {
		border: 2px solid <?php echo $cor3; ?>;
		color: <?php echo $cor3 ?>;
	}

	#navsite ul li a span {border: 1px dashed <?php echo get_field('cor_2'); ?>;}
	.newsletter-text {color: <?php echo get_field('cor_2'); ?>;}
	.newsletter-form-wrapper input[type="text"],
	.newsletter-form-wrapper input[type="file"] {
		border: 2px solid <?php echo $cor3 ?>;
   		color: <?php echo $cor3 ?>;
	}

	.newsletter-form-wrapper input[type="text"]::placeholder,
	.newsletter-form-wrapper input[type="file"]::placeholder  {color: <?php echo $cor3 ?>;}

	.newsletter-form-wrapper input[type="submit"],
	.newsletter-form-wrapper button {
		background: <?php echo $cor3 ?>;
	}

	.section-d .content-map {
		background-color: <?php echo $cor3; ?>;
	}

	.section-d .content-map .title {color: <?php echo $cor3 ?>;}
	.menu-footer li a {color: <?php echo $cor2; ?>;}
	#footer .totop {color: <?php echo $cor3; ?>; border: 2px solid <?php echo $cor3 ; ?>;}
	#footer .copyright {color: <?php echo $cor2; ?>;}
	#togglemenu {color: <?php echo $cor1; ?>;}
	.modal-wrapper p {color: <?php echo $cor2; ?>;}
	.modal #loginform input[type="submit"] {background-color: <?php echo $cor1; ?>;}
	#boxcontato form input {
		border: 1px solid <?php echo $cor3 ?>;
   		color: <?php echo $cor3 ?>;
	}

	#boxcontato form input[type="submit"] {background-color: <?php echo $cor1 ?>;}
	#boxcontato form input::placeholder {color: <?php echo $cor3; ?>;}

</style>

</head>

<body <?php body_class(); the_post();?>>
<?php if (!is_page('lookbook')) : ?>
<nav id="navsite">
	<div class="container">
		<a href="<?php bloginfo('url'); ?>" class="logo" title="<?php bloginfo('name') ?>"><img src="<?php bloginfo('template_url'); ?>/img/logo.svg" width="100"></a>
		<ul>
			<li><a href="#quemsomos" class="scroll">Quem somos</a></li>
			<li><a href="#colecao" class="scroll">Coleção</a></li>
			<li><a href="#contato" class="scroll">Contato</a></li>
			<li><a
				<?php if (!is_user_logged_in()) : ?>
					data-izimodal-open="#areadorepresentante" data-izimodal-transitionin="fadeInDown" href
				<?php else: ?>
					href="<?php bloginfo('url'); ?>/area-do-representante/"
				<?php endif; ?>

				><span>Área do Representante</span></a>
			</li>
			<?php if (is_user_logged_in()) : ?>
			<li><a href="<?php echo wp_logout_url(get_bloginfo('url')); ?>"><span>Sair</span></a></li>
			<?php endif; ?>
			<?php 
				$face = get_option('facebook_icon');
				$insta = get_option('instagram_icon');
			 ?>

			<?php if (isset($face) && !empty($face)) : ?>
			<li class="social"><a href="<?php echo $face; ?>" target="_blank"><i class="fa fa-facebook" aria-hidden="true"></i></a></li>
			<?php endif; ?>
			<?php if (isset($insta) && !empty($insta)) : ?>
			<li class="social"><a href="<?php echo $insta; ?>" target="_blank"><i class="fa fa-instagram" aria-hidden="true"></i></a></li>
			<?php endif; ?>

		</ul>
		<span id="togglemenu"><i class="fa fa-bars" aria-hidden="true"></i></span>
	</div>
</nav>
<main id="content">
<?php endif; ?>