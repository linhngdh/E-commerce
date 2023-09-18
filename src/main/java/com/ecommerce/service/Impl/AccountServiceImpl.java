package com.ecommerce.service.Impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ecommerce.dao.AccountDAO;
import com.ecommerce.entity.Account;
import com.ecommerce.service.AccountService;

@Service
public class AccountServiceImpl implements AccountService{

	@Autowired
	AccountDAO adao;

	@Override
	public Account findById(String username) {
		return adao.findById(username).get();
 	}

	@Override
	public List<Account> findAll() {
		return adao.findAll();
	}

	@Override
	public List<Account> getAdministrators() {
		return adao.getAdministrators();
	}

	@Override
	public Account update(Account account) {
		return adao.save(account); 
	}

	@Override
	public void deleteById(String username) {
		adao.deleteById(username); 	
	}

	@Override
	public Account create(Account account) {
		return adao.save(account); 
	}

	@Override
	public List<Account> findRequest(String string) {
		return adao.findRequest(string); 
	}


}
