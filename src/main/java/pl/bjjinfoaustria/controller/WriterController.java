package pl.coderslab.controller;

import java.util.List;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;


import pl.coderslab.entity.Writer;

import pl.coderslab.repository.WriterRepository;

@Controller
public class WriterController {
	
	@Autowired
	private WriterRepository writerRepository;
	
	
	@GetMapping(path="/writer/add")
	public String showAddForm(Model model) {
		model.addAttribute("writer", new Writer());
		return "writer/registration";
	}
	
		@PostMapping(path="/writer/add")
		public String addBook(@Valid Writer writer , BindingResult bresult) {
			if(bresult.hasErrors()) {
				return "writer/registration";
			}else {
				
			writerRepository.save(writer);
			return "redirect:list";
			}
		}
		@GetMapping(path="/writer/list") 
		public String showAllForm(Model model) {

			List<Writer> writers = writerRepository.findAll();
			model.addAttribute("writers", writers);
			
			return "writer/list";

		}
		@GetMapping(path="/writer/edit")	
		public String showEditForm(@RequestParam(name="id", required=true) Long id, Model model) {

			Writer writer  = writerRepository.findOne(id);
			
			model.addAttribute("writer",writer);

					return "writer/edit";
		}
		@PostMapping(path="/writer/edit")
		public String editBook(@Valid Writer writer, BindingResult bresult) {
			
			if(bresult.hasErrors()) {
				return "writer/edit";
				
			} else {
				writerRepository.save(writer);
				return "redirect:list";
			}
		}
		@GetMapping(path="/writer/delete")	
		public String showDeleteForm(@RequestParam(name="id", required=true) Long id, Model model) {

			Writer writer = writerRepository.findOne(id);
			
			model.addAttribute("writer", writer);

					return "writer/delete";
		}
		@PostMapping(path="/writer/delete")
		public String deleteBook(Writer writer) {
		
			writerRepository.delete(writer.getId());
				return "redirect:list";

		}


}
