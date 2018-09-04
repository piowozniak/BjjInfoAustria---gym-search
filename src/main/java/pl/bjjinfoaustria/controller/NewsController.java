package pl.coderslab.controller;

import java.util.List;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Sort;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import pl.coderslab.entity.City;
import pl.coderslab.entity.Gym;
import pl.coderslab.entity.News;
import pl.coderslab.entity.Style;
import pl.coderslab.entity.Writer;
import pl.coderslab.repository.NewsRepository;
import pl.coderslab.repository.WriterRepository;

@Controller
public class NewsController {
	
	@Autowired 
	private NewsRepository newsRepository;
	
	@Autowired
	private WriterRepository writerRepository;

	
	@GetMapping(path="/news/add")
	public String showAddForm(Model model) {
		model.addAttribute("news", new News());
		return "news/registration";
	}
	
		@PostMapping(path="/news/add")
		public String addBook(@Valid News news , BindingResult bresult) {
			if(bresult.hasErrors()) {
				return "news/registration";
			}else {
				
			newsRepository.save(news);
			return "redirect:list";
			}
		}
		@GetMapping(path="/news/list") 
		public String showAllForm(Model model) {

			List<News> newss = newsRepository.findAll(new Sort(Sort.Direction.DESC, "id"));
			
			model.addAttribute("newss", newss);
			
			return "news/list";

		}
		@GetMapping(path="/news/edit")	
		public String showEditForm(@RequestParam(name="id", required=true) Long id, Model model) {

			News news  = newsRepository.findOne(id);
			
			model.addAttribute("news", news);

					return "news/edit";
		}
		@PostMapping(path="/news/edit")
		public String editBook(@Valid News news, BindingResult bresult) {
			
			if(bresult.hasErrors()) {
				return "news/edit";
				
			} else {
				newsRepository.save(news);
				return "redirect:list";
			}
		}
		@GetMapping(path="/news/delete")	
		public String showDeleteForm(@RequestParam(name="id", required=true) Long id, Model model) {

			News news = newsRepository.findOne(id);
			
			model.addAttribute("news", news);

					return "news/delete";
		}
		@PostMapping(path="/news/delete")
		public String deleteBook(News news) {
		
			newsRepository.delete(news);
				return "redirect:list";

		}
		
		@ModelAttribute("writers") 
		public List<Writer> findAllCities() {
			return writerRepository.findAll();
		}
		
}
