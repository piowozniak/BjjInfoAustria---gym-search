package pl.coderslab.controller;

import java.util.List;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import pl.coderslab.entity.City;
import pl.coderslab.entity.Gym;
import pl.coderslab.entity.Region;
import pl.coderslab.entity.Style;
import pl.coderslab.repository.CityRepository;
import pl.coderslab.repository.GymRepository;
import pl.coderslab.repository.RegionRepository;
import pl.coderslab.repository.StyleRepository;

@Controller
public class GymController {
	
	@Autowired 
	private RegionRepository regionRepository;
	
	@Autowired
	private GymRepository gymRepository;

	@Autowired
	private CityRepository cityRepository;

	@Autowired
	private StyleRepository styleRepository;

	@RequestMapping("/")
	public String homePage() {
		return "homepage";
	}

	@RequestMapping("/menu")
	public String menu() {
		return "menu";
	}

	@GetMapping(path = "/gym/add")
	public String showAddForm(Model model) {
		model.addAttribute("gym", new Gym());
		return "gym/registration";
	}

	@PostMapping(path = "/gym/add")
	public String addGym(@Valid Gym gym, BindingResult bresult) {
		if (bresult.hasErrors()) {
			return "gym/registration";
		} else {

			gymRepository.save(gym);
			return "redirect:list";
		}
	}

	@GetMapping(path = "/gym/list")
	public String showAllForm(Model model) {

		List<Gym> gyms = gymRepository.findAll();
		model.addAttribute("gyms", gyms);

		return "gym/list";

	}

	@GetMapping(path = "/gym/edit")
	public String showEditForm(@RequestParam(name = "id", required = true) Long id, Model model) {

		Gym gym = gymRepository.findOne(id);

		model.addAttribute("gym", gym);

		return "gym/edit";
	}

	@PostMapping(path = "/gym/edit")
	public String editGym(@Valid Gym gym, BindingResult bresult) {

		if (bresult.hasErrors()) {
			return "gym/edit";

		} else {
			gymRepository.save(gym);
			return "redirect:list";
		}
	}
	@GetMapping(path = "/gym/delete")
	public String showDeleteForm(@RequestParam(name = "id", required = true) Long id, Model model) {

		Gym gym = gymRepository.findOne(id);

		model.addAttribute("gym", gym);

		return "gym/delete";
	}

	@PostMapping(path = "/gym/delete")
	public String deleteGym(Gym gym) {

		gymRepository.delete(gym);
		return "redirect:list";

	}
	@RequestMapping(value = "/gym/find", method = RequestMethod.GET)
	public String findByName() {
		return "gym/find";
	}
	@GetMapping(path = "/gym/find/list")
	public String showGymByName(@RequestParam(name = "name", required = true) String name, Model model) {
		List<Gym> gyms = gymRepository.findByName(name);
		model.addAttribute("gyms", gyms);
		return "gym/findlist";
	}
	
	@GetMapping(path = "/gym/findcity")
	public String findByCity(Model model) {
		model.addAttribute("gym", new Gym());
		return "gym/findbycity";
	}
	
	@GetMapping(path = "/gym/find/citylist")
	public String showGymByCity(@RequestParam(name = "id", required = true) Long id, Model model) {
		City city = new City();
		List<Gym> gyms = gymRepository.findByCity(city.getId());
		model.addAttribute("gyms", gyms);
		return "gym/findlist";
	}
	
	@ModelAttribute("cities")
	public List<City> findAllCities() {
		return cityRepository.findAll();
	}

	@ModelAttribute("styles")
	public List<Style> findAllStyles() {
		return styleRepository.findAll();
	}
	@ModelAttribute("regions")
	public List<Region> findAllRegions() {
		return regionRepository.findAll();
	}

}
