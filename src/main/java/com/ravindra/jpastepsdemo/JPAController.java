package com.ravindra.jpastepsdemo;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import com.ravindra.jpastepsdemo.entities.Account;
import com.ravindra.jpastepsdemo.services.AccountServices;

@Controller
public class JPAController {
	@Autowired
 private AccountServices accServ;
	
	@GetMapping("/")
	public String homepage() {
		return "index.jsp";
	}
	@PostMapping("/addacc")
	public String addAccount(Account obj, Model m) {
		
		String status= accServ.addNewAccount(obj);
		m.addAttribute("msg","New Account creation....");
		m.addAttribute("status", status);
		return "ActivityStatus.jsp";
	}
	@GetMapping("/close")
	public String close() {
		return "CloseAccountForm.jsp";
	}
	@PostMapping("/closeacc")
	public String closeAccount(int accno, Model m) {
		String status;
		status=accServ.deleteAccount(accno);
		m.addAttribute("msg","Account clossing...");
		m.addAttribute("status",status);
		return "ActivityStatus.jsp";
	}
	@GetMapping("/deposit")
	public String deposit() {
		return "DepositForm.html";
	}

		@PostMapping("/depoamt") 
		public String depositAccount(int accno,float amount, Model m) {
			String stat=accServ.depoAccount(accno, amount );
			m.addAttribute("status",stat);
	        m.addAttribute("msg","Deposit Account");	
			return "ActivityStatus.jsp";
		
		} 
		@GetMapping("/search")
		public String search() {
			return "Search.html";
		}
		@PostMapping("/searchno")
		public String searchNumber ( int accno, Model m) {
			
			Account obj= accServ.searchOnNumber(accno);
			m.addAttribute("data", obj);
			return "SearchNumberResult.jsp";
		}	
		@GetMapping("/report")
		public String showAccountReport(Model m)
		{
			List<Account> list=accServ.getAllAccounts();
			m.addAttribute("acclist", list);
			return "AccountsReport.jsp";
		}
		@GetMapping("/withdraw")
		public String withdraw() {
			List<Account> list= accServ.getAllAccounts();
			return "Withdraw.jsp";
		}
		
		@GetMapping("/transfer")
		public String Transfer() {
			return "Transfer.jsp";
		}
		@PostMapping("/wdrawamt") 
		public String withdrawAccount(int accno,float amount, Model m) {
			String stat=accServ.withdrawAccount(accno, amount );
			m.addAttribute("status",stat);
	        m.addAttribute("msg","Withdraw Account");	
			return "ActivityStatus.jsp";
		
		} 
		
		
}
