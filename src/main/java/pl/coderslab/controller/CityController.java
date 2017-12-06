package pl.coderslab.controller;

import java.util.List;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import pl.coderslab.entity.City;
import pl.coderslab.entity.Region;
import pl.coderslab.repository.CityRepository;
import pl.coderslab.repository.RegionRepository;

@Controller
public class CityController {
	
	@Autowired 
	private RegionRepository regionRepository;
	@Autowired
	private CityRepository cityRepository;
	
	@GetMapping(path="/city/add")
	public String showAddForm(Model model) {
		model.addAttribute("city", new City());
		return "city/registration";
	}
	
		@PostMapping(path="/city/add")
		public String addBook(@Valid City city , BindingResult bresult) {
			if(bresult.hasErrors()) {
				return "city/registration";
			}else {
				
			cityRepository.save(city);
			return "redirect:list";
			}
		}
		@GetMapping(path="/city/list") 
		public String showAllForm(Model model) {

			List<City> cities = cityRepository.findAll();
			model.addAttribute("cities", cities);
			
			return "city/list";

		}
		@GetMapping(path="/city/edit")	
		public String showEditForm(@RequestParam(name="id", required=true) Long id, Model model) {

			City city  = cityRepository.findOne(id);
			
			model.addAttribute("city", city);

					return "city/edit";
		}
		@PostMapping(path="/city/edit")
		public String editBook(@Valid City city, BindingResult bresult) {
			
			if(bresult.hasErrors()) {
				return "gym/edit";
				
			} else {
				cityRepository.save(city);
				return "redirect:list";
			}
		}
		@GetMapping(path="/city/delete")	
		public String showDeleteForm(@RequestParam(name="id", required=true) long id, Model model) {

			City city = cityRepository.findOne(id);
			
			model.addAttribute("city", city);

					return "city/delete";
		}
		@PostMapping(path="/city/delete")
		public String deleteBook(City city) {
		
			cityRepository.delete(city.getId());
				return "redirect:list";

		}
		@ModelAttribute("regions")
		public List<Region> findAllRegions() {
			return regionRepository.findAll();
		}
}