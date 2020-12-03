package kong.xiao.controller;

import kong.xiao.pojo.Books;
import kong.xiao.service.BookService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;
@Controller
@RequestMapping("/book")
public class BookControll {
    //具有 bookService属性，调用Service层的方法
    private BookService bookService;

    //注入属性
    @Autowired
    @Qualifier(value = "bookServiceImpl")
    public void setBookService(BookService bookService) {
        this.bookService = bookService;
    }

    //查询全部书籍并返回页面
    @RequestMapping("/allBook")
    public String list(Model model){
        List<Books> books=bookService.queryAllBook();
        model.addAttribute("list",books);
        return "allBook";
    }

    //跳转到增加书籍页面
    @RequestMapping("/toAddBook")
    public String toAddPage(){
        return "addBook";
    }


    //添加书籍
    @RequestMapping("/addBook")
    public String addBook(Books books){
        bookService.addBook(books);
        return "redirect:/book/allBook";
    }

    //跳转到修改书籍
    @RequestMapping("/toUpdate")
    public String toUpdatePage(Model model){
//       Books books1=bookService.queryBookById(id);
//       model.addAttribute("upDate",books1);
       return "updateBook";
    }




}
