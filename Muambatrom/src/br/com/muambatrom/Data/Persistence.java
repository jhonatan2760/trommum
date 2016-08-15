	package br.com.muambatrom.Data;

import javax.persistence.EntityManagerFactory;

public class Persistence {
	
	public Persistence(){
		EntityManagerFactory factory = javax.persistence.Persistence.createEntityManagerFactory("pesquisa");
	}
	
	
}
