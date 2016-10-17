package books.service.impl;

import books.service.BooksService;
import com.hzit.dao.entity.Book;
import com.hzit.dao.mapper.BookMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * Created by Administrator on 2016/9/30.
 */
@Service
public class BooksServiceImpl implements BooksService{
    @Autowired
    private BookMapper bookMapper;
    @Override
    public List<Book> findAll() {
        return bookMapper.searchBookByParams(null);
    }

    @Override
    public Book findByBook(int bookId) {
        Map map=new HashMap();
        map.put("bookId",bookId);
        List<Book> list=bookMapper.searchBookByParams(map);
        if (list.size()==1){
            return list.get(0);
        }else {
            return null;
        }
    }

    @Override
    public int updateBook(Book book) {
    return  bookMapper.updateBook(book);

    }
}
