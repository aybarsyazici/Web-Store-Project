package cs308.sabanciuniv.edu;

import java.io.IOException;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class UpdatePaymentServlet
 */

@WebServlet(name = "UpdatePaymentServlet", urlPatterns = {
"/UpdatePaymentServlet"})
public class UpdatePaymentServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UpdatePaymentServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//doGet(request, response);
		
		try {
			
			 HttpSession session = request.getSession();
	         User user = (User) session.getAttribute("user");
	         if (user == null) {
	             System.out.println("You are not logged in!!!");
	         }
	         else {
	             System.out.println("You are logged in!!!");
	             
	             String email = user.getEmail(); // also you can use request.getParameter for email
	             int id =Integer.parseInt(request.getParameter("payment_id")); // get users id
	             String cNumber = request.getParameter("card_number");
	             String cvc = request.getParameter("cvc");
	 	    	 String date = request.getParameter("expiration_date");
	 	    	 
	 	    	 EntityManagerFactory emf = Persistence.createEntityManagerFactory("cs308");
				 EntityManager em = emf.createEntityManager();
				 
				Payment payment = em.find(Payment.class,id);
				
				em.getTransaction().begin();
				payment.setCardNumber(cNumber);
				payment.setCVC(cvc);
				payment.setEmail(email);
				payment.setExpirationDate(date);
				payment.setID(id);
				em.getTransaction().commit();
				em.close();
				emf.close();
	 	    	
	         }
			
		}catch(Exception e){
			e.printStackTrace();
			
		}
	}

}
