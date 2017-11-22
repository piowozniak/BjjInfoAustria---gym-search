package pl.coderslab.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import pl.coderslab.entity.Writer;

public interface WriterRepository extends JpaRepository<Writer, Long>  {

}
