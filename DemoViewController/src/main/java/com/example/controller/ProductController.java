package com.example.controller;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import com.example.model.Product;

/**
 * Servlet implementation class ProductController
 */
@WebServlet("/products")
public class ProductController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ProductController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		//create mock data
		List<Product> productList = new ArrayList<>();
		
		productList.add(new Product(1, "BMW Auto", 1000, 10));
		productList.add(new Product(2, "Honda Auto", 500, 5));
		productList.add(new Product(3, "Toyota Auto", 700, 20));
		productList.add(new Product(4, "BYD Auto", 800, 30));

		
		//add data into request object
		request.setAttribute("myproduct", productList);
		
		//forward data to views (JSP)
		request.getRequestDispatcher("product-list.jsp").forward(request, response);
		
		
		
		
		
		
		
		
		
		
		
		
		
		
	}


}
