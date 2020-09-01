package kr.co.connect.jdbcexam;

import java.util.ArrayList;
import java.util.List;

import kr.co.connect.jdbcexam.dao.RoleDao;
import kr.co.connect.jdbcexam.dto.Role;

public class JDBCExam5 {
	public static void main(String[] args) {
		List<Role> list = new ArrayList<Role>();
		
		RoleDao dao = new RoleDao();
		list = dao.getRoles();
		
		for(Role role : list) {
			System.out.println(role);
		}
	}
}
