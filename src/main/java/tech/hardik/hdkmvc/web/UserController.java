package tech.hardik.hdkmvc.web;

import java.io.BufferedWriter;
import java.io.File;
import java.io.FileWriter;
import java.io.IOException;
import java.io.Writer;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.validation.Valid;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.validation.Errors;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import tech.hardik.hdkmvc.entity.FormInput;

@Controller
public class UserController {

	@RequestMapping(value="/register", method=RequestMethod.GET)
	public String showRegisterForm() {
		return "home";
	}
	
	@RequestMapping(value="/register", method=RequestMethod.POST)
	public String getRegisterForm(@Valid @ModelAttribute("formInput")  FormInput formInput, Errors error,  ModelMap model) {
		
		if(error.hasErrors()) {
			return "home";
		}
		
		model.addAttribute("env",formInput.getEnv());
		model.addAttribute("cobGroup",formInput.getCobGroup());
		model.addAttribute("cobName",formInput.getCobName());
		model.addAttribute("vip",formInput.getVip());
		
		ClassLoader classLoader = getClass().getClassLoader();
		
		Date today = new Date();
		 SimpleDateFormat DATE_FORMAT = new SimpleDateFormat("yyyyMMdd_HHmm");
		String fileName = DATE_FORMAT.format(today)+"_"+(formInput.getEnv().substring(0, 4)+"_"+formInput.getCobGroup().substring(0, 3)
							+"_"+formInput.getCobName().substring(0, 2)+"_"+formInput.getVip().substring(0, 3)).toUpperCase();
		
		System.out.println(fileName);
		try {
			File f = new File(classLoader.getResource(".").getFile()+fileName);
			f.createNewFile();
			FileWriter writer = new FileWriter(f);
			BufferedWriter bf = new BufferedWriter(writer);
			bf.write(formInput.getEnv()+","+formInput.getCobGroup()+","+formInput.getCobName()+","+formInput.getVip());
			bf.flush();
			bf.close();writer.close();
		}catch(Exception e) {}
			
		
	
		return "labels";
	}
	
	
}
