package br.com.muambatrom.Engine;

import java.io.IOException;
import java.util.List;


public interface SearchEngine {
	
	long getQuantidade();
	List<?> getPesquisa() throws IOException;
	boolean haveResultado();
	boolean persistSearch(SearchEngine engine);
	String getSearchKey();
	String getSourceName();
}
