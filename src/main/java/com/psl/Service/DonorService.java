package com.psl.Service;

import java.util.List;

import org.springframework.stereotype.Service;

import com.psl.DAO.IDonarDAO;
import com.psl.Entity.Donor;


public class DonorService {

	private IDonarDAO dao;

	public IDonarDAO getDao() {
		return dao;
	}

	public void setDao(IDonarDAO dao) {
		this.dao = dao;
	}
	
	public void createDonor(Donor d) {
	dao.createDonor(d);
		
	}

	public List<Donor> getDonor() {
		List<Donor> donorList = dao.getDonor();
		return donorList;
	}
}
