package br.com.muambatrom.Beans;

import java.io.IOException;

import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;


public class Pesquisa {

	private String key;

	public Pesquisa(String key){
		this.key = key;
	}
	
	public String getKey() {
		return key;
	}

	public void setKey(String key) {
		this.key = key;
	}
	
	public Document getDocument(String url) throws IOException{
		
		Document doc = Jsoup.connect(url).userAgent("gecko/mozilla").get();
		
		return doc;
		
	}
}
