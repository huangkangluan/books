package books.service;

import com.hzit.dao.entity.Book;

import java.util.List;

/**
 * Created by Administrator on 2016/9/30.
 */
public interface BooksService {
    public List<Book> findAll();
    public Book findByBook(int bookId);
    public int updateBook(Book book);
}
