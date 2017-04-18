package com.psl.DAO;

import java.util.List;

import com.psl.Entity.Donor;

public interface IDonarDAO {

	void createDonor(Donor d);
	List<Donor> getDonor();
}
