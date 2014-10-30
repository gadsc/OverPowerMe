package br.com.overpowerme.teste;

import org.springframework.context.ApplicationContext;
import org.springframework.context.annotation.AnnotationConfigApplicationContext;

import br.com.overpowerme.beans.A;
import br.com.overpowerme.beans.B;
import br.com.overpowerme.configurations.ConfigB;
import br.com.overpowerme.interfaces.IA;

public class TesteConfig {

	public static void main(String[] args) {
		ApplicationContext ctx = new AnnotationConfigApplicationContext(
				ConfigB.class);
		// now both beans A and B will be available...
		IA a = ctx.getBean(A.class);
		IA b = ctx.getBean(B.class);
		a.sayHello("Hello A!");
		b.sayHello("Hello B");
	}

}
