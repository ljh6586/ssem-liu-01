package kong.xiao.service;

import kong.xiao.dao.BookMapper;
import kong.xiao.pojo.Books;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
@Service
public class BookServiceImpl implements BookService{


    private BookMapper bookMapper;


    @Autowired
    public void setBookMapper(BookMapper bookMapper) {

        this.bookMapper = bookMapper;

    }



    public int addBook(Books book) {

        return bookMapper.addBook(book);

    }



    public int deleteBookById(int id) {

        return bookMapper.deleteBookById(id);

    }



    public int updateBook(Books books) {

        return bookMapper.updateBook(books);

    }



    public Books queryBookById(int id) {

        return bookMapper.queryBookById(id);

    }



    public List<Books> queryAllBook() {

        return bookMapper.queryAllBook();

    }
}
