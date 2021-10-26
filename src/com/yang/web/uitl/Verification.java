package com.yang.web.uitl;

import javax.imageio.ImageIO;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.awt.*;
import java.awt.image.BufferedImage;
import java.io.IOException;
import java.util.Random;

public class Verification {
    public String Ver(int width , int height , HttpServletRequest req , HttpServletResponse resp){
//        int width=100;
//        int height=50;
        // 1.创建图片对象（宽，高，图片类型（BufferedImage里面的常量TYPE_INT_BGR））
        BufferedImage image=new BufferedImage(width,height,BufferedImage.TYPE_INT_BGR);
        //2.美化图片
        //2.1 填充背景色
        Graphics gg = image.getGraphics();//获取画笔对象
        gg.setColor(Color.PINK);//获取颜色
        gg.fillRect(0,0,width,height);//填充颜色
        //2.2 画边框
        gg.setColor(Color.BLUE);
        gg.drawRect(0,0,width-1,height-1);//画边框
        //2.3 填入字节
        String st="ABCDEFGHIJKLMIOPQRSTUVWXYZabcdefjhijklmiopqrstuvwxyz0123456789";
        //生成随机角标
        StringBuffer stringBuffer=new StringBuffer();
        Random random = new Random();
        for (int i = 1; i <= 4; i++) {
            int index = random.nextInt(st.length());//给定一个最大为字符长度的随机角标
            char ch = st.charAt(index);
            stringBuffer.append(ch);
            gg.drawString(ch+"",width/5*i,height/2);//写验证码
        }
        //将获取的字符串存入Session中
        String ss=stringBuffer.toString();
//        req.getSession().setAttribute("yanzheng",ss);
        //2.4 添加干扰线
//        gg.setColor(Color.green);
        for (int i = 1; i < 10; i++) {
            gg.setColor(getRandColor(110,200));
            int x1 = random.nextInt(width);
            int x2 = random.nextInt(width);
            int y1 = random.nextInt(height);
            int y2 = random.nextInt(height);
            gg.drawLine(x1,x2,y1,y2);
        }
        //3.输出图片展示到页面
        //ImageIO的write方法可以将内存中的图片输出出来（image对象，文件后缀名，输出到哪）
        try {
            ImageIO.write(image,"jpg",resp.getOutputStream());
        } catch (IOException e) {
            e.printStackTrace();
        }
        return ss;
    }
    Color getRandColor(int ff,int cc){
        //给定范围获得随机颜色
        Random random = new Random();
        if(ff>255) ff=255;
        if(cc>255) cc=255;
        int r=ff+random.nextInt(cc-ff);
        int g=ff+random.nextInt(cc-ff);
        int b=ff+random.nextInt(cc-ff);
        return new Color(r,g,b);
    }
}
