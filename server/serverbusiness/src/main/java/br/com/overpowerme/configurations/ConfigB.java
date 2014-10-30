package br.com.overpowerme.configurations;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.context.annotation.Import;

import br.com.overpowerme.beans.B;
import br.com.overpowerme.interfaces.IA;

@Configuration
@Import(ConfigA.class)
public class ConfigB {
	@Bean(initMethod = "init", destroyMethod = "cleanup")
	public IA b() {
		return new B();
	}
}