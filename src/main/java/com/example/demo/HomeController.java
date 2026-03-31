package com.example.demo;

import java.io.BufferedOutputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.example.demo.Model.Admin;
import com.example.demo.Model.Destinations;
import com.example.demo.Model.Users;
import com.example.demo.Service.AdminService;
import com.example.demo.Service.DestinationsService;
import com.example.demo.Service.EmailService;
import com.example.demo.Service.UsersService;

@Controller
public class HomeController {

	@Autowired
	AdminService as;
	@Autowired
	UsersService us;
	@Autowired
	DestinationsService ds;
	@Autowired
	EmailService es;
	
	
	@RequestMapping("/")
	public String Default(ModelMap m) {
		List <Destinations> dd = ds.getAllInfo();
		m.addAttribute("d",dd);
		return "Home";
	}
	
	@RequestMapping("/Home")
	public String Home(ModelMap m) {
		List <Destinations> dd = ds.getAllInfo();
		m.addAttribute("d",dd);
		return "Home";	
	}
	
	@RequestMapping("/AdminDashboard")
	public String AdminHome(HttpSession h1) {
		String a = (String) h1.getAttribute("email");
		if (a != null) {
			return "AdminDashboard";
		} 
		else return "redirect:/Login_RegistrationAdmin";
	}
	
	@RequestMapping("/Userlogout")
	public String logoutUser(HttpSession h1) {
		h1.invalidate();
		System.out.println("Logout Successfull");
		return "Login_RegistrationUser";
	}

	@RequestMapping("/Adminlogout")
	public String logoutAdmin(HttpSession h1) {
		h1.invalidate();
		System.out.println("Logout Successfull");
		return "Login_RegistrationAdmin";
	}
	
//	******************************************************************GOTO FORM REGISTRATION
	@RequestMapping("/sign_up")
	public String temp0() {
		return "Login_RegistrationUser";	
	}
	
	@RequestMapping("/Login_RegistrationUser")
	public String temp1() {
		return "Login_RegistrationUser";		
	}

	@RequestMapping("/Login_RegistrationAdmin")
	public String temp2() {
		return "Login_RegistrationAdmin";
	}
	
	@RequestMapping("/Add_Destination")
	public String temp3() {
		return "Add_Destination";
	}
	
	@RequestMapping("/Destination")
	public String temp4() {
		return "Destination";
	}

	@RequestMapping("/index")
	public String temp5(ModelMap m, HttpSession h1) {
		String x = (String) h1.getAttribute("name");
		
		if (x == null ) {
			return "Login_RegistrationUser";
		}
		
		List <Destinations> dd = ds.getAllInfo();
		m.addAttribute("d",dd);
		return "index";
	}
	
	
	@RequestMapping("/ProfileDetails")
	public String temp5(@RequestParam("user_id") int uid,HttpSession h1) {

		String a = (String) h1.getAttribute("name");
		
		Users x = us.getSingleInfo(uid);

		h1.setAttribute("id", x.getUser_id());
		h1.setAttribute("name", x.getUser_name());
		h1.setAttribute("email", x.getEmail());
		h1.setAttribute("password", x.getPassword());
		
		if (a == null ) {
			return "Login_RegistrationUser";
		}
		
		else return "ProfileDetails";
	}



//	******************************************************************************REGISTRATION
	@PostMapping("/adminRegister")
	public String adminRegister(@ModelAttribute("a1") Admin a1) {
		as.register(a1);
		return "redirect:/Login_RegistrationAdmin";
	}

	@PostMapping("/userRegister")
	public String userRegister(@ModelAttribute("u1") Users u1) {
		us.register(u1);
		return "redirect:/Login_RegistrationUser";
	}

	@PostMapping("/destinationRegister")
	public String destinationRegister(@ModelAttribute ("d1") Destinations d1, HttpSession h1 ,@RequestParam("photo") MultipartFile filename) throws IOException {
		
		
		String a = (String) h1.getAttribute("email");

		if (a != null) {

//	File (Image) Upload Concept, Save In Path Folder
			String f = filename.getOriginalFilename();
			String path = "C:\\Users\\Dell\\eclipse-workspace\\MyDarshan\\src\\main\\resources\\static\\Images_From_Database";
			BufferedOutputStream bf = new BufferedOutputStream(new FileOutputStream(path+"/"+f));
			byte b [] = filename.getBytes(); 
			bf.write(b);
			bf.close();
			
			d1.setDestinationphoto(f);
			
			ds.register(d1);
			return "redirect:/AdminDashboard";
		} 
		else return "redirect:/Login_RegistrationAdmin";
	}
	
//	******************************************************************************CHECK DATA
	
	@PostMapping("/checkUserData") 
	public String checkUserData(@RequestParam("email") String email,@RequestParam("password") String password, HttpSession h1) {

		Users x = us.findbyemailandpass(email, password);
		
		if (x != null) {
			h1.setAttribute("id", x.getUser_id());
			h1.setAttribute("name", x.getUser_name());
			h1.setAttribute("email", x.getEmail());
			h1.setAttribute("password", x.getPassword());
			return "redirect:/index";
		}
		else return "redirect:/Login_RegistrationUser";
	}
	
	
	
