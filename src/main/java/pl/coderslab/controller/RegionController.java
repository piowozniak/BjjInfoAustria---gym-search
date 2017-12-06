package pl.coderslab.controller;

import java.util.List;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import pl.coderslab.entity.City;
import pl.coderslab.entity.Region;
import pl.coderslab.repository.RegionRepository;

@Controller
public class RegionController {
	
	@Autowired
	private RegionRepository regionRepository;
	
	@GetMapping(path="/region/add")
	public String showAddForm(Model model) {
		model.addAttribute("region", new Region());
		return "region/registration";
	}
	
		@PostMapping(path="/region/add")
		public String addBook(@Valid Region region , BindingResult bresult) {
			if(bresult.hasErrors()) {
				return "region/registration";
			}else {
				
			regionRepository.save(region);
			return "redirect:list";
			}
		}
		@GetMapping(path="/region/list") 
		public String showAllForm(Model model) {

			List<Region> regions = regionRepository.findAll();
			model.addAttribute("regions", regions);
			
			return "region/list";

		}
		@GetMapping(path="/region/edit")	
		public String showEditForm(@RequestParam(name="id", required=true) Long id, Model model) {

			Region region  = regionRepository.findOne(id);
			
			model.addAttribute("region", region);

					return "region/edit";
		}
		@PostMapping(path="/region/edit")
		public String editBook(@Valid Region region, BindingResult bresult) {
			
			if(bresult.hasErrors()) {
				return "region/edit";
				
			} else {
				regionRepository.save(region);
				return "redirect:list";
			}
		}
		@GetMapping(path="/region/delete")	
		public String showDeleteForm(@RequestParam(name="id", required=true) long id, Model model) {

			Region region = regionRepository.findOne(id);
			
			model.addAttribute("region", region);

					return "region/delete";
		}
		@PostMapping(path="/region/delete")
		public String deleteBook(Region region) {
		
			regionRepository.delete(region.getId());
				return "redirect:list";

		}
		

}
