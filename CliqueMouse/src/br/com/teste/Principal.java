package br.com.teste;

import java.awt.AWTException;
import java.awt.MouseInfo;
import java.awt.Point;
import java.awt.PointerInfo;
import java.awt.Robot;
import java.awt.event.InputEvent;

public class Principal {

	private static int xPos = 1;
	private static int yPos = 1;

	public static void main(String[] args) throws AWTException, InterruptedException {

		for (int i = 0; i < 1000; i++) {

			//Guardar posição mouse
			PointerInfo a = MouseInfo.getPointerInfo();
			Point b = a.getLocation();
			int x = (int) b.getX();
			int y = (int) b.getY();

			if(xPos != x && yPos != y) {
				xPos = x;
				yPos = y;
				System.out.println("Usuário Ativo!");

			} else {
				System.out.println("Usuário ausente!");
				clicarMouse();
			}
			
			Thread.sleep(180000);
			//420000 //7 minutos
		}

	}

	private static void clicarMouse() throws AWTException {
		System.out.println("Efetuando clique!");
		Robot robot = new Robot();
		robot.mouseMove(810, 879);
		robot.mousePress(InputEvent.BUTTON1_DOWN_MASK);
		robot.mouseRelease(InputEvent.BUTTON1_DOWN_MASK);
		robot.delay(1000);
		robot.mousePress(InputEvent.BUTTON1_DOWN_MASK);
		robot.mouseRelease(InputEvent.BUTTON1_DOWN_MASK);
		xPos = 810;
		yPos = 879;
	}

}
