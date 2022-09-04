package servlet;

import manager.AuthorManager;
import manager.BookManager;
import model.Author;
import model.Book;
import model.Description;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet(urlPatterns = "/books/edit")
public class EditBookServlet extends HttpServlet {
    private BookManager bookManager = new BookManager();
    private AuthorManager authorManager = new AuthorManager();

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        int bookId = Integer.parseInt(req.getParameter("id"));
        Book book = bookManager.getBookById(bookId);
        req.setAttribute("books", book);
        List<Author> authors = authorManager.getAll();
        req.setAttribute("authors", authors);
        req.getRequestDispatcher("/WEB-INF/editBook.jsp").forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        int bookId = Integer.parseInt(req.getParameter("id"));
        String title = req.getParameter("title");
        String description = req.getParameter("description");
        double price = Double.parseDouble(req.getParameter("price"));
        int authorId = Integer.parseInt(req.getParameter("author_id"));
        Author author = authorManager.getAuthorById(authorId);
        Book book = Book.builder()
                .title(title)
                .description(Description.valueOf(description))
                .price(price)
                .author(author)
                .id(bookId)
                .build();
        bookManager.editBook(book);
        resp.sendRedirect("/books");
    }
}

