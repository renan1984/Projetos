package application;

import java.io.File;

import javafx.application.Application;
import javafx.event.ActionEvent;
import javafx.event.EventHandler;
import javafx.geometry.Insets;
import javafx.geometry.Pos;
import javafx.scene.Scene;
import javafx.scene.control.Button;
import javafx.scene.control.Label;
import javafx.scene.control.PasswordField;
import javafx.scene.control.TextField;
import javafx.scene.layout.GridPane;
import javafx.scene.layout.StackPane;
import javafx.scene.text.Font;
import javafx.scene.text.FontWeight;
import javafx.scene.text.Text;
import javafx.stage.Stage;


public class Main extends Application {



	//Rodoanel
	static Button btnRodoanel = new Button();
	static boolean dirRodoanelExiste = false;
	static Label labelRodoanel = new Label("CSS Rodoanel");

	//Leandro
	static Button btnLeandro = new Button();
	static boolean dirLeandroExiste = false;
	static Label labelLeandro = new Label("CSS Leandro");

	@Override
	public void start(Stage primaryStage) {

		try {

			StackPane root = new StackPane();

			colorirBotao();

			//Rodoanel
			String pasta1 = "rodoanel";

			btnRodoanel.setText("CSS Rodoanel");
			btnRodoanel.setOnAction(new EventHandler<ActionEvent>() {

				@Override
				public void handle(ActionEvent event) {

					File dir = new File("C:\\Apache24\\htdocs\\" + pasta1);
					if(dir.exists() && dir.isDirectory() && dir.getName().equals(pasta1)) {
						File dir2 = new File("c:\\Apache24\\htdocs\\" + pasta1 + "_");
						dir.renameTo(dir2);
						btnRodoanel.setStyle("-fx-background-color: #ff0000");

					} else {
						dir = new File("C:\\Apache24\\htdocs\\" + pasta1 + "_");
						File dir2 = new File("c:\\Apache24\\htdocs\\" + pasta1);
						dir.renameTo(dir2);
						btnRodoanel.setStyle("-fx-background-color: #00ff00");
					}

				}
			});

			root.getChildren().add(btnRodoanel);

			//Leandro
			String pasta2 = "leandro";

			btnLeandro.setText("CSS Leandro");
			btnLeandro.setOnAction(new EventHandler<ActionEvent>() {

				@Override
				public void handle(ActionEvent event) {

					File dir = new File("C:\\Apache24\\htdocs\\" + pasta2);
					if(dir.exists() && dir.isDirectory() && dir.getName().equals(pasta2)) {
						File dir2 = new File("c:\\Apache24\\htdocs\\" + pasta2 + "_");
						dir.renameTo(dir2);
						btnLeandro.setStyle("-fx-background-color: #ff0000");
					} else {
						dir = new File("C:\\Apache24\\htdocs\\" + pasta2 + "_");
						File dir2 = new File("c:\\Apache24\\htdocs\\" + pasta2);
						dir.renameTo(dir2);
						btnLeandro.setStyle("-fx-background-color: #00ff00");
					}

				}
			});

			root.getChildren().add(btnLeandro);


			/* Label label = new Label("a label");
	        label.setText("Desativar CSS Casa");
	        File dir = new File("C:\\Apache24\\htdocs");
	        String[] lista = dir.list();
	        for(int i=0; i<lista.length; ++i) {
	        	System.out.println(lista[i]);
	        }
	    	if(dir.isDirectory() && dir.getName().equals("casa")) {
        		label.setText("Desativar CSS Casa");
        	} else if (dir.isDirectory() && dir.getName().equals("casa_")) {
        		label.setText("Ativar CSS Casa");
        	}
			 */
			//BorderPane root = new BorderPane();

			/*StackPane.setAlignment(label, Pos.BOTTOM_CENTER);
			root.getChildren().add(label);

			Scene scene = new Scene(root,400,400);

			scene.getStylesheets().add(getClass().getResource("application.css").toExternalForm());

			primaryStage.setTitle("Hello World!");
			primaryStage.setScene(scene);
			primaryStage.show();*/

			GridPane grid = new GridPane();
			grid.setAlignment(Pos.CENTER);
			grid.setHgap(10);
			grid.setVgap(10);
			grid.setPadding(new Insets(25, 25, 25, 25));

			Text scenetitle = new Text("CSS Status");
			scenetitle.setFont(Font.font("Tahoma", FontWeight.NORMAL, 20));
			grid.add(scenetitle, 0, 0, 2, 1);

			//Label userName = new Label("User Name:");
			//grid.add(userName, 0, 1);
			//verde #3bcc20
			//azul #0000ff
			//btnRodoanel.setStyle("-fx-text-fill: #4d8015");
			//btnRodoanel.setStyle("-fx-background-color: #ff0000");
			//vermelho #ff0000
			//verde #00ff00
			grid.add(btnRodoanel, 0, 1, 2, 1);

			grid.add(btnLeandro, 0, 2, 2, 1);

			//TextField userTextField = new TextField();
			//grid.add(userTextField, 1, 1);

			//Label pw = new Label("Password:");
			//grid.add(pw, 0, 2);

			//PasswordField pwBox = new PasswordField();
			//grid.add(pwBox, 1, 2);

			Scene scene = new Scene(grid, 300, 275);
			primaryStage.setScene(scene);
			primaryStage.show();

		} catch(Exception e) {
			e.printStackTrace();
		}
	}

	private static void colorirBotao() {

		File dir = null;
		try {
			dir = new File("C:\\Apache24\\htdocs\\rodoanel");
			if(dir.exists()) {
				btnRodoanel.setStyle("-fx-background-color: #00ff00");
			}
		} catch (Exception e) {}

		try {
			dir = new File("C:\\Apache24\\htdocs\\rodoanel_");
			if(dir.exists()) {
				btnRodoanel.setStyle("-fx-background-color: #ff0000");
			}
		} catch (Exception e) {}

		try {
			dir = new File("C:\\Apache24\\htdocs\\leandro");
			if(dir.exists()) {
				btnLeandro.setStyle("-fx-background-color: #00ff00");
			}
		} catch (Exception e) {}

		try {
			dir = new File("C:\\Apache24\\htdocs\\leandro_");
			if(dir.exists()) {
				btnLeandro.setStyle("-fx-background-color: #ff0000");
			}
		} catch (Exception e) {}
	}

	public static boolean verificarPasta(String nomePasta) {

		System.out.println("Checando " + nomePasta);
		File dir = null;

		try {
			dir = new File("C:\\Apache24\\htdocs\\" + nomePasta);
			if(dir.exists()) {
				btnRodoanel.setStyle("-fx-background-color: #00ff00");
			}
			return true;
		} catch (Exception e) {}

		try {
			dir = new File("C:\\Apache24\\htdocs\\" + nomePasta + "_");
			if(dir.exists()) {
				btnRodoanel.setStyle("-fx-background-color: #ff0000");
			}
			return true;
		} catch (Exception e) {}

		/*try {

			if(dir != null && dir.exists()) {

				String[] lista = dir.list();
				for(int i=0; i<lista.length; ++i) {

					//Checando rodoanel
					if(lista[i].equals(nomePasta)) {
						//label.setText("Desativar CSS " + nomePasta);
					} else if (lista[i].equals(nomePasta + "_")) {
						//label.setText("Ativar CSS " + nomePasta);
					}

				}

				return true;
			}

		} catch (Exception  e) {}*/

		return false;
	}

	public static void main(String[] args) {
		launch(args);
	}

}
