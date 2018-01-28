package tech.hardik.tests;

import org.junit.Test;

import junit.framework.Assert;
import tech.hardik.hdkmvc.service.HelloWorldService;
import tech.hardik.hdkmvc.web.WelcomeController;

public class WelcomeControllerTest {
	
	
	@Test
	public void testHomePage() throws Exception
	{
		HelloWorldService helloWorldService  = new HelloWorldService();
		WelcomeController wlController = new WelcomeController(helloWorldService);
		
	//	Assert.assertEquals("index", wlController.test());
	}
	
	

}
