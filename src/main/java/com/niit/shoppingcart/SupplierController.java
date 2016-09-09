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

import com.niit.shopingcart.dao.SupplierDAO;
import com.niit.shopingcart.model.Supplier;

@Controller
public class SupplierController {
	
	
	@Autowired
	SupplierDAO supplierDAO;
	

	@Autowired
	Supplier supplier ;
	/*@RequestMapping(value="Supplier")
	public String supplier(Model mv)
	{
		mv.addAttribute("supplier", new Supplier());
		mv.addAttribute("UserClickedSupplier","true");
		return "Home";
		
	}*/
	
	
		@RequestMapping(value="editsupplier")
	    public String editsupplier(@ModelAttribute("supplier")Supplier supplier, HttpServletRequest request, Model m)
	    {
	    	supplierDAO.saveOrUpdate(supplier);
	    	return "redirect:/Supplier";
	    }
		@RequestMapping(value ="Supplier" )
		public ModelAndView SupplierPage(@ModelAttribute("supplier") Supplier supplier,BindingResult result)
				 {
			ModelAndView mv= new ModelAndView("/Admin");
			mv.addObject("supplierList", supplierDAO.list());
			mv.addObject("UserClickedsupplier", "true");
			return mv;
		}
	@RequestMapping(value ={"addeditsupplier/{id}"} )
	public String SupplierPageedit(@PathVariable("id") int id,RedirectAttributes attributes,HttpServletRequest request) {
		attributes.addFlashAttribute("supplier", this.supplierDAO.get(id));
		return "redirect:/Supplier";
	}
	@RequestMapping(value ={"adddeletesupplier/{id}"} )
	public String SupplierPagedelete(@ModelAttribute("supplier")Supplier supplier, Model m) {
		//attributes.addFlashAttribute("supplier2", this.supplierDAO.get(id));
		supplierDAO.delete(supplier);
		return "redirect:/Supplier";
	}
	   /*  @RequestMapping(value="Supplier")
	    public ModelAndView supplier(ModelAndView mv)
	    {
	    	mv.addObject("supplier", new Supplier());
	    	mv.addObject("supplierList",supplierDAO.list());
	    	mv.addObject("UserClickedsupplier", "true");
	    	return mv;
	}*/
}
