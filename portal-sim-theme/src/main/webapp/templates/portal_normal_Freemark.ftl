<!DOCTYPE html>

<#include init />

<html class="${root_css_class}" dir="<@liferay.language key="lang.dir" />" lang="${w3c_language_id}" aqui="teste">

<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta content="initial-scale=1.0, width=device-width" name="viewport" />
	
	<title>${the_title} - ${company_name}</title>

	<link rel="stylesheet" type="text/css" href="${css}/bootstrap.css">
	<link rel="stylesheet" type="text/css" href="${css}/estilo.css">

	<script type="text/javascript" src="${js}/bootstrap.js"></script>
	<script type="text/javascript" src="${js}/jquery.min.js"></script>

	<@liferay_util["include"] page=top_head_include />
</head>

<body class="${css_class}">

<@liferay_ui["quick-access"] contentId="#main-content" />

<@liferay_util["include"] page=body_top_include />

<@liferay.control_menu />

<br>
IMAGES: ${images_folder}<br>
getPathThemeTemplates(): ${images_folder2}<br>
getPathThemeRoot(): ${themeDisplay.getPathThemeRoot()}<br>
getPathMain(): ${themeDisplay.getPathMain()}<br>
getPathImage(): ${themeDisplay.getPathImage()}<br>
getPortalURL(): ${themeDisplay.getPortalURL()}<br>
getPortalDomain(): ${themeDisplay.getPortalDomain()}<br>
getPathContext(): ${themeDisplay.getPathContext()}<br>
logotipo.png(): <img src="${img}/logotipo.png"><br>
<br>

<div id="principal" class="bgParallax" data-speed="15">

 			<image src="${img}/thumbnail.png" class="someClass "/> 

			<div class="container">
				<div class="col-sm-8 logo">
					  <img src="${img}/bg-masthead.jpg" alt="SIM - Sistema Integrado de Multas" class="img-responsive">
					  <h2><em>Economia e eficiência na gestão do ciclo de vida das multas de seu município </em></h2>	
				</div>
				<div class="col-sm-4">
					<!-- Login -->
					<div class="well login">                        
						<h3 class="h3"><strong>Faça o seu Login</strong></h3>
						<form action="#">                            
							<div class="form-group">
								<label for="usuario" class="label">CPF</label>
								<input type="text" class="input form-control" id="usuario" placeholder="Digite o seu CPF (sem pontos ou espaços)">
							</div>
							<div class="form-group">
								<label for="senha" class="label">Senha</label>
								<input type="password" class="input form-control" id="senha" placeholder="Senha">
							</div>
							<button type="submit" class="btn btn-primary">Entrar</button>   
							<button type="button" class="btn btn-link">Não é cadastrado? Clique Aqui</button
						</form>                          
					</div>	

				</div>

			</div>   
		</div>		
		
		<div class="global">

            <section id="avisos">
                <div class="container">
                    <div class="row">
                        <div class="col-xs-12 col-sm-6 col-md-6 col-lg-6">
                            <div class="painel podem">
                                <div class="titulo">
                                    <h2>Quais serviços eu posso realizar?</h2>
                                </div>
                                <div class="conteudo">
                                    <ul>
                                        <li><span>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas accumsan sapien ipsum, nec malesuada turpis condimentum sit amet. Ut eget arcu mi.  </span></li>
                                        <li><span>Quisque tristique fringilla ultricies. Maecenas accumsan, nisi quis ultricies posuere, turpis quam mattis elit, et convallis nisl magna eu velit.</span></li>
                                        <li><span>Cras quis fermentum neque, ut vulputate mauris. Nulla ut nunc ut lorem vulputate fringilla. Morbi maximus lorem magna, sit amet congue lorem vulputate quis. Nulla eget efficitur nulla. Vestibulum tortor enim, vehicula at vestibulum eget, laoreet quis ligula. Quisque rhoncus tortor a feugiat ultrices.</span></li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                        <div class="col-xs-12 col-sm-6 col-md-6 col-lg-6">
                            <div class="painel nao_podem">
                                <div class="titulo">
                                    <h2>O que eu NÃO POSSO fazer no Portal?</h2>
                                </div>
                                <div class="conteudo">
                                    <ul>
                                        <li><span>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas accumsan sapien ipsum, nec malesuada turpis condimentum sit amet. Ut eget arcu mi.  </span></li>
                                        <li><span>Quisque tristique fringilla ultricies. Maecenas accumsan, nisi quis ultricies posuere, turpis quam mattis elit, et convallis nisl magna eu velit.</span></li>
                                        <li><span>Cras quis fermentum neque, ut vulputate mauris. Nulla ut nunc ut lorem vulputate fringilla. Morbi maximus lorem magna, sit amet congue lorem vulputate quis. Nulla eget efficitur nulla. Vestibulum tortor enim, vehicula at vestibulum eget, laoreet quis ligula. Quisque rhoncus tortor a feugiat ultrices.</span></li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>

                    <div id="consulta-prefs">
                        <div class="row">
                            <div class="col-xs-12 col-sm-12">
                                <h3>Consulte aqui se a prefeitura de sua cidade já aderiu ao SIM:</h3>
                            </div>
							<form class="form-horizontal">
								<div class="col-xs-8 col-sm-10">
									<select class="form-control">
									  <option>------------------------------</option>
									  <option>Araraquara</option>
									  <option>Bragança Paulista</option>
									  <option>Campinas</option>
									  <option>Diadema</option>
									</select>
								</div>
								<div class="col-xs-4 col-sm-2 text-center">
									<button type="submit" class="btn btn-primary btn-block">Enviar</button>
								</div>	
							</form>	
						</div>
                    </div>
                </div>
            </section>
        
        </div>
   
        <div class="footer">
            <div class="container">
            	<p class="text-muted"><a href="http://www.prodesp.sp.gov.br/" target="_blank">Prodesp - Tecnologia da Informação</a></p>
            </div>
        </div>

<@liferay_util["include"] page=body_bottom_include />

<@liferay_util["include"] page=bottom_include />

</body>

</html>