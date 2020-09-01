package kr.co.connect.jdbcexam.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import kr.co.connect.jdbcexam.dto.Role;

public class RoleDao {
	//다른 메서드에서도 연결을 계속 해야되니까 아예 상수처럼 선언을 해놓는다.
	private static String dbUrl = "jdbc:mysql://localhost:3306/connectdb?serverTimezone=Asia/Seoul&useSSL=false";
	private static String dbUser = "connectuser";
	private static String dbPassword = "qwer";
	public Role getRole(Integer roleId) {
		Role role = null;
		Connection conn = null; //java.sql.Connection
		PreparedStatement ps = null; //java.sql.PreparedStatement
		ResultSet rs = null;
		
		try {
			Class.forName("com.mysql.jdbc.Driver"); //드라이버 연결을 위해서 mysql이 제공해주는 클래스를 메모리에 올려준다.
			conn = DriverManager.getConnection(dbUrl, dbUser, dbPassword);
			String sql = "SELECT role_id, description FROM role WHERE role_id = ?"; //?를 사용하면 나중에 매개변수에 따라 값을 바꿀 수 있다.
			ps = conn.prepareStatement(sql);
			ps.setInt(1, roleId); //setInt(parameterIndex, value) : ?에 값을 넣어준다. 첫 번째 인자는 ?의 t순서
			rs = ps.executeQuery(); //resultSet이 sql의 결과를 저장함
			
			if(rs.next()) {
				//SELECT로 가져온 순서로 get
				int id = rs.getInt("role_id"); //인덱스를 사용해도되고 column명을 적어도된다.
				String description = rs.getString(2);
				role = new Role(id, description);
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally { //항상 접속을 닫아줘야한다.
			//만약 위에서 연결이 안됐는데 close를 하면 안되므로 예외처리해주자.
			if(rs != null) {
				try {
					rs.close();
				} catch (SQLException e) {
					e.printStackTrace();
				}
			}
			if(ps != null){
				try {
					ps.close();
				} catch (SQLException e1) {
					e1.printStackTrace();
				}
			}
			if(conn != null) {
				try {
					conn.close();
				} catch (SQLException e) {
					e.printStackTrace();
				}
			}
		}
		
		return role;
	}
	public List<Role> getRoles() {
		// TODO Auto-generated method stub
		return null;
	}

}
