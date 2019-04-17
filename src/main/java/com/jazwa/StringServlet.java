package com.jazwa;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.*;
import java.util.stream.Collectors;

@WebServlet("/StringServlet")
public class StringServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String s = req.getParameter("przetworz_string");
        String p = req.getParameter("todo");
        StringBuffer sb = new StringBuffer(s);
        String[] rand = s.split("");
        Random random = new Random();

        if (p!=null) {
            switch (p) {
                case "random":
                    ;
                case "reverse":
                    s = sb.reverse().toString();
                    break;
                case "upper":
                    s = s.toUpperCase();
                    break;
                case "lower":
                    s = s.toLowerCase();
                    break;
            }
        }
        RequestDispatcher rd = req.getRequestDispatcher("resultString.jsp");
        req.setAttribute("result",s);
        rd.forward(req,resp);
    }
}
