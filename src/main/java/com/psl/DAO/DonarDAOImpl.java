package com.psl.DAO;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;

import com.psl.Entity.Donor;

public class DonarDAOImpl implements IDonarDAO{

	private JdbcTemplate jt;
	   
	public JdbcTemplate getJt() {
		return jt;
	}

	public void setJt(JdbcTemplate jt) {
		this.jt = jt;
	}

	@Override
	public void createDonor(Donor d) {
		String str="insert into donor values('" +d.getId()+"','" +d.getName()+"','" +d.getBloodgroup()+"')";
		System.out.println(str);
		jt.update(str);
	}
	
	

	@Override
	public List<Donor> getDonor() {
		
		List<Donor> donorList =  jt.query("select * from donor", new RowMapper<Donor>(){

			@Override
			public Donor mapRow(ResultSet rs, int rownum) throws SQLException {
				Donor d = new Donor();
				d.setId(rs.getInt("id"));
				d.setName(rs.getString("name"));
				d.setBloodgroup(rs.getString("bloodgroup"));
				return d;
			}});
		
		return donorList;
	}

	

}
