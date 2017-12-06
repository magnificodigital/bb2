<?php 

remove_role('subscriber');
remove_role('author');
remove_role('editor');
remove_role('contributor');


add_theme_support('post-thumbnails');
add_image_size('lookbook-cover',400,400, true);

add_role(
    'cliente',
    __('Cliente'),
    array(
        'read'         => false,
        'upload_files' => false,
        'delete_posts' => false,
		'edit_posts'   => false
    )
);


function verifica_login_cliente() {
	$tags = get_page_by_path( 'area-do-representante' );
	$idtags = $tags->ID;
	global $post;
	if ( is_user_logged_in() ) {
		$user_id = get_current_user_id();
		$user_meta = get_userdata($user_id);
		$user_roles = $user_meta->roles;
		foreach ($user_roles as $role) {
			if ($role == 'cliente') {
				show_admin_bar(false);
				remove_action('wp_head', '_admin_bar_bump_cb');
			}
		}
	}
}
add_action('get_header', 'verifica_login_cliente');

/*
register_post_type('tag',
	array(
		'labels' => array(
			'name' => __('Tags'),
			'singular_name' => __('Tag'),
			'menu_name' => 'Tags',
			'all_items' => 'Todas as Tags'
		),
	'public' => true,
	'rewrite' => array('slug' => 'tag', 'with_front' => false),
	'has_archive' => false,		 
	'supports' => array('title'),
	'menu_icon' => 'dashicons-format-image'
	)
); */

register_post_type('lookbook',
	array(
		'labels' => array(
			'name' => __('Lookbooks'),
			'singular_name' => __('Lookbook'),
			'menu_name' => 'Lookbooks',
			'all_items' => 'Todas os Lookbooks'
		),
	'public' => true,
	'rewrite' => array('slug' => 'lookbook', 'with_front' => false),
	'has_archive' => false,		 
	'supports' => array('title','thumbnail'),
	'menu_icon' => 'dashicons-admin-page'
	)
);

function verifica_login() {
	if (is_page('area-do-representante')) {
		if (!is_user_logged_in()) {
			$url = get_bloginfo('url').'/#areadorepresentante';
			wp_redirect($url);
			exit;
		}
	}
}
add_action('get_header','verifica_login');


add_action('admin_init', 'my_general_section'); 
function my_general_section() {  

    add_settings_section(  
        'enderecos', 
        'Endereços', 
        '', 
        'general' 
    );

    add_settings_field( 
        'facebook_icon', 
        'Endereço do facebook', 
        'my_textbox_callback', 
        'general', 
        'enderecos',
        array( 
            'facebook_icon' 
        )  
    ); 

    add_settings_field( 
        'instagram_icon', 
        'Endereço do instagram', 
        'my_textbox_callback', 
        'general', 
        'enderecos', 
        array(
            'instagram_icon' 
        )  
    );

    add_settings_field( 
        'email_envio', 
        'Email para recebimento', 
        'my_textbox_callback', 
        'general', 
        'enderecos', 
        array(
            'email_envio' 
        )  
    );

    register_setting('general','facebook_icon', 'esc_attr');
    register_setting('general','instagram_icon', 'esc_attr');
    register_setting('general','email_envio', 'esc_attr');
}

function my_textbox_callback($args) {
    $option = get_option($args[0]);
    echo '<input type="text" id="'. $args[0] .'" name="'. $args[0] .'" value="' . $option . '" class="regular-text" />';
}

//Troca o logo
function my_login_logo() { ?>
	<style type="text/css">
		body.login div#login h1 a {
		    background-image: url('<?php bloginfo('template_url') ?>/img/logo.svg');
		    width: 150px;
        	height: 91px;
		    background-size: 100%;
		}
   </style>
<?php }
add_action( 'login_enqueue_scripts', 'my_login_logo'); 


?>