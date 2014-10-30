package br.com.overpowerme.configurations;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;

import br.com.overpowerme.beans.A;
import br.com.overpowerme.interfaces.IA;

@Configuration
public class ConfigA {
	@Bean
	public IA a() {
		return new A();
	}
}