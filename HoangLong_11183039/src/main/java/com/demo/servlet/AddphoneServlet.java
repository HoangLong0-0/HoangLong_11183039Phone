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

@WebServlet(name = "AddphoneServlet", urlPatterns = "/addphone")
public class AddphoneServlet extends HttpServlet {
    PhoneDao dao = new PhoneDao();

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String name = request.getParameter("name");
        int price = Integer.parseInt(request.getParameter("price"));
        int brand_id = Integer.parseInt(request.getParameter("brand_id"));
        String des = request.getParameter("description");
        addPhone(name, price, brand_id, des);

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        List<PhoneEntity> phones = getAllPhone();
        request.setAttribute("phones", phones);
        request.getRequestDispatcher("addphone.jsp").forward(request, response);


    }

    private void addPhone(String name, int price, int brand_id, String des) {
        PhoneEntity p = new PhoneEntity(name, price, brand_id, des);
        dao.insertPhone(p);
    }

    private List<PhoneEntity> getAllPhone() {
        List<PhoneEntity> Phones = dao.getAll();
        return Phones;
    }


}
