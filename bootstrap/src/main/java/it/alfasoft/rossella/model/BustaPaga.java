package it.alfasoft.rossella.model;

import java.util.Date;

public class BustaPaga {
	
	private String nome;
	private String cognome;
	private double importo;
	private Date dataEmissione;
	
	
	public BustaPaga() {
		
	}


	public BustaPaga(String nome, String cognome, double importo,
			Date dataEmissione) {
		
		this.nome = nome;
		this.cognome = cognome;
		this.importo = importo;
		this.dataEmissione = dataEmissione;
	}


	public String getNome() {
		return nome;
	}


	public void setNome(String nome) {
		this.nome = nome;
	}


	public String getCognome() {
		return cognome;
	}


	public void setCognome(String cognome) {
		this.cognome = cognome;
	}


	public double getImporto() {
		return importo;
	}


	public void setImporto(double importo) {
		this.importo = importo;
	}


	public Date getDataEmissione() {
		return dataEmissione;
	}


	public void setDataEmissione(Date dataEmissione) {
		this.dataEmissione = dataEmissione;
	}
	
	
	

}
