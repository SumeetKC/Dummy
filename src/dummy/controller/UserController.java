package dummy.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import dummy.service.UserService;
import dummy.user.User;

@Controller
public class UserController {
	@Autowired
	private UserService userService;

	@RequestMapping(value = "/WelcomeUpdate")
	public String welcomeUpdate() {
		return "WelcomeUpdate";
	}

	@RequestMapping(value = "/WelcomeDelete")
	public String welcomeDelete() {
		return "WelcomeDelete";
	}

	@RequestMapping(value = "/WelcomeView")
	public String welcomeView() {
		return "WelcomeView";
	}

	@RequestMapping(value = "/register")
	public ModelAndView userControllerRegister(@ModelAttribute("user") User user) {
		userService.userRegister(user);
		return new ModelAndView("success");
	}

	@RequestMapping(value = "/updateFetch")
	public ModelAndView userControllerUpdateFetch(HttpServletRequest request) {
		String id = request.getParameter("id");
		User user = userService.userUpdate(id);
		System.out.println(user.getName());
		return new ModelAndView("WelcomeUpdate", "user", user);
	}

	@RequestMapping(value = "/deleteFetch")
	public ModelAndView userControllerDeleteFetch(HttpServletRequest request) {
		String id = request.getParameter("id");
		User user = userService.userUpdate(id);
		return new ModelAndView("WelcomeDelete", "user", user);
	}

	@RequestMapping(value = "/delete")
	public String userControllerDelete(HttpServletRequest request) {
		String id = request.getParameter("id");
		userService.userDelete(id);
		return "success";
	}

	@RequestMapping(value = "/view")
	public ModelAndView userControllerView(HttpServletRequest request) {
		String id = request.getParameter("id");
		User user = userService.getUser(id);

		return new ModelAndView("WelcomeView", "user", user);
	}
	
	@RequestMapping(value="viewall")
	public ModelAndView userControllerViewAll()
	{
		List<User> list=userService.userList();
		return new ModelAndView("ViewAll", "user", list);
	}

}