	@PostMapping("/checkAdminData") 
	public String checkAdminData(@RequestParam("email") String email,@RequestParam("password") String password, HttpSession h1) {
		
		Admin x = as.findbyemailandpass(email, password);
				
		if (x != null) {
			h1.setAttribute("id", x.getAdmin_id());
			h1.setAttribute("name", x.getAdmin_name());
			h1.setAttribute("email", x.getEmail());
			h1.setAttribute("password", x.getPassword());
			return "AdminDashboard";
		} 
		else return "redirect:/Login_RegistrationAdmin";
	}


//	******************************************************************************USERS DATA
	@RequestMapping("/ViewUsers")
	public String displayUser(ModelMap m) {
		
		List<Users> ud = us.getAllInfo();
		m.addAttribute("vu",ud);
		return "ViewUsers";
	}
	
	@GetMapping("/DeleteUser/{id}")
	public String deleteUser(@PathVariable int id) {
		us.delUser(id);
		return "redirect:/ViewUsers";
	}
	
	@GetMapping("/EditUser/{id}")
	public String editUser(@PathVariable int id, ModelMap m) {
		Users ud = us.getSingleInfo(id);
		m.addAttribute("ud",ud);
		return "EditUser";
	}
	
	@PostMapping("/UserUpdate")
	public String updateData(@ModelAttribute("u") Users u) {
		
		Users ua = new Users();
		
		ua.setUser_id(u.getUser_id());
		ua.setUser_name(u.getUser_name());
		ua.setEmail(u.getEmail());
		ua.setPassword(u.getPassword());
		us.register(ua);
		return "redirect:/ViewUsers";
	}


//	******************************************************************************DESTINATIONS DATA
	@RequestMapping("/ViewDestinations")
	public String displayDestination(ModelMap m) {
		
		List<Destinations> dd = ds.getAllInfo();
		m.addAttribute("dd",dd);
		return "ViewDestinations";
	}

	@GetMapping("/DeleteDestination/{id}")
	public String deleteDestination(@PathVariable int id) {
		ds.delDestination(id);
		return "redirect:/ViewDestinations";
	}

	@GetMapping("/EditDestination/{id}")
	public String editDestination(@PathVariable int id, ModelMap m) { 
		
		Destinations dd = ds.getSingleInfo(id); m.addAttribute("dd",dd);
		return "EditDestination"; 
	}

	@PostMapping("/DestinationUpdate")
	public String updateData1(@ModelAttribute("d") Destinations d) {

		Destinations da = new Destinations();

		da.setDestination_id(d.getDestination_id());
		da.setDestination_name(d.getDestination_name());
		da.setDestination_title(d.getDestination_title());
		da.setDestination_location(d.getDestination_location());
		da.setDestination_description(d.getDestination_description());
		da.setDestination_information(d.getDestination_information());
		da.setDestination_cost(d.getDestination_cost());
		da.setDestination_duration(d.getDestination_duration());

		ds.register(da); 
		return "redirect:/ViewDestinations";

	}
	 
	@PostMapping("/DestinationBooking")
	public String booking() {

		String Done = "Booked";
		return Done;
		//return "sendEmail";

	}
	
//	****************************************************************************** EMAIL DATA

	@RequestMapping("/sendEmail")
	public String emailSendTest(HttpSession h1) {
		
		String a = (String) h1.getAttribute("email");
		String b = (String) h1.getAttribute("name");
		
		if  (a != null) {
			
			System.out.println("Sending Email");
			System.out.println(b);
			
			String to = a;
		
			String name = "Gaurav";
			String location = "Trikuta Hills Jammu & Kashmir";
			String nameofPilgrimage = "Mata Vaishno Devi Temple";
			String departureDate = "1 November";
			int duration = 5;
			String cost = "27000";
			String temp = "Thank You...";
			
			es.sendEmail(""+to+"",
								   "Confirmation of Pilgrimage Booking",
								   "Dear "+name+",\n" + "\n"
								   + "Thank you for choosing MyDarshan for your upcoming pilgrimage journey. "
								   + "We are delighted to confirm your booking for the pilgrimage to "+location+". Your faith-filled adventure awaits!"
								   + "Below, you'll find the details of your booking:\n" + "\n"
								   + "Pilgrimage Name:  "+nameofPilgrimage+". \n"
								   + "Departure Date:    "+departureDate+". \n"
								   + "Duration:            "+duration+" Days \n"
								   + "Accommodation:    MyDarshan Hotel Rooms \n"
								   + "Transportation:      Car With AC & Flight \n"
								   + "Total Cost:         ₹ "+cost+" \n"
								   + "Please review the information provided above to ensure its accuracy. "
								   + "If there are any discrepancies or if you have any special requests, \n"
								   + "please do not hesitate to contact us at +91 9765132911. \n" + "\n"
								   + "To ensure a smooth experience, please keep this confirmation email handy and present it during check-in or whenever required during your pilgrimage journey.\n" + "\n"
								   + "We're excited to be a part of your spiritual journey and look forward to providing you with an enriching and memorable experience. \n" + "\n"
								   + "Warm regards,\n" + "\n"
								   + "Anis Shikalgar\n"
								   + "Admin\n"
								   + "MyDarshan.com\n"
								   + "+91 9765132911\n"
								   + ""+temp+"");
			
			return "redirect:/Destination";
		}
		
		else  {return "redirect:/Login_RegistrationUser"; }

	}


}