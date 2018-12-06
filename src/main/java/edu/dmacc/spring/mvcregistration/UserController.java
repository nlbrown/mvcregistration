package edu.dmacc.spring.mvcregistration;




import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;
@Controller
public class UserController {
	@Autowired UserDao dao;

	private static final String[] campuses = {"Ankeny", "Boone", "Urban", "Newton"};
	
	@RequestMapping(value = "/form")
	public ModelAndView user( ){
		ModelAndView modelAndView = new ModelAndView( );	
		modelAndView.setViewName("userForm");
		modelAndView.addObject("user", new User( ));
		modelAndView.addObject("campuses", campuses);
		return modelAndView;
	}
	
	@RequestMapping(value = "/result")
	public ModelAndView processUser(User user){
		System.out.println("In processUser");
		ModelAndView modelAndView = new ModelAndView();
		dao.insertUser(user);
		System.out.println("Value in getName: "+ user.getFName());
		System.out.println("Value in getMajor: "+ user.getMajor());
		modelAndView.setViewName("userResult");
		modelAndView.addObject("u", user);
		return modelAndView;
		
	}
	
	@RequestMapping(value = "/viewAll")
	public ModelAndView viewAll( ){
		ModelAndView modelAndView = new ModelAndView();
		List<User> allUsers = dao.getAllUsers();
		modelAndView.setViewName("viewAllUsers");
		modelAndView.addObject("all", allUsers);
		return modelAndView;
	}

	@Bean
	public UserDao dao(){
		UserDao bean = new UserDao();
		return bean;
	}

}

