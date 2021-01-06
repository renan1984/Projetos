package br.com.teste;

import java.awt.event.KeyAdapter;
import java.awt.event.KeyEvent;

import javax.swing.JFrame;
import javax.swing.JTextField;

public class TeclaApertada {

	public static void main(String[] args) {
		
		JTextField component = new JTextField();
	    component.addKeyListener(new MyKeyListener());

	    JFrame f = new JFrame();

	    f.add(component);
	    f.setSize(300, 300);
	    f.setVisible(true);
	}

}

class MyKeyListener extends KeyAdapter {
	  public void keyPressed(KeyEvent evt) {

	      System.out.println("Check for key codes: " + evt.getKeyCode());

	  }
	}
