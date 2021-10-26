package com.yang.web.function;

import cn.hutool.captcha.CaptchaUtil;
import cn.hutool.captcha.LineCaptcha;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
@WebServlet(urlPatterns = "/imgs.do")
public class Vhutool extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        doPost(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        LineCaptcha lc = CaptchaUtil.createLineCaptcha(100,40,4,50);
        lc.write(resp.getOutputStream());
        resp.getOutputStream().close();
        String code = lc.getCode();
        req.getSession().setAttribute("yanzheng",code);
    }
}
