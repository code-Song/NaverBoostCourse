package kr.or.connect.todo.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import kr.or.connect.todo.dto.TodoDto;

public class TodoDao {
	private static String dbUrl = "jdbc:mysql://localhost:3306/connectdb?serverTimezone=Asia/Seoul&useSSL=false";
	private static String dbUser = "connectuser";
	private static String dbPassword = "qwer";
	
	public int addTodo(TodoDto todoDto) {
		int addCount = 0;
		
		try {
			Class.forName("com.mysql.jdbc.Driver");
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		String sql = "INSERT INTO todo(title, name, sequence) VALUES(?, ?, ?)";
		
		try(Connection conn = DriverManager.getConnection(dbUrl, dbUser, dbPassword);
			PreparedStatement ps = conn.prepareStatement(sql)) {
			
			ps.setString(1, todoDto.getTitle());
			ps.setString(2, todoDto.getName());
			ps.setInt(3, todoDto.getSequence());
			
			addCount = ps.executeUpdate();
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		return addCount;
	}

	public List<TodoDto> getTodos(){
		List<TodoDto> list = new ArrayList<TodoDto>();
		
		try {
			Class.forName("com.mysql.jdbc.Driver");
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		String sql = "SELECT id, title, name, sequence, type, regdate FROM todo ORDER BY regdate DESC";
		
		try(Connection conn = DriverManager.getConnection(dbUrl, dbUser, dbPassword);
			PreparedStatement ps = conn.prepareStatement(sql)) {
			try(ResultSet rs = ps.executeQuery()){
				
				while (rs.next()) {
					TodoDto todoDto = new TodoDto();
					todoDto.setId(rs.getLong(1));
					todoDto.setTitle(rs.getString(2));
					todoDto.setName(rs.getString(3));
					todoDto.setSequence(rs.getInt(4));
					todoDto.setType(rs.getString(5));
					SimpleDateFormat df = new SimpleDateFormat("yyyy.MM.dd");
					String date = df.format(rs.getDate(6));
					todoDto.setRegDate(date);
					list.add(todoDto);
				}
			} catch (Exception e) {
				e.printStackTrace();
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return list;
	}

	public int updateTodo(TodoDto todoDto) {
		int updateCount = 0;
		
		try {
			Class.forName("com.mysql.jdbc.Driver");
		} catch (Exception e) {
			e.printStackTrace();
		} 
		
		String sql = "UPDATE todo SET type=? where id=?";
		try(Connection conn = DriverManager.getConnection(dbUrl, dbUser, dbPassword);
			PreparedStatement ps = conn.prepareStatement(sql)) {
			
			ps.setString(1, todoDto.getType());
			ps.setLong(2, todoDto.getId());
			
			updateCount = ps.executeUpdate();
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		return updateCount;
	}
}
