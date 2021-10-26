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
@WebServlet(urlPatterns = "/dl.do")
public class Login extends HttpServlet {
        @Override
        protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
            this.doPost(req, resp);
        }

        @Override
        protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
            req.setCharacterEncoding("UTF-8");
            resp.setContentType("text/html;charset=UTF-8");
            String name = req.getParameter("name");
            String password = req.getParameter("password");
            String code = req.getParameter("code");
            HttpSession session = req.getSession();
            JDBC jdbc = new JDBC();
            Account account=jdbc.SelectUsename(name);
            String yan =(String) session.getAttribute("yanzheng");
            session.removeAttribute("yanzheng");
            session.removeAttribute("errname");
            session.removeAttribute("err");
            if (yan!=null && yan.equalsIgnoreCase(code)){
                if (name!=null && password!=null && name.equals(account.getUsername()) && password.equals(account.getPassword())){
                    session.setAttribute("users",name);
                    resp.sendRedirect("wieku/index.jsp");
                }else {
                    session.setAttribute("errname","用户名或密码错误");
                    resp.sendRedirect("denglu/login.jsp");
                }
            }else {
                session.setAttribute("err","验证码错误");
                resp.sendRedirect("denglu/login.jsp");
            }
        }
}
