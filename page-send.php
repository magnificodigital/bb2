<?php

	$to = get_option('email_envio');
	$nome = $_POST['nome'];
	$email = $_POST['email'];
	$autorizo = $_POST['autorizo'];
	$files = $_FILES['arquivos'];

	if ($autorizo == "on") {
		$autorizo = "Sim";
	} else {
		$autorizo = "Não";
	}

	$msg = "";
	$msg .= "Nome: ".$nome."\n";
	$msg .= "E-mail: ".$email."\n";
	$msg .= "Autoriza a publicação no Instagram: ".$autorizo."\n\n";
	$msg .= "Fotos em anexo :)";

	if ( ! function_exists( 'wp_handle_upload' ) ) {
	    require_once( ABSPATH . 'wp-admin/includes/file.php' );
	}

    $upload_overrides = array( 'test_form' => false );

	foreach ($files['name'] as $key => $value) {

		if ($files['name'][$key]) {
			 $uploadedfile = array(
	            'name'     => $files['name'][$key],
	            'type'     => $files['type'][$key],
	            'tmp_name' => $files['tmp_name'][$key],
	            'error'    => $files['error'][$key],
	            'size'     => $files['size'][$key]
	        );
		}
	}

	$movefile = wp_handle_upload( $uploadedfile , $upload_overrides );
	$url = get_bloginfo('url');
	 
	 
	if ( $movefile ) {

		$attachments = $movefile[ 'file' ];
	    if (wp_mail($to,'Novo envio de fotos', $msg, '', $attachments)) {
	    	echo "<script>alert('Fotos enviadas com sucesso!);</script>'";
	    	echo "<script>window.location.href = '".$url."'</script>";
	    } else {
	    	echo "<script>alert('Falha ao enviar fotos. Tente novamente mais tarde');</script>'";
	    	echo "<script>window.location.href = '".$url."'</script>";
	    }
	   
	} else {
	    echo "<script>alert('Falha.');</script>'";
    	echo "<script>window.location.href = '".$url."'</script>";
	}

?>