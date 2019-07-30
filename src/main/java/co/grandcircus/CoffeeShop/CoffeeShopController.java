package co.grandcircus.CoffeeShop;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import co.grandcircus.CoffeeShop.Dao.*;
import co.grandcircus.CoffeeShop.Entities.User;
import co.grandcircus.CoffeeShop.Entities.Product;

@Controller
public class CoffeeShopController {
	
	@Autowired
	private UserDao userDao;
	
	@Autowired
	private ProductDao productDao;
	
	@RequestMapping("/")
	public ModelAndView index() {
		return new ModelAndView("index");
	}
	
	@RequestMapping("/list")
	public ModelAndView list() {
		List<Product> ListOfProducts = productDao.findAll();
		return new ModelAndView("list", "products", ListOfProducts);
	}
	@RequestMapping("/user-list")
	public ModelAndView userList() {
		List<User> ListOfUsers = userDao.findAll();
		return new ModelAndView("user-list", "users", ListOfUsers);
	}
	
	
	@RequestMapping("/product/add")
	public ModelAndView add() {		
		return new ModelAndView("add");
	}
	
	@PostMapping("/product/add")
	public ModelAndView addSubmit(Product product) {
		productDao.create(product);
		return new ModelAndView("add");
	}
	
	@RequestMapping("/registration")
	public ModelAndView registration() {
		return new ModelAndView("registration");
	}
	@PostMapping("/registration")
	public ModelAndView addSubmit(User user) {
		userDao.create(user);
		return new ModelAndView("registration");
	}
	
	@RequestMapping("/successful-registration")
	public ModelAndView successAdd(@RequestParam("id") Long id) {
		User user = userDao.findById(id);
		return new ModelAndView("successful-registration", "user", user);
	}
	@RequestMapping("/user/edit")
	public ModelAndView edit(@RequestParam("id") Long id) {
		User user = userDao.findById(id);
		
		return new ModelAndView("user-edit", "user", user);
	}
	@RequestMapping("/user/detail")
	public ModelAndView detail(@RequestParam("id") Long id) {
		User user = userDao.findById(id);
		
		return new ModelAndView("user-detail", "user", user);
	}

}
