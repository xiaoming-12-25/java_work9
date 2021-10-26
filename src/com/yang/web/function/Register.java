package com.yang.web.function;

import com.yang.web.entry.Account;
import com.yang.web.uitl.JDBC;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@WebServlet(urlPatterns = "/rg.do")
public class Register extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        doPost(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setCharacterEncoding("UTF-8");
        resp.setContentType("text/html;charset=UTF-8");
        String name = req.getParameter("name");
        String password = req.getParameter("password");
        String code = req.getParameter("code");
        HttpSession session = req.getSession();
        String yan = (String) session.getAttribute("yanzheng");
        session.removeAttribute("yanzheng");
        session.removeAttribute("enrollname");
        session.removeAttribute("enroll");
        JDBC jdbc = new JDBC();
        Account account = new Account(name, password);
        if (yan != null && yan.equalsIgnoreCase(code)) {
            if (jdbc.AddAccount(account)){
                resp.sendRedirect("denglu/login.jsp");
            }else {
                session.setAttribute("enrollname","用户名或密码格式不符");
                resp.sendRedirect("denglu/register.jsp");
            }
        } else {
            session.setAttribute("enroll", "验证码错误");
            resp.sendRedirect("denglu/register.jsp");
            }
    }
}
