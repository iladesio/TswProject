package model;

import java.sql.Connection;
import java.sql.Date;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.time.LocalDate;
import java.util.GregorianCalendar;
import java.util.Random;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.naming.NamingException;
import javax.sql.DataSource;

public class Ordine {

	private static DataSource ds;

	static {
		try {
			Context initCtx = new InitialContext();
			Context envCtx = (Context) initCtx.lookup("java:comp/env");

			ds = (DataSource) envCtx.lookup("jdbc/storage");

		} catch (NamingException e) {
			System.out.println("Error:" + e.getMessage());
		}
	}

	public Ordine(String idutente, String via, String cap, String citta, String idspecificaordine) {
		super();
		Random n = new Random();

		LocalDate dataoggi = LocalDate.now();

		int d = 1 + n.nextInt(100000) + 1;
		this.numeroordine = d;
		this.stato = "Ordinato";
		this.dataordine = dataoggi;
		this.idutente = idutente;
		this.via = via;
		this.cap = cap;
		this.citta = citta;
		this.idspecificaordine = idspecificaordine;
	}

	public void inserisciordine() {
		Connection connection = null;
		PreparedStatement preparedStatement = null;

		try {
			String sql = "INSERT INTO Ordine(NumeroOrdine,Stato,DataOrdine,IDUtente,Via,Cap,Citta,IDSpecificaOrdine) values (?,?,?,?,?,?,?,?,?)";

			connection = ds.getConnection();
			preparedStatement = connection.prepareStatement(sql);
			preparedStatement.setInt(1, numeroordine);
			preparedStatement.setString(2, stato);
			preparedStatement.setDate(3, java.sql.Date.valueOf(dataordine));
			preparedStatement.setString(4, idutente);
			preparedStatement.setString(5, via);
			preparedStatement.setString(6, cap);
			preparedStatement.setString(7, citta);
			preparedStatement.setString(8, idspecificaordine);

			preparedStatement.executeUpdate();
			connection.commit();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			try {
				if (preparedStatement != null)
					try {
						preparedStatement.close();
					} catch (SQLException e) {
						// TODO Auto-generated catch block
						e.printStackTrace();
					}
			} finally {

				if (connection != null)
					try {
						connection.close();
					} catch (SQLException e) {
						// TODO Auto-generated catch block
						e.printStackTrace();
					}
			}
		}
	}

	public int getNumeroordine() {
		return numeroordine;
	}

	public void setNumeroordine(int numeroordine) {
		this.numeroordine = numeroordine;
	}

	public String getStato() {
		return stato;
	}

	public void setStato(String stato) {
		this.stato = stato;
	}

	public LocalDate getDataordine() {
		return dataordine;
	}

	public void setDataordine(LocalDate dataordine) {
		this.dataordine = dataordine;
	}

	public String getIdutente() {
		return idutente;
	}

	public void setIdutente(String idutente) {
		this.idutente = idutente;
	}

	public String getVia() {
		return via;
	}

	public void setVia(String via) {
		this.via = via;
	}

	public String getCap() {
		return cap;
	}

	public void setCap(String cap) {
		this.cap = cap;
	}

	public String getCitta() {
		return citta;
	}

	public void setCitta(String citta) {
		this.citta = citta;
	}

	public String getIdspecificaordine() {
		return idspecificaordine;
	}

	public void setIdspecificaordine(String idspecificaordine) {
		this.idspecificaordine = idspecificaordine;
	}

	private int numeroordine;
	private String stato;
	private LocalDate dataordine;
	private String idutente;
	private String via;
	private String cap;
	private String citta;
	private String idspecificaordine;

}
