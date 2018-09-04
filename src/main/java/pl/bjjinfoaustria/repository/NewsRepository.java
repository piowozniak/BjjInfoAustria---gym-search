package pl.coderslab.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import pl.coderslab.entity.News;

public interface NewsRepository extends JpaRepository<News, Long>{

}
