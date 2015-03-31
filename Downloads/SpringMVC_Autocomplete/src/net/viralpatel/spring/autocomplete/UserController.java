package net.viralpatel.spring.autocomplete;

import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class UserController {

	private static DummyDB dummyDB = new DummyDB();

	@RequestMapping(value = "/index", method = RequestMethod.GET)
	public ModelAndView index() {

		User userForm = new User();

		return new ModelAndView("index", "userForm", userForm);
	}

	@RequestMapping(value = "/get_country_list", 
					method = RequestMethod.GET, 
					headers="Accept=*/*")
	public @ResponseBody List<String> getCountryList(@RequestParam("term") String query) {
		//List<String> countryList = dummyDB.getCountryList(query);
		List<String> countryList = new ArrayList<String>();
                countryList.add("india");
                countryList.add("pakistan");
		return countryList;
	}

	@RequestMapping(value = "/get_tech_list", 
					method = RequestMethod.GET, 
					headers="Accept=*/*")
	public @ResponseBody List<String> getTechList(@RequestParam("term") String query) {
		List<String> countryList = dummyDB.getTechList(query);
		
		return countryList;
	}
}