<!DOCTYPE html>

<#include init />

<html class="${root_css_class}" dir="<@liferay.language key="lang.dir" />" lang="${w3c_language_id}">

<head>
	<meta charset="utf-8">
	<title>${the_title} - ${company_name}</title>

	<meta content="initial-scale=1.0, width=device-width" name="viewport" />

	<@liferay_util["include"] page=top_head_include />
</head>

<body class="${css_class}">

<@liferay_ui["quick-access"] contentId="#main-content" />

<@liferay_util["include"] page=body_top_include />

<@liferay.control_menu />

<br>
images_folder: ${images_folder}<br>
css_folder: ${css_folder}<br>
javascript_folder: ${javascript_folder}<br>
templates_folder: ${templates_folder}<br>
getPathThemeRoot(): ${themeDisplay.getPathThemeRoot()}<br>
getPathMain(): ${themeDisplay.getPathMain()}<br>
getPathImage(): ${themeDisplay.getPathImage()}<br>
getPortalURL(): ${themeDisplay.getPortalURL()}<br>
getPortalDomain(): ${themeDisplay.getPortalDomain()}<br>
getPathContext(): ${themeDisplay.getPathContext()}<br>
--> Navegação <br>
<@liferay.navigation_menu />
<br>

<div class="container-fluid" id="wrapper" style="border-style: solid; border-color: coral;">

	<#-- HEAD -->
	<header id="banner" role="banner" style="border-style: solid; border-color: red;">
		<div id="heading">
			<h1 class="site-title">
				<a class="${logo_css_class}" href="${site_default_url}" title="<@liferay.language_format arguments="${site_name}" key="go-to-x" />">
					<img alt="${logo_description}" height="${site_logo_height}" src="${site_logo}" width="${site_logo_width}" />
				</a>

				<#if show_site_name>
					<span class="site-name" title="<@liferay.language_format arguments="${site_name}" key="go-to-x" />">
						${site_name}
					</span>
				</#if>
			</h1>
		</div>

		<#if !is_signed_in>
			<a data-redirect="${is_login_redirect_required?string}" href="${sign_in_url}" id="sign-in" rel="nofollow">${sign_in_text}</a>
		</#if>

		<#if has_navigation && is_setup_complete>
			<#-- INCLUIR PAGINA .FTL -->
			<#include "${full_templates_path}/navigation.ftl" />
		</#if>
	</header>
	
	<#-- CONTENT -->
	<section id="content" style="border-style: solid; border-color: blue;">
		<h1 class="hide-accessible">${the_title}</h1>

		<nav id="breadcrumbs">
			<@liferay.breadcrumbs />
		</nav>

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

	<#-- FOOTER -->
	<footer id="footer" role="contentinfo" style="border-style: solid; border-color: green;">
		<p class="powered-by">
			<@liferay.language key="powered-by" /> <a href="http://www.liferay.com" rel="external">Liferay</a>
		</p>
	</footer>

</div>

<@liferay_util["include"] page=body_bottom_include />

<@liferay_util["include"] page=bottom_include />

 <#if has_navigation>
    <#--include "${full_templates_path}/navigation.ftl" /-->
    <#include "${full_templates_path}/sitepages.ftl" />
</#if>
</body>

</html>