package com.abc.rhouri.servlets;

import java.io.IOException;
import java.util.Iterator;
import java.util.LinkedList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebInitParam;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.sql.DataSource;

import com.abc.rhouri.lib.*;
import com.abc.rhouri.stores.*;
import com.abc.rhouri.models.FaultModel;

/**
 * Servlet implementation class Fault
 */
@WebServlet(
		urlPatterns = { 
				"/faults", 
				"/fault/*"
		}, 
		initParams = { 
				@WebInitParam(name = "data-source", value = "jdbc/fault")
		})
public class Fault extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private DataSource _ds = null;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Fault() {
        super();
        // TODO Auto-generated constructor stub
       
    }
    
    /**
	 * @see Servlet#init(ServletConfig)
	 */
	public void init(ServletConfig config) throws ServletException {
		// TODO Auto-generated method stub
		Dbutils db = new Dbutils();
		db.createSchema();

        _ds=db.assemble(config);
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		System.out.println("Starting GET");
//		String args[]=Convertors.SplitRequestPath(request);
		Iterator<FaultsStore> iterator;
		FaultModel Faults = new FaultModel(); //Create a new instance of the model

		Faults.setDatasource(_ds);
		LinkedList<FaultsStore> psl = Faults.getFaults(); // Get a list of all faults

		/* If we want to forward to a jsp page do this */
		request.setAttribute("Faults", psl); //Set a bean with the list in it
		RequestDispatcher rd = request.getRequestDispatcher("/RenderFaults.jsp"); 

		rd.forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		// Make new FaultModel object
				FaultModel faultModel = new FaultModel();

				// Get content of description box
				// String fid = request.getParameter("txtFaultID");

				// Get content of reportedBy box and cast as an int
				String sdes = request.getParameter("shortDes");

				// Get content of severity selection box
				String ldes = request.getParameter("longDes");
				
				// Get content of severity selection box
				String randomfield = request.getParameter("randomfield");
				
				// Get content of severity selection box
				String sev = request.getParameter("sev");

				// Shows message in console
				System.out.println("DoPost works correctly!");

				// Calls method to insert into Database
				faultModel.setFaultData(sdes, ldes, randomfield, sev);

				// Redirects the user.
				//RequestDispatcher dispatcher = request
						//.getRequestDispatcher("index.jsp");
				//dispatcher.forward(request, response);
		
	}

}