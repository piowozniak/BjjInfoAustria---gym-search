package pl.coderslab.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import pl.coderslab.entity.City;
import pl.coderslab.entity.Gym;
import pl.coderslab.entity.Style;

public interface GymRepository extends JpaRepository<Gym, Long> {

	List<Gym> findByName(String name);
	
//	@Query("select u from Gym u where u.city.id = ?1")
	List<Gym> findByCity(Long Id);
}
