package br.com.muambatrom.Data;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class Databasehandler {

	private final static String url = "jdbc:mysql://exemplo222222.mysql.uhserver.com/exemplo222222";
	private final static String login = "loader222";
	private final static String senha = "jhonatan@r7.com";
	
	public static Connection getConnection(){
		Connection conn = null;
			try {
				DriverManager.registerDriver(new com.mysql.jdbc.Driver());
				conn = DriverManager.getConnection(url, login, senha);
				System.out.println("Conectando ao servidor de banco de dados..");
				return conn;
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} 
		
		return conn;
	}
	
	public static void main(String [] args){
		Databasehandler data = new Databasehandler();
		data.getConnection();
	}
}
