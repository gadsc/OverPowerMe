package br.com.overpowerme.beans;

import br.com.overpowerme.interfaces.IA;

public class A implements IA {

	@Override
	public void sayHello(String text) {
		System.out.println(text);
	}

}