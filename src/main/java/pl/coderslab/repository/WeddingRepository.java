package pl.coderslab.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import pl.coderslab.entity.Wedding;

import java.util.List;

public interface WeddingRepository extends JpaRepository <Wedding, Long> {

    List <Wedding> findAllByOrganizerId (Long id);

    Wedding getFirstById (Long id);

}
