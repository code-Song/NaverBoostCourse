package kr.co.connect.jdbcexam;

import kr.co.connect.jdbcexam.dao.RoleDao;

public class JDBCExam4 {
	public static void main(String[] args) {
		int roleId = 700;
		
		RoleDao dao = new RoleDao();
		int deleteCount = dao.deleteRole(700);
		
		System.out.println(deleteCount);
	}
}
