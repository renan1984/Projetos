package br.com.teste;

import java.io.BufferedReader;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.InetSocketAddress;
import java.net.Proxy;
import java.net.URL;

import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;

public class Principal {

	private static final Logger logger = LogManager.getLogger(Principal.class);

	public static void main(String[] args) {
		getURL_2();
		//testeURL();
	}

	private static void testeURL() {
		int i = 0;
		try {
			//URL u = new URL("http://10.199.23.21/web/sim");
			URL u = new URL("http://www.uol.com.br");
			System.out.println("Carregando ..." + u);

			//Com proxy
			Proxy proxy = new Proxy(Proxy.Type.HTTP, new InetSocketAddress("aguasdesaopedro.prodesp-sede.local", 80));
			//Proxy proxy = new Proxy(Proxy.Type.HTTP, new InetSocketAddress("10.1.6.91", 80));
			HttpURLConnection con = (HttpURLConnection) u.openConnection(proxy);     
			//Sem proxy
			//HttpURLConnection con = (HttpURLConnection) u.openConnection();

			//con.setConnectTimeout(900000); //15 minutos
			con.setConnectTimeout(1);

			con.connect(); // = (HttpURLConnection) u.openConnection();

			logger.info("["+i+"]" + con.getResponseMessage());
			logger.info("["+i+"]" + con.getResponseCode());


		} catch (Exception e) {
			logger.error("["+i+"]" + e);
		}
	}

	private static void getURL_2() {
		try {
			/*Properties systemSettings = System.getProperties();
		      systemSettings.put("proxySet", "true");
		      systemSettings.put("http.proxyHost", "aaguasdesaopedro.prodesp-sede.local");
		      systemSettings.put("http.proxyPort", "80");*/

			//URL u = new URL("http://maven.apache.org/xsd/archetype-catalog-1.0.0.xsd");
			//URL u = new URL("http://localhost:8080/web/guest/hello");
			//URL u = new URL("https://releases.liferay.com/tools/ide/latest/stable/plugins/");
			//URL u = new URL("http://200.144.28.212/Seguranca/SegUtilitarios.svc?singleWsdl");

			//URL u = new URL("http://10.199.23.21/web/sim");
			//URL u = new URL("http://127.0.0.1:8080/web/guest/recurso");
			URL u = new URL("https://sourceforge.net");

			//HttpURLConnection con = (HttpURLConnection) u.openConnection();
			//sun.misc.BASE64Encoder encoder = new sun.misc.BASE64Encoder();
			//String encodedUserPwd = encoder.encode("domain\\username:password".getBytes());
			//con.setRequestProperty("Proxy-Authorization", "Basic " + encodedUserPwd);
			//con.setRequestMethod("HEAD");

			//Com proxy
			//Proxy proxy = new Proxy(Proxy.Type.HTTP, new InetSocketAddress("aguasdesaopedro.prodesp-sede.local", 80)); //10.1.6.120
			//Proxy proxy = new Proxy(Proxy.Type.HTTP, new InetSocketAddress("10.1.6.120", 80)); //aguasdesaopedro.prodesp-sede.local
			//Proxy proxy = new Proxy(Proxy.Type.HTTP, new InetSocketAddress("10.1.6.91", 80));
			Proxy proxy = new Proxy(Proxy.Type.HTTP, new InetSocketAddress("10.1.6.90", 80));
			HttpURLConnection con = (HttpURLConnection) u.openConnection(proxy);     
			//Sem proxy
			//HttpURLConnection con = (HttpURLConnection) u.openConnection();

			con.setConnectTimeout(3000);
			con.connect(); // = (HttpURLConnection) u.openConnection();

			System.out.println("-> " + con.getResponseMessage());
			System.out.println("-> " + con.getResponseCode());

			InputStreamReader in = new InputStreamReader((InputStream) con.getContent());
			StringBuffer text = new StringBuffer();
			BufferedReader buff = new BufferedReader(in);
			String line;
			do {
				line = buff.readLine();
				text.append(line + "\n");
			} while (line != null);

			System.out.println(text.toString());
			System.out.println("-> " + con.getResponseMessage());
			System.out.println("-> " + con.getResponseCode());

		} catch (Exception e) {
			e.printStackTrace();
			System.out.println(false);
		}
	}

	/*
	servidor: aguasdesaopedro.prodesp-sede.local 
	porta: 80

	servidor: proxy01.prodesp.sp.gov.br
	porta: 80
	 */

	private static void getUrl(){

		String urlName = "http://www.google.com";
		System.out.println("1");
		HttpURLConnection urlConnection = null;
		System.out.println("2");
		try {
			URL url = new java.net.URL(urlName.toString());
			System.out.println("3");
			urlConnection = (java.net.HttpURLConnection) url.openConnection();
			System.out.println("4");
			System.out.println(urlConnection.getContent().toString());
			System.out.println("5");

			/*if (urlConnection.getResponseCode() == java.net.HttpURLConnection.HTTP_OK) {
				//return true;
			} else {
				//return false;

			}*/
			System.out.println("ok!");
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			if (urlConnection != null) {
				urlConnection.disconnect();
			}
		}
	}

}
