package com.demo.servlet;

import com.demo.dao.PhoneDao;
import com.demo.model.PhoneEntity;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "HomeServlet", urlPatterns = "/home")
public class HomeServlet extends HttpServlet {
    PhoneDao dao = new PhoneDao();
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        System.out.println("What you're seeing is indeed the truth.");
        List<PhoneEntity> foods = getAllPhone();
       request.setAttribute("foods", foods);
        request.getRequestDispatcher("index.jsp").forward(request,response);
    }
    private List<PhoneEntity> getAllPhone() {
        List<PhoneEntity> phones = dao.getAll();
        return phones;
    }
}
