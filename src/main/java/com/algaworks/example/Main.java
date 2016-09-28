package com.algaworks.example;

import java.util.HashMap;
import java.util.Map;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;

import org.flywaydb.core.Flyway;

import com.algaworks.example.model.Carro;

public class Main {

	private static final String URL = "jdbc:mysql://localhost/exemplo-many-to-many";
	private static final String USUARIO = "root";
	private static final String SENHA = "root";
	
	
	public static void main(String[] args) {
		migrar();
		EntityManagerFactory factory = criarEntityManagerFactory();
		
		EntityManager manager = factory.createEntityManager();
		manager.getTransaction().begin();
		
		Carro carro = manager.find(Carro.class, 3L);
		System.out.println(">>> Total de acessorios: " + carro.getAcessorios().size());
		carro.getAcessorios().remove(0);
		
		manager.getTransaction().commit();
		manager.close();
		factory.close();
	}

	private static EntityManagerFactory criarEntityManagerFactory() {
		Map<String, String> prop = new HashMap<>();
		prop.put("javax.persistence.jdbc.url", URL);
		prop.put("javax.persistence.jdbc.user", USUARIO);
		prop.put("javax.persistence.jdbc.password", SENHA);
		EntityManagerFactory factory = Persistence.createEntityManagerFactory("exemplo-many-to-many", prop);
		return factory;
	}

	private static void migrar() {
		Flyway flyway = new Flyway();
		flyway.setDataSource(URL, USUARIO, SENHA);
		flyway.migrate();
	}
	
}
