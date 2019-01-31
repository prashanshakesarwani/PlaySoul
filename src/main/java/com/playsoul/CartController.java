package com.playsoul;

import java.security.Principal;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.playsoul.model.Customer;
import com.playsoul.service.CustomerService;

@Controller
@RequestMapping("/customer/cart")
public class CartController 
{
  @Autowired
  private CustomerService customerService;

  @RequestMapping
  public String getCart(Principal principal)
  {
      Customer customer = customerService.getCustomerByUsername(principal.getName());
      int cartId = customer.getCart().getCartId();
      return "redirect:/customer/cart/" + cartId;
  }

  @RequestMapping("/{cartId}")
  public String getCartRedirect(@PathVariable (value = "cartId") int cartId, Model model)
  {
      model.addAttribute("cartId", cartId);
      return "cart";
  }

}