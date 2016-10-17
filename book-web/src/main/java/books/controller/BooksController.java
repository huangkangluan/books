package books.controller;

import books.service.impl.BooksServiceImpl;
import com.hzit.dao.entity.Book;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.List;

/**
 * Created by Administrator on 2016/9/30.
 */
@Controller
public class BooksController {
    @Autowired
    private BooksServiceImpl booksService;
    @RequestMapping("/findbooks")
    public String findAll(ModelMap modelMap){
        List<Book> list=booksService.findAll();
        modelMap.put("list",list);
        return "home";
    }
    @RequestMapping("/toupdateBook")
    public String findByid(@RequestParam("bookId") Integer bookId,ModelMap modelMap){
        try{
            Book book=booksService.findByBook(bookId);
            modelMap.put("book",book);
            return "updatebook";
        }catch (Exception e){
            e.printStackTrace();
        }
        return "";
    }
    @RequestMapping("/doupdatebook")
    @ResponseBody
    public int updateSubject(Book book){
        int num=booksService.updateBook(book);
        return num;
    }
}
