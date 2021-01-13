<!DOCTYPE html>

<#include init />

<html class="${root_css_class}" dir="<@liferay.language key="lang.dir" />" lang="${w3c_language_id}">

<head>
	<title>${the_title} - ${company_name}</title>

	<meta content="initial-scale=1.0, width=device-width" name="viewport" />

	<@liferay_util["include"] page=top_head_include />
	
	<!-- CSS here -->
    <link rel="stylesheet" href="http://localhost/rodoanel/assets/css/bootstrap.min.css">
    <link rel="stylesheet" href="http://localhost/rodoanel/assets/css/owl.carousel.min.css">
    <link rel="stylesheet" href="http://localhost/rodoanel/assets/css/slicknav.css">
    <link rel="stylesheet" href="http://localhost/rodoanel/assets/css/animate.min.css">
    <link rel="stylesheet" href="http://localhost/rodoanel/assets/css/hamburgers.min.css">
    <link rel="stylesheet" href="http://localhost/rodoanel/assets/css/magnific-popup.css">
    <link rel="stylesheet" href="http://localhost/rodoanel/assets/css/fontawesome-all.min.css">
    <link rel="stylesheet" href="http://localhost/rodoanel/assets/css/themify-icons.css">
    <link rel="stylesheet" href="http://localhost/rodoanel/assets/css/themify-icons.css">
    <link rel="stylesheet" href="http://localhost/rodoanel/assets/css/slick.css">
    <link rel="stylesheet" href="http://localhost/rodoanel/assets/css/nice-select.css">
    <link rel="stylesheet" href="http://localhost/rodoanel/assets/css/style.css">

</head>

