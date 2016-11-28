package it.alfasoft.rossella.service;

import it.alfasoft.rossella.model.BustaPaga;



import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.OutputStream;
import java.util.Date;
import java.util.HashMap;
import java.util.Map;

import org.bouncycastle.asn1.ocsp.Request;

import net.sf.jasperreports.engine.JREmptyDataSource;
import net.sf.jasperreports.engine.JRException;
import net.sf.jasperreports.engine.JasperExportManager;
import net.sf.jasperreports.engine.JasperFillManager;
import net.sf.jasperreports.engine.JasperPrint;

public class Servizi {
	
	//-------JASPER REPORT--->               CREARE PDF             <---------------------
	
	
	
		public void creaPdf(BustaPaga b,String pathJasper,String pathJasperImm ) {
			
			
			
			String nome1 = b.getNome();
			String cognome1 = b.getCognome();
			Date data1 = b.getDataEmissione();
			double importo1 = b.getImporto();
			
			String nomeFile = "BustaPaga " + nome1 + ".pdf";
			
			String percorso = "C:\\Users\\corso\\Desktop\\Jasper\\";

			String fileFinale = percorso + nomeFile;

			try {

				// una mappa per mandare i parametri a Jasper
				Map<String, Object> parameters = new HashMap<String, Object>();
				
				parameters.put("nome",nome1 );
				parameters.put("cognome",cognome1 );
				parameters.put("importo",importo1 );
			    parameters.put("dataEmissione",data1 );
			    
			   // parameters.put("immagine", pathJasperImm);
			    
				// file compilato di jasper (.jasper) di Jasper Report per creare
				// PDF
				JasperPrint jasperPrint = JasperFillManager.fillReport(pathJasper,
						 parameters, new JREmptyDataSource());

				// outputStream per creare PDF
				OutputStream outputStream = new FileOutputStream(new File(
						fileFinale));

				// scrivo in un file PDF
				JasperExportManager.exportReportToPdfStream(jasperPrint,
						outputStream);
				System.out.println("il File.pdf e' stato creato");

			} catch (JRException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} catch (FileNotFoundException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}

		}

}
