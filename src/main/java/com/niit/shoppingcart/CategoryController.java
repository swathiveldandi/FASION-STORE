package com.niit.shoppingcart;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.niit.shopingcart.dao.CategoryDAO;
import com.niit.shopingcart.model.Category;

@Controller
public class CategoryController {
	
	
	@Autowired
	CategoryDAO categoryDAO;
	

	@Autowired
	Category category ;
	/*@RequestMapping(value="Category")
	public String category(Model mv)
	{
		mv.addAttribute("category", new Category());
		mv.addAttribute("UserClickedCategory","true");
		return "Home";
		
	}*/
	
	
		@RequestMapping(value="editcategory")
	    public String editcategory(@ModelAttribute("category")Category category, HttpServletRequest request, Model m)
	    {
	    	categoryDAO.saveOrUpdate(category);
	    	return "redirect:/Category";
	    }
		@RequestMapping(value ="Category" )
		public ModelAndView CategoryPage(@ModelAttribute("category") Category category,BindingResult result)
				 {
			ModelAndView mv= new ModelAndView("/Admin");
			//mv.addObject("category", new Category());
			mv.addObject("categoryList", categoryDAO.list());
			mv.addObject("UserClickedcategory", "true");
			return mv;
		}
	@RequestMapping(value ={"addeditcategory/{id}"} )
	public String CategoryPageedit(@PathVariable("id") int id,RedirectAttributes attributes, HttpServletRequest request) {
		attributes.addFlashAttribute("category", this.categoryDAO.get(id));
		return "redirect:/Category";
	}
	@RequestMapping(value ={"adddeletecategory/{id}"} )
	public String CategoryPagedelete(@ModelAttribute("category")Category category, Model m) {
		//attributes.addFlashAttribute("category2", this.categoryDAO.get(id));
		categoryDAO.delete(category);
		return "redirect:/Category";
	}
	   /*  @RequestMapping(value="Category")
	    public ModelAndView category(ModelAndView mv)
	    {
	    	mv.addObject("category", new Category());
	    	mv.addObject("categoryList",categoryDAO.list());
	    	mv.addObject("UserClickedcategory", "true");
	    	return mv;
	}*/
}
