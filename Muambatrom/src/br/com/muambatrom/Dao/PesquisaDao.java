package br.com.muambatrom.Dao;

import java.util.Date;

import br.com.muambatrom.Data.Databasehandler;
import br.com.muambatrom.Engine.Persistent;
import br.com.muambatrom.Engine.SearchEngine;

public class PesquisaDao implements Persistent {
	
	private SearchEngine engine;
	
	public PesquisaDao(SearchEngine engine){
		this.engine = engine;
	}

	@Override
	public boolean save() {
		java.sql.Connection conn = null;
	try{
		conn = Databasehandler.getConnection();
		return conn.createStatement().execute(" insert into pesquisa values ("+(int) (Math.random() * 9999) + 1+",'"+engine.getSearchKey()+" - "+engine.getSourceName()+"',0,'"+ new java.sql.Date(new Date().getTime())+"') ");
	}catch(Exception ex){
		ex.printStackTrace();
	}finally{
	}
		return false;
	}
	
	
	
}
