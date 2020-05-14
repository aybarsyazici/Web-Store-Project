package cs308.sabanciuniv.edu;

import javax.persistence.*;
import java.util.ArrayList;
import java.util.List;


@Entity
public class User {
    public enum userType { User,Admin,ProductManager,SalesManager} 
    @Enumerated(EnumType.STRING)
	@Column(name="user_type")
    private userType type;
	private String name;
	@Id
	@Column(name="Email")
	private String email;
	private String password;
	@OneToMany(fetch = FetchType.EAGER, mappedBy = "owner")
	private List<Order> orders;
	
	public void deleteOrder(int orderid) {
		orders.remove(orderid);
	}
	public userType getUserType() {
		return type;
	}
	public void setUserType(userType type2) {
		type = type2;
	}
	public List<Order> getOrders()
	{
		return orders;
	}
	public void addOrder(Order o)
	{
		orders.add(o);
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public User(String name, String email, String password) {
		//super();
		//this.id = 0;
		orders = new ArrayList<Order>();
		this.name = name;
		this.email = email;
		this.password = password;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public static User findByEmail(String email)
	{
		EntityManagerFactory emf = Persistence.createEntityManagerFactory("cs308");
		EntityManager em = emf.createEntityManager();
		try {
			Object obj = em.createQuery("From User WHERE EMAIL LIKE :email").setParameter("email", email).getSingleResult();
			User user = (User)obj;
			em.close();
			emf.close();
			return user;
		} catch (Exception e) {
			em.close();
			emf.close();
			return null;
		}
	}
	public User() {
		orders = new ArrayList<Order>();
		//this.id = 0;
	}
	@Override
	public boolean equals(Object o)
	{
		User temp = (User)o;
		if(this.getEmail().contentEquals(temp.getEmail()))
		{
			return true;
		}
		return false;
	}

	@Override
	public int hashCode() {
		return this.getEmail().hashCode();
	}
	
}
