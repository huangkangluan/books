import books.StartWebApp;
import books.service.impl.BooksServiceImpl;
import com.hzit.dao.entity.Book;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.SpringApplicationConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import java.util.List;

/**
 * Created by Administrator on 2016/9/30.
 */
@RunWith(SpringJUnit4ClassRunner.class)
@SpringApplicationConfiguration(value = StartWebApp.class)
public class Test {
    @Autowired
    private BooksServiceImpl booksService;
    @org.junit.Test
    public void one(){
        List<Book> list=booksService.findAll();
        for (Book b:list){
            System.out.println(b.getBookName());
        }
    }
}
