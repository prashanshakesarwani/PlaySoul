package com.playsoul;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.playsoul.model.Customer;
import com.playsoul.service.CustomerService;

@Controller
@RequestMapping("/admin")
public class AdminCustomerController 
{
	@Autowired
	private CustomerService customerService;
	
	@RequestMapping("/customer")
    public String customerManagerment(Model model){

        List<Customer> customerList = customerService.getAllCustomers();
        model.addAttribute("customerList", customerList);
        return "customerManagement";
    }
	@RequestMapping(value="/updateCustomer/{customerId}")
	public String updateCustomer(Model model,@PathVariable("customerId")int customerId)
	{
		Customer customer;
		customer=customerService.getCustomerById(customerId);
		model.addAttribute("customer",customer);
		return "updateCustomer";
	}
	@RequestMapping(value="/updateCustomer/{customerId}",method=RequestMethod.POST)
	public String updateCustomer(@ModelAttribute("customer")Customer customer,Model model,HttpServletRequest request)
	{	
		customerService.updateCustomer(customer);	
		return "redirect:/admin/customer";
	}
}
