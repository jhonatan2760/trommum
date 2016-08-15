package br.com.muambatrom.Start;

import javax.persistence.EntityManagerFactory;


public class GenerateQuery {
	
	public static void main(String [] args){
		EntityManagerFactory per = null;
		try{
			per =  javax.persistence.Persistence.createEntityManagerFactory("Muambatrom");
		}catch(Exception ex){
			ex.printStackTrace();
		}
		
		per.close();
	}
	
}
