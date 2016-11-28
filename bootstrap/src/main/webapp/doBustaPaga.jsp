<%@page import="it.alfasoft.rossella.model.BustaPaga"%>
<%@page import="it.alfasoft.rossella.service.Servizi"%>
<%@page import="java.util.Date"%>
<%@page import="dateUtility.MetodiDate"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    <% 
    String nome = request.getParameter("nome");
    String cognome = request.getParameter("cognome");
    String importoString = request.getParameter("importo");
    String dataString= request.getParameter("dataEmissione");
    
    //converto String a Date
    MetodiDate mD = new MetodiDate();
    Date dataEmissione = mD.ConvertiStringADate(dataString);
   // converto String a double
    double importo = Double.parseDouble(importoString);
    
   //Setto in busta b
   BustaPaga b = new BustaPaga();
   Servizi s = new Servizi();
   
   b.setNome(nome);
   b.setCognome(cognome);
   b.setDataEmissione(dataEmissione);
   b.setImporto(importo);
   
   String pathJasper = request.getServletContext().getRealPath("/jasper/formato_cover.jasper");
   String pathJasperImm = request.getServletContext().getRealPath("/jasper/immagine.png");
	
    s.creaPdf(b,pathJasper,pathJasperImm);
    
    response.sendRedirect("FormBustaPaga.jsp");
    
    %>