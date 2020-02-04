package com.airline.controllers;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.airline.models.Passenger;

@WebServlet("")
public class MainPage extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
    public MainPage() {
        super();
        
    }

	
	@SuppressWarnings("unchecked")
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		PrintWriter out = response.getWriter();
		response.setContentType("text/html");
		ServletContext sc = this.getServletContext();
		
		ArrayList<Passenger> passengersList = (ArrayList<Passenger>) sc.getAttribute("passengers");
		out.println("Passenger has been added successfully. List of Passengers: " + passengersList.size());
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		doGet(request, response);
	}

}
