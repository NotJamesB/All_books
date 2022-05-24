package com.codingdojo.books.controllers;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.codingdojo.books.models.Book;
import com.codingdojo.books.services.BookService;


@Controller
public class BookController {
	
	@Autowired
	BookService bookService;
	
	@RequestMapping("/books/{bookId}")
	public String index(@PathVariable("bookId") Long bookId, Model model) {
		System.out.println(bookId);
		Book book = bookService.findBook(bookId);
		
		model.addAttribute("book", book);
		return "show.jsp";
	}
    @RequestMapping("/books")
    public String index(Model model) {
        List<Book> books = bookService.allBooks();
        model.addAttribute("allBooks", books);
        return "index.jsp";
    }
}
