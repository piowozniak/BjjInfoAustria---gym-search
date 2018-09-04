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
import pl.coderslab.entity.Style;
import pl.coderslab.repository.StyleRepository;

@Controller
public class StyleController {
	
	@Autowired
	private StyleRepository styleRepository;
	
	@GetMapping(path="/style/add")
	public String showAddForm(Model model) {
		model.addAttribute("style", new Style());
		return "style/registration";
	}
	
		@PostMapping(path="/style/add")
		public String addBook(@Valid Style style , BindingResult bresult) {
			if(bresult.hasErrors()) {
				return "style/registration";
			}else {
				
				styleRepository.save(style);
			return "redirect:list";
			}
		}
		@GetMapping(path="/style/list") 
		public String showAllForm(Model model) {

			List<Style> styles = styleRepository.findAll();
			model.addAttribute("styles", styles);
			
			return "style/list";

		}
		@GetMapping(path="/style/edit")	
		public String showEditForm(@RequestParam(name="id", required=true) Long id, Model model) {

			Style style  = styleRepository.findOne(id);
			
			model.addAttribute("style", style);

					return "style/edit";
		}
		@PostMapping(path="/style/edit")
		public String editBook(@Valid Style style, BindingResult bresult) {
			
			if(bresult.hasErrors()) {
				return "style/edit";
				
			} else {
				styleRepository.save(style);
				return "redirect:list";
			}
		}
		@GetMapping(path="/style/delete")	
		public String showDeleteForm(@RequestParam(name="id", required=true) long id, Model model) {

			Style style = styleRepository.findOne(id);
			
			model.addAttribute("style", style);

					return "style/delete";
		}
		@PostMapping(path="/style/delete")
		public String deleteBook(Style style) {
		
			styleRepository.delete(style.getId());
				return "redirect:list";

		}
}
