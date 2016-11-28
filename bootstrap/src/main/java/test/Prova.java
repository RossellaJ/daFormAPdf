package test;
import java.util.Date;

import it.alfasoft.rossella.model.BustaPaga;
import it.alfasoft.rossella.service.Servizi;


public class Prova {

	public static void main(String[] args) {
		Servizi s= new Servizi();
		Date d = new Date();
		BustaPaga b= new BustaPaga("Rossella", "Pil", 2500,d );
		//s.creaPdf(b);

	}

}
