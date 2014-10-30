package br.com.overpowerme.beans;

import br.com.overpowerme.interfaces.IA;

public class B implements IA {
	public void init() {
		// initialization logic
		System.out.println("Initializing..");
	}

	public void cleanup() {
		// destruction logic
		System.out.println("Destroying..");
	}

	@Override
	public void sayHello(String text) {
		System.out.println("B: " + text);
	}
}
