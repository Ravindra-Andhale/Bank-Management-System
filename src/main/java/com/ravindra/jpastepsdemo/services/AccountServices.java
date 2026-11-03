package com.ravindra.jpastepsdemo.services;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ravindra.jpastepsdemo.entities.Account;
import com.ravindra.jpastepsdemo.repositories.AccountRepository;

@Service
public class AccountServices {
	@Autowired
	private AccountRepository accRepo;
	public List<Account> getAllAccounts()
	{
		
		List<Account> list= accRepo.findAll();
		return list;
	}
	
	public String addNewAccount( Account obj) {
		String status;
		try {
		accRepo.save(obj);
		status="success";
		}
		catch(Exception e){
			 status="failed";
		}
		return status;
	}
	
	public String deleteAccount( int accno) {
		String status="";
		Account obj=accRepo.findByAccno(accno);
		if (obj!= null) 
		{
		System.out.println(obj.getAccnm());
		System.out.println(obj.getBalance());
		accRepo.delete(obj);
		 status= "Sucess";
		}
		else {
			System.out.println("Account no not forund");
		 status="failed";
		} 
		return status;
	}
		public String depoAccount(int no, float amt) {
	Account obj=accRepo.findByAccno(no);
	String status;
	
	if (obj !=null) {
		System.out.println(obj.getBalance());
		obj.setBalance(obj.getBalance()+amt);
		System.out.println(obj.getBalance());
		
		accRepo.save(obj);
		status="success";
		
		}
	else {
		status="failed";
		
	}
	
	return status;
		}
		
		public Account searchOnNumber(int accno) {
			Account obj=accRepo.findByAccno(accno);
			if(obj==null) {
				obj= new Account();
				obj.setAccno(accno);
				obj.setAccnm("Not Found");
				obj.setAcctype("NA");
				obj.setBalance(0);
			}
			return obj;
		}
		
		public String withdrawAccount(int no, float amt) {
			Account obj=accRepo.findByAccno(no);
			String status;
			
			if (obj !=null) {
				System.out.println(obj.getBalance());
				obj.setBalance(obj.getBalance()-amt);
				System.out.println(obj.getBalance());
				
				accRepo.save(obj);
				status="success";
				
				}
			else {
				status="failed";
				
			}
			
			return status;
				}
		
}

