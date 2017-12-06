<?php if (!is_page('lookbook')) : ?>
		<footer id="footer">
			<div class="container">
				<div class="row">
					<div class="col-md-2 col-sm-2 col-xs-12">
						<a href="<?php bloginfo('url'); ?>" class="logo" title="<?php bloginfo('name') ?>"><img src="<?php bloginfo('template_url'); ?>/img/logo.svg" width="100"></a>
					</div>
					<div class="col-md-3 col-sm-3 col-xs-12">
						<ul class="menu-footer">
							<li><a href="#quemsomos" class="scroll">Quem somos</a></li>
							<li><a href="#colecao" class="scroll">Coleção</a></li>
							<li><a href="#contato" class="scroll">Contato</a></li>
						</ul>
					</div>
					<div class="col-md-2 col-sm-2 col-xs-12">
						<a href="#home" class="totop scroll">Home</a>
					</div>
					<div class="col-md-5 col-sm-5 col-xs-12">
						<p class="copyright">© 2017 BB2 - Vestindo seu bebê. All Rights Reserved.</p>
					</div>
				</div>
			</div>
		</footer>
		
	</main>


	<div id="areadorepresentante" class="modal">
		<div class="modal-wrapper">
			<div class="close" data-izimodal-close><i class="fa fa-times-circle-o" aria-hidden="true"></i></div>
			<img src="<?php bloginfo('template_url'); ?>/img/logo.svg" width="100"><br /><br />
			<?php if (is_user_logged_in()) {
				echo "<p>Você já está logado.</p>";
			} else {
				echo '<p>Este conteúdo está protegido por senha. Para vê-lo, digite sua senha abaixo:</p>';
				$login = array(
					'redirect' => get_bloginfo('url').'/area-do-representante/',	
				);
				wp_login_form($login);
			} ?>
		</div>
	</div>

	<div id="boxcontato" class="modal">
		<div class="modal-wrapper">
			<div class="close" data-izimodal-close><i class="fa fa-times-circle-o" aria-hidden="true"></i></div>
			<img src="<?php bloginfo('template_url'); ?>/img/logo.svg" width="100"><br /><br />
			<p>Gostaria de receber todas as novidades e lançamentos antecipadamente?</p>
			<p>Preencha os campos a baixo e receba tudo por e-mail.</p>
			<form name="formcontato">
				<div class="row">
					<div class="col-md-6 col-sm-6 col-xs-12">
						<input type="text" name="nome" placeholder="Nome">
					</div>
					<div class="col-md-6 col-sm-6 col-xs-12">
						<input type="text" name="sobrenome" placeholder="Sobrenome">
					</div>
					<div class="col-md-6 col-sm-6 col-xs-12">
						<input type="text" name="email" placeholder="E-mail">
					</div>
					<div class="col-md-6 col-sm-6 col-xs-12">
						<input type="text" name="telefone" placeholder="Telefone" class="tel">
					</div>
					<div class="col-md-12 col-sm-12 col-xs-12">
						<input type="submit" value="Enviar" class="btn btn-custom">
					</div>
				</div>
			</form>
		</div>
	</div>

	<script type="text/javascript" src="<?php bloginfo('template_url'); ?>/js/jquery.min.js"></script>
	<script type="text/javascript" src="<?php bloginfo('template_url'); ?>/js/jquery.scrollTo.min.js"></script>
	<script type="text/javascript" src="<?php bloginfo('template_url'); ?>/js/swiper.min.js"></script>
	<script type="text/javascript" src="<?php bloginfo('template_url'); ?>/js/iziModal.min.js"></script>
	<script type="text/javascript" src="<?php bloginfo('template_url'); ?>/js/jquery.mask.js"></script>
	<script type="text/javascript" src="<?php bloginfo('template_url'); ?>/js/scripts.js"></script>
	<?php wp_footer(); ?>
<?php endif; ?>
</body>
</html>
