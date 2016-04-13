package edu.wctc.ssm.bookwebapp.repository;

import edu.wctc.ssm.bookwebapp.entity.Book;
import java.io.Serializable;
import org.springframework.data.jpa.repository.JpaRepository;

/**
 *
 * @author Scott
 */
public interface BookRepository extends JpaRepository<Book, Integer>, Serializable {
    
}
