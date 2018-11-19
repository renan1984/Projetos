<!DOCTYPE html>

<!-- theme v1.1 -->

<#include init />

<html class="${root_css_class}" dir="<@liferay.language key="lang.dir" />" lang="${w3c_language_id}">


<head>
	<meta charset="utf-8">
	<!-- <title>${the_title} - ${company_name}</title> -->
	<title>${site_name}</title>

	<meta content="initial-scale=1.0, width=device-width" name="viewport" />

	<@liferay_util["include"] page=top_head_include />
	
</head>

<body class="${css_class}">

<@liferay_ui["quick-access"] contentId="#main-content" />

<@liferay_util["include"] page=body_top_include />

<@liferay.control_menu />

<div class="container-fluid" id="wrapper"> <!-- style="padding: 0 0 0 0; width: 100%; margin: -20px 0 0 0;" -->
	<header id="banner" role="banner" style="background-color: lightgray;">
		<div id="heading">
			<h1 class="site-title">
				<a class="${logo_css_class}" href="${site_default_url}" title="<@liferay.language_format arguments="${site_name}" key="go-to-x" />">
					<img alt="${logo_description}" height="${site_logo_height}" src="${site_logo}" width="${site_logo_width}" />
				</a>

				<#if show_site_name>
					<a href="http://localhost/web/portal-sim/home">
						<span class="site-name" title="<@liferay.language_format arguments="${site_name}" key="go-to-x"/>" style="color: black;">
							${site_name}
						</span>
					</a>
				</#if>
			</h1>
		</div>

		<!--
		<#if !is_signed_in>
			<a data-redirect="${is_login_redirect_required?string}" href="${sign_in_url}" id="sign-in" rel="nofollow">${sign_in_text}</a>
		</#if>
		-->

		<!--
		<#if has_navigation && is_setup_complete>
			<#include "${full_templates_path}/navigation.ftl" />
		</#if>
		-->
	</header>

	<section id="content">
		<h1 class="hide-accessible">${the_title}</h1>

		<!--
		<nav id="breadcrumbs">
			<@liferay.breadcrumbs />
		</nav>
		-->

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
		<!--
		<p class="powered-by">
			<@liferay.language key="powered-by" /> <a href="http://www.liferay.com" rel="external">Liferay</a>
		</p>
		-->
	</footer>
</div>

<@liferay_util["include"] page=body_bottom_include />

<@liferay_util["include"] page=bottom_include />

</body>

</html>