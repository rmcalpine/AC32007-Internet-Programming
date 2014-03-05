package com.abc.rhouri.models;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.LinkedList;
import java.util.List;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.naming.NamingException;
import javax.sql.DataSource;

import com.abc.rhouri.stores.FaultsStore;


public class FaultModel {

	private DataSource ds = null;
	static Context envContext = null;

	public void setDatasource(DataSource ds) {
		this.ds = ds;
		System.out.println("Set Data Source in Model" + ds.toString());
	}



	public static void setFaultData(String fid, String sdes, String ldes, String randomfield, String sev) {

		try {
			envContext = new InitialContext();
			Context initContext = (Context) envContext.lookup("java:/comp/env");
			DataSource _ds = (DataSource) initContext
					.lookup("jdbc/rhouri");
			Connection conn = _ds.getConnection();
			System.out.println("Connected to the database!");

			PreparedStatement pmst = null;

			String query = "INSERT INTO fault(FaultShortDescription, FaultLongDescription, RandomID, Severity) VALUES (?,?,?,?)";
			try {
				pmst = conn.prepareStatement(query);
				pmst.setString(1, "sdes");
				pmst.setString(2, "ldes");
				pmst.setString(3, "randomfield");
				pmst.setString(4, "sev");
				pmst.executeUpdate();
				System.out
						.println("The data has successfully been inserted into the database.");

			} catch (Exception ex) {

				System.out.println("The data has not been inserted into the database.");
				return;
			}
			try {
				conn.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}

		} catch (NamingException e1) {

			e1.printStackTrace();
		} catch (SQLException e1) {

			e1.printStackTrace();
		}
	}


public LinkedList<FaultsStore> getFaults() {

		LinkedList<FaultsStore> psl = new LinkedList<FaultsStore>();
		Connection Conn;
		FaultsStore ps = null;
		ResultSet rs = null;
		try {
			Conn = ds.getConnection();
		} catch (Exception et) {

			System.out.println("No Connection in Faults Model");
			return null;
		}

		PreparedStatement pmst = null;
		Statement stmt = null;
		String sqlQuery = "select FaultID, FaultShortDescription, FaultLongDescription, RandomID, Severity from fault";
		System.out.println("Fault Query " + sqlQuery);
		try {
			try {
			 pmst = Conn.prepareStatement(sqlQuery);
				stmt = Conn.createStatement();
			} catch (Exception et) {
				System.out.println("Can't create prepare statement");
				return null;
			}
			System.out.println("Created prepare");
			try {
				 rs=pmst.executeQuery();
				rs = stmt.executeQuery(sqlQuery);
			} catch (Exception et) {
				System.out.println("Can not execut query " + et);
				return null;
			}
			System.out.println("Statement executed");
			if (rs.wasNull()) {
				System.out.println("result set was null");
			} else {
				System.out.println("Well it wasn't null");
			}
			while (rs.next()) {
				System.out.println("Getting RS");
				ps = new FaultsStore();
				
				//fid, sdes, ldes, randomfield, sev
				
				//FaultID, FaultShortDescription, FaultLongDescription, RandomID, Severity
				

				ps.setFaultID(rs.getString("FaultID"));
				ps.setFaultShortDescription(rs.getString("FaultShortDescription"));
				ps.setFaultLongDescription(rs.getString("FaultLongDescription"));
				ps.setRandomID(rs.getString("RandomID"));
				ps.setSeverity(rs.getString("Severity"));
				psl.add(ps);
			}
		} catch (Exception ex) {
			System.out.println("Opps, error in query " + ex);
			return null;
		}

		try {

			Conn.close();
		} catch (Exception ex) {
			return null;
		}
		return psl;

	}
}