package co.grandcircus.CoffeeShop.Dao;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import co.grandcircus.CoffeeShop.Entities.Product;


@Repository
public class ProductDao {

	@Autowired
	private JdbcTemplate jdbc;

	public List<Product> findAll() {
		String sql = "SELECT * FROM product";
		return jdbc.query(sql, new BeanPropertyRowMapper<>(Product.class));
	}

	public Product findById(Long id) {
		String sql = "SELECT * FROM product WHERE id= ?";
		return jdbc.queryForObject(sql, new BeanPropertyRowMapper<>(Product.class), id);
	}

	public void update(Product product) {

		String sql = "UPDATE product SET name=?, price=?, description=? WHERE id=?";
		jdbc.update(sql, product.getName(), product.getPrice(), product.getDescription(), product.getId());
	}

	public void create(Product product) {
		String sql = "INSERT INTO product (name, price, description) VALUES(?, ?, ?)";
		jdbc.update(sql, product.getName(), product.getPrice(), product.getDescription());
	}

	public void delete(Long id) {
		String sql = "DELETE FROM product WHERE id = ?";
		jdbc.update(sql, id);
	}
}