<body class="${css_class}">

	<section class="govsph-topo">

        <link rel="stylesheet" type="text/css" href="https://saopaulo.sp.gov.br/barra-govsp/css/cabecalho-secretarias.css">
        <link rel="stylesheet" type="text/css" href="https://saopaulo.sp.gov.br/barra-govsp/css/contraste.css">

        <div id="govsph-topbarGlobal" class="blu-e">

            <div id="topbarGlobal">
                <ul class="govsph-links-governo">
                    <li class="govsph-link-portal"><a class="govsph-links-governo" href="http://www.saopaulo.sp.gov.br" target="_blank">saopaulo.sp.gov.br</a></li>
                    <li><a class="govsph-links-governo" href="http://www.cidadao.sp.gov.br" target="_blank">Cidadão
                            SP</a></li>
                </ul>
                <div id="govsph-redes-sociais">

                    <ul class="govsph-links-redes-sociais">
                        <li><a class="govsph-social" href="https://www.facebook.com/governosp/" target="_blank"><img class="govsph-icon-social" src="https://saopaulo.sp.gov.br/barra-govsp/img/facebook.png" alt="Facebook Governo de São Paulo"></a></li>
                        <li><a class="govsph-social" href="https://www.twitter.com/governosp/" target="_blank"><img class="govsph-icon-social" src="https://saopaulo.sp.gov.br/barra-govsp/img/twitter.png" alt="Facebook Governo de São Paulo"></a></li>
                        <li><a class="govsph-social" href="https://www.instagram.com/governosp/" target="_blank"><img class="govsph-icon-social" src="https://saopaulo.sp.gov.br/barra-govsp/img/insta.png" alt="Facebook Governo de São Paulo"></a></li>
                        <li><a class="govsph-social" href="https://www.flickr.com/governosp/" target="_blank"><img class="govsph-icon-social" src="https://saopaulo.sp.gov.br/barra-govsp/img/flickr.png" alt="Facebook Governo de São Paulo"></a></li>
                        <li><a class="govsph-social" href="https://www.youtube.com/governosp/" target="_blank"><img class="govsph-icon-social" src="https://saopaulo.sp.gov.br/barra-govsp/img/youtube.png" alt="Facebook Governo de São Paulo"></a></li>
                        <li><a class="govsph-social" href="https://www.issuu.com/governosp/" target="_blank"><img class="govsph-icon-social" src="https://saopaulo.sp.gov.br/barra-govsp/img/issuu.png" alt="Facebook Governo de São Paulo"></a></li>
                        <li><a class="govsph-social" href="https://www.linkedin.com/company/governosp/" target="_blank"><img class="govsph-icon-social" src="https://saopaulo.sp.gov.br/barra-govsp/img/linkedin.png" alt="Facebook Governo de São Paulo"></a></li>
                        <li>
                            <p class="govsph-social">/governosp</p>
                        </li>
                        <a class="govsp-acessibilidade" href="javascript:mudaTamanho('body', 1);"><img class="govsp-acessibilidade" src="https://saopaulo.sp.gov.br/barra-govsp/img/big-font.png" alt="Aumentar Fonte"></a>
                        <a class="govsp-acessibilidade" href="javascript:mudaTamanho('body', -1);"><img class="govsp-acessibilidade" src="https://saopaulo.sp.gov.br/barra-govsp/img/small-font.png" alt="Diminuir Fonte"></a>
                        <a class="govsp-acessibilidade" href="#" id="altocontraste" accesskey="3" onclick="window.toggleContrast()" onkeydown="window.toggleContrast()"><img class="govsp-acessibilidade" src="https://saopaulo.sp.gov.br/barra-govsp/img/contrast.png" alt="Contraste"></a>
                        <a class="govsp-acessibilidade" href="http://www.saopaulo.sp.gov.br/fale-conosco/comunicar-erros/" title="Comunicar Erros" target="_blank"><img class="govsp-acessibilidade" src="https://saopaulo.sp.gov.br/barra-govsp/img/error-report.png"></a>
                    </ul>
                </div>

                <div id="topbarLink" class="govsph-blue">

                    <div class="govsph-portal">
                        <!-- Insira na Tag abaixo o Nome da Secretaria-->
                        <p class="govsph-pasta govsph-oneline">Governo</p>

                    </div>
                </div>
                <div class="govsph-logo"></div>
            </div>
            <div class="govsph-kebab">
                <figure></figure>
                <figure class="govsph-middle"></figure>
                <p class="govsph-cross"></p>
                <figure></figure>
                <ul class="govsph-dropdown" id="govsp-kebab">
                    <ul class="govsph-links-esq">
                        <li class="govsph-link-portal"><a class="govsph-links-governo" href="http://www.saopaulo.sp.gov.br" target="_blank">saopaulo.sp.gov.br</a></li>
                        <li><a class="govsph-links-governo" href="http://www.cidadao.sp.gov.br" target="_blank">Cidadão SP</a></li>
                    </ul>
                    <li><a class="govsph-social" href="https://www.facebook.com/governosp/" target="_blank"><img class="govsph-icon-social" src="https://saopaulo.sp.gov.br/barra-govsp/img/facebook.png" alt="Facebook Governo de São Paulo"></a></li>
                    <li><a class="govsph-social" href="https://www.twitter.com/governosp/" target="_blank"><img class="govsph-icon-social" src="https://saopaulo.sp.gov.br/barra-govsp/img/twitter.png" alt="Facebook Governo de São Paulo"></a></li>
                    <li><a class="govsph-social" href="https://www.instagram.com/governosp/" target="_blank"><img class="govsph-icon-social" src="https://saopaulo.sp.gov.br/barra-govsp/img/insta.png" alt="Facebook Governo de São Paulo"></a></li>
                    <li><a class="govsph-social" href="https://www.flickr.com/governosp/" target="_blank"><img class="govsph-icon-social" src="https://saopaulo.sp.gov.br/barra-govsp/img/flickr.png" alt="Facebook Governo de São Paulo"></a></li>
                    <li><a class="govsph-social" href="https://www.youtube.com/governosp/" target="_blank"><img class="govsph-icon-social" src="https://saopaulo.sp.gov.br/barra-govsp/img/youtube.png" alt="Facebook Governo de São Paulo"></a></li>
                    <li><a class="govsph-social" href="https://www.issuu.com/governosp/" target="_blank"><img class="govsph-icon-social" src="https://saopaulo.sp.gov.br/barra-govsp/img/issuu.png" alt="Facebook Governo de São Paulo"></a></li>
                    <li><a class="govsph-social" href="https://www.linkedin.com/company/governosp/" target="_blank"><img class="govsph-icon-social" src="https://saopaulo.sp.gov.br/barra-govsp/img/linkedin.png" alt="Facebook Governo de São Paulo"></a></li>
                    <li>
                        <p class="govsph-social">/governosp</p>
                    </li>
                </ul>
            </div>
        </div>
        <script src="https://saopaulo.sp.gov.br/barra-govsp/js/script-cabecalho.js"></script>
        <script src="https://saopaulo.sp.gov.br/barra-govsp/js/script-contrast.js"></script>
        <script src="https://saopaulo.sp.gov.br/barra-govsp/js/script-tamanho-fonte.js"></script>
        <script src="https://saopaulo.sp.gov.br/barra-govsp/js/script-scroll.js"></script>
    </section>

	<@liferay_ui["quick-access"] contentId="#main-content" />
	
	<@liferay_util["include"] page=body_top_include />
	
	<@liferay.control_menu />
	
	<div class="container-fluid" id="wrapper">
		<section id="content">
			<h1 class="hide-accessible">${the_title}</h1>
	
			<#if selectable>
				<@liferay_util["include"] page=content_include />
			<#else>
				${portletDisplay.recycle()}
	
				${portletDisplay.setTitle(the_title)}
	
				<@liferay_theme["wrap-portlet"] page="portlet.ftl">
					<@liferay_util["include"] page=content_include />
				</@>
			</#if>
		</section>
	
		<footer id="footer" role="contentinfo">

			<section id="govsp-rodape">
                <link rel="stylesheet" type="text/css" href="https://saopaulo.sp.gov.br/barra-govsp/css/rodape-sp.css?v2.1">
                <div id="govsp-footerGlobal">
                    <ul class="govsph-links">
                        <div id="govsp-links-footer">
                            <li class="govsp-link-rodape">
                            	<a class="govsp-links-footer" href="https://www.ouvidoria.sp.gov.br/Portal/Default.aspx" target="_blank">Ouvidoria</a>
                            </li>
                            <li class="govsp-link-rodape">
                            	<a class="govsp-links-footer" href="http://www.transparencia.sp.gov.br/" target="_blank">Transparência</a>
                            </li>
                            <li class="govsp-link-rodape">
                            	<a class="govsp-links-footer no-border" href="http://www.sic.sp.gov.br/" target="_blank">SIC</a>
                            </li>
                        </div>
                        <li class="govsp-link-rodape"><img class="govsph-logo-rodape" src="https://saopaulo.sp.gov.br/barra-govsp/img/logo-rodape.png" /></li>
                        <li class="govsp-link-rodape"><img class="govsph-logo-rodape logo-negativo" src="https://saopaulo.sp.gov.br/barra-govsp/img/logo-rodape-negativo.png" /></li>
                    </ul>
                </div>
                <div id="govsp-footer-bottom" class="govsp-azul"></div>
            </section>

		</footer>
	</div>
	
	<@liferay_util["include"] page=body_bottom_include />
	
	<@liferay_util["include"] page=bottom_include />

	<!-- JS here -->

    <script src="http://localhost/rodoanel/assets/js/vendor/modernizr-3.5.0.min.js"></script>
    <!-- Jquery, Popper, Bootstrap -->
    <script src="http://localhost/rodoanel/assets/js/vendor/jquery-1.12.4.min.js"></script>
    <script src="http://localhost/rodoanel/assets/js/popper.min.js"></script>
    <script src="http://localhost/rodoanel/assets/js/bootstrap.min.js"></script>
    <!-- Jquery Mobile Menu -->
    <script src="http://localhost/rodoanel/assets/js/jquery.slicknav.min.js"></script>

    <!-- Jquery Slick , Owl-Carousel Plugins -->
    <script src="http://localhost/rodoanel/assets/js/owl.carousel.min.js"></script>
    <script src="http://localhost/rodoanel/assets/js/slick.min.js"></script>
    <!-- One Page, Animated-HeadLin -->
    <script src="http://localhost/rodoanel/assets/js/wow.min.js"></script>
    <script src="http://localhost/rodoanel/assets/js/animated.headline.js"></script>
    <script src="http://localhost/rodoanel/assets/js/jquery.magnific-popup.js"></script>

    <!-- Date Picker -->
    <script src="http://localhost/rodoanel/assets/js/gijgo.min.js"></script>
    <!-- Nice-select, sticky -->
    <script src="http://localhost/rodoanel/assets/js/jquery.nice-select.min.js"></script>
    <script src="http://localhost/rodoanel/assets/js/jquery.sticky.js"></script>
    <!-- Progress -->
    <script src="http://localhost/rodoanel/assets/js/jquery.barfiller.js"></script>

    <!-- counter , waypoint,Hover Direction -->
    <script src="http://localhost/rodoanel/assets/js/jquery.counterup.min.js"></script>
    <script src="http://localhost/rodoanel/assets/js/waypoints.min.js"></script>
    <script src="http://localhost/rodoanel/assets/js/jquery.countdown.min.js"></script>
    <script src="http://localhost/rodoanel/assets/js/hover-direction-snake.min.js"></script>

    <!-- contact js -->
    <script src="http://localhost/rodoanel/assets/js/contact.js"></script>
    <script src="http://localhost/rodoanel/assets/js/jquery.form.js"></script>
    <script src="http://localhost/rodoanel/assets/js/jquery.validate.min.js"></script>
    <script src="http://localhost/rodoanel/assets/js/mail-script.js"></script>
    <script src="http://localhost/rodoanel/assets/js/jquery.ajaxchimp.min.js"></script>

    <!-- Jquery Plugins, main Jquery -->
    <script src="http://localhost/rodoanel/assets/js/plugins.js"></script>
    <script src="http://localhost/rodoanel/assets/js/main.js"></script>

</body>

</html>