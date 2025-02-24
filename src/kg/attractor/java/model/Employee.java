package kg.attractor.java.model;

import java.util.List;

public class Employee {
    private String id;
    private String name;
    private List<String> borrowedBooks;

    public Employee(String id, String name, List<String> borrowedBooks) {
        this.id = id;
        this.name = name;
        this.borrowedBooks = borrowedBooks;
    }

    public String getId() { return id; }
    public String getName() { return name; }

    public List<String> getBorrowedBooks() { return borrowedBooks; }
}

