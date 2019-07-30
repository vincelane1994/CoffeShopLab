package co.grandcircus.CoffeeShop.Dao;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import co.grandcircus.CoffeeShop.Entities.User;


@Repository
public class UserDao {

	@Autowired
	private JdbcTemplate jdbc;

	public List<User> findAll() {
		String sql = "SELECT * FROM user";
		return jdbc.query(sql, new BeanPropertyRowMapper<>(User.class));
	}

	public User findById(Long id) {
		String sql = "SELECT * FROM user WHERE id= ?";// Correct way
		return jdbc.queryForObject(sql, new BeanPropertyRowMapper<>(User.class), id);
	}

	public void update(User user) {

		String sql = "UPDATE user SET firstname=?, lastname=?, email=?, age=?, password=? WHERE id=?";
		jdbc.update(sql, user.getFirstName(), user.getLastName(), user.getEmail(), user.getAge(), user.getPassword(), user.getId());
	}

	public void create(User user) {
		String sql = "INSERT INTO user (firstName, lastName, age, email, password, memberSince) VALUES(?, ?, ?, ?, ?, ?)";
		jdbc.update(sql, user.getFirstName(), user.getLastName(), user.getAge(), user.getEmail(), user.getPassword(), "curdate()");
	}

	public void delete(Long id) {
		String sql = "DELETE FROM user WHERE id = ?";
		jdbc.update(sql, id);
	}
}