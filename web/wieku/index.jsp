<%--
  Created by IntelliJ IDEA.
  User: 29081
  Date: 2021/10/13
  Time: 17:16
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>维库电子市场网 - 电子元器件采购网上平台 Dzsc.com</title>
  <link rel="stylesheet" href="index.css">
</head>
<body>
<!-- 版心 -->
<div class="main">
  <!-- 导航部分 -->
  <div class="navs">
    <div class="nav">
      <!-- 导航左边 -->
      <div class="nav-left">
        <!-- 手机端 -->
        <div class="one">
          <i class="iphone">
            <img
                    src="images/ico_iphone.png" alt=""></i>
          <span>手机端</span>
          <i class="ico"><img
                  src="images/ico_iphone_xjt.png" alt=""></i>
          <!-- 二级导航 -->
          <div class="top-iphone-ewm">
            <dl>
              <img src="images/IP1.jpg" alt="">
              <dd>手机版</dd>
              <!-- 三级导航 -->
              <div class="sanji">
                <b><img src="images/IP1.jpg" alt=""></b>
              </div>
            </dl>

            <dl>
              <img src="images/ip2.png" alt="">
              <dd>Android APP</dd>
              <!-- 三级导航 -->
              <div class="sanji2">
                <b><img src="images/ip2.png" alt=""></b>
              </div>
            </dl>

            <dl>
              <img src="images/ip3.jpg" alt="">
              <dd>微信公众号</dd>
              <!-- 三级导航 -->
              <div class="sanji3">
                <b><img src="images/ip3.jpg" alt=""></b>
              </div>
            </dl>
            <dl>
              <img src="images/ip4.jpg" alt="">
              <dd>卫裤官方抖音</dd>
              <!-- 三级导航 -->
              <div class="sanji4">
                <b><img src="images/ip4.jpg" alt=""></b>
              </div>
            </dl>
          </div>

        </div>
        <div class="two">|</div>
        <div class="three">
          <span>你好，欢迎来到维库电子市场网</span>
          <c:if test="${sessionScope.users==null}">
          <a href="/denglu/login.jsp">登录</a>
          <b class="twos">|</b>
          <a href="/denglu/register.jsp">免费注册</a>
          </c:if>
          <c:if test="${sessionScope.users!=null}">
            <span>你好：${sessionScope.users}</span>
          </c:if>
        </div>
      </div>
      <!-- 导航右边 -->
      <div class="nav-right">
        <ul>
          <li>
            <span>网站首页</span>
            <b class="two">|</b>
          </li>
          <li>
            <span>采购商服务</span>
            <i class="ico"><img
                    src="images/ico_iphone_xjt.png" alt=""></i>
            <b class="two">|</b>
            <div class="top-navmenulist">
              <div><a href="#">发布采购信息</a></div>
              <div><a href="#">修改/删除采购</a></div>
            </div>
          </li>
          <li>
            <span>会员服务</span>
            <i class="ico"><img
                    src="images/ico_iphone_xjt.png" alt=""></i>
            <b class="two">|</b>
            <div class="top-navmenulist toptwo">
              <div><a href="#">发布采购信息</a></div>
              <div><a href="#">修改/删除采购</a></div>
            </div>
          </li>
          <li>
            <span>工程师服务</span>
            <i class="ico"><img
                    src="images/ico_iphone_xjt.png" alt=""></i>
            <b class="two">|</b>
            <div class="top-navmenulist topthree">
              <div><a href="#">发布采购信息</a></div>
              <div><a href="#">修改/删除采购</a></div>
            </div>
          </li>
          <li>
            <span>网站导航</span>
            <i class="ico"><img
                    src="images/ico_iphone_xjt.png" alt=""></i>
            <div class="top-navmenulist topfour">
              <div><a href="#">发布采购信息</a></div>
              <div><a href="#">修改/删除采购</a></div>
            </div>
          </li>
        </ul>
      </div>
    </div>
  </div>

  <!-- 头部 -->
  <div class="header">
    <!-- 头左 -->
    <div class="header-left">
      <h1>

      </h1>
    </div>
    <!-- 输入框 -->
    <div class="Search">
      <div class="searchs">
        <form>
          <div class="form-left">
            <span class="chanpin">产品</span>
            <i class="ico"><img
                    src="images/ico_iphone_xjt.png" alt=""></i>
          </div>
          <input class="inputs" type="text"
                 placeholder="可输入型号和参数(如 LM358 TI SOP19+)或中文关键词">
          <i class="keywordclose">
            <img src="images//error.png" alt="">
          </i>
          <button type="button" class="suo"> 搜索</button>
        </form>
      </div>
      <!-- 热门频道 -->
      <div class="search-top">
        <ul>
          <li>热门频道：</li>
          <li>传感器</li>
          <li>连接器</li>
          <li>开关</li>
          <li>三极管</li>
          <li>电容</li>
        </ul>
      </div>
    </div>
    <div class="fabu">
      <p>
        <i><img src="images/icofast.png" alt=""></i>
        <span>一键发布采购</span>
      </p>
      <p>
        <i><img src="images/bomUp.png" alt=""></i>
        <span>上传BOM</span>
      </p>
    </div>
  </div>

  <!-- 产品分类 -->
  <div class="goods">
    <div class="goods-left">
      <i></i>
      <span>产品分类</span>
      <b>全部</b>
    </div>
    <div class="goods-right">
      <ul>
        <li>
          <i><img src="images/xin.png" alt=""></i>
          芯视频
          <i><img src="images/xin.gif" alt=""></i>
        </li>
        <li>IC原装现货</li>
        <li>电子元器件</li>
        <li>技术资料</li>
        <li>电子资讯</li>
        <li>Datasheet</li>
        <li>原厂查询</li>
        <li>今日特价
          <i><img src="images/xin.gif" alt=""></i>
        </li>
      </ul>
    </div>
  </div>
</div>
</div>




<!-- 产品分类下面 和轮播图 -->

<div class="banner">
  <!-- 产品分类下面 -->
  <div class="banner-left">
    <ul class="cebian">
      <li>
        <i></i>
        <b>IC</b>
        <span>电源IC</span>
        <span>半导体存储器</span>

        <div class="dw">
          <div class="tit">
            <span>IC/电源IC/半导体存储器</span>
          </div>
          <div class="conter">
            <ul>
              <li>
                <b ><a href="javascript:">IC现货资源</a></b>
                <p>
                  <a href="javascript:">IC类</a
                  ><a href="javascript:">二三极管</a
                ><a href="javascript:">单片机</a
                ><a href="javascript:">内存</a
                ><a href="javascript:">IGBT</a
                ><a href="javascript:">MOS管</a
                ><a href="javascript:">光耦</a
                ><a href="javascript:">连接器</a
                ><a href="javascript:">滤波器</a
                ><a href="javascript:">传感器</a
                ><a href="javascript:">传感器</a>
                </p>
              </li>
              <li>
                <b><a href="javascript:">电源IC</a></b>
                <p>
                  <a href="javascript:">LDO</a
                  ><a href="javascript:">DC-AC</a
                ><a href="javascript:">DC-DC</a
                ><a href="javascript:">LED驱动</a
                ><a href="javascript:">稳压IC</a
                ><a href="javascript:">充电管理IC</a
                ><a href="javascript:">其他电源IC</a>
                </p>
              </li>
              <li>
                <b><a href="javascript:">半导体存储器</a></b>
                <p>
                  <a href="javascript:">Nand flash</a
                  ><a href="javascript:">PROM（可编程ROM）</a
                ><a href="javascript:"
                >Flash Memory（闪存/快闪存储器）</a
                ><a href="javascript:">EEPROM（电可擦除可编程ROM）</a
                ><a href="javascript:">DRAM（MOS型动态存储器）</a
                ><a href="javascript:">SRAM （MOS型动态存储器）</a
                ><a href="javascript:">ROM（只读存储器）</a
                ><a href="javascript:">NVROM(非易失随机存储器）</a
                ><a href="javascript:">RAM（随机存取存储器）</a
                ><a href="javascript:">SDRAM（同步动态存储器）</a
                ><a href="javascript:">OTP（一次可编程ROM）</a>
                  <a href="javascript:">EPROM（紫外线可擦除可编程ROM）</a>
                </p>
              </li>
            </ul>
          </div>
        </div>

      </li>
      <li>
        <i></i>
        <span>二极管</span>
        <span>三极管</span>
        <span>MOSFET</span>
        <span>IGBT</span>

        <div class="dw">
          <div class="tit">
            <span>二极管/三极管/MOS/可控硅</span>
          </div>
          <div class="conter">
            <ul>
              <li>
                <b ><a href="javascript:">二极管</a></b>
                <p>
                  <a href="javascript:">IC类</a>
                  <a href="javascript:">二三极管</a
                  ><a href="javascript:">单片机</a
                ><a href="javascript:">内存</a
                ><a href="javascript:">IGBT</a
                ><a href="javascript:">MOS管</a
                ><a href="javascript:">光耦</a
                ><a href="javascript:">连接器</a
                ><a href="javascript:">滤波器</a
                ><a href="javascript:">传感器</a
                ><a href="javascript:">传感器</a>
                </p>
              </li>
              <li>
                <b><a href="javascript:">三极管</a></b>
                <p>
                  <a href="javascript:">LDO</a
                  ><a href="javascript:">DC-AC</a
                ><a href="javascript:">DC-DC</a
                ><a href="javascript:">LED驱动</a
                ><a href="javascript:">稳压IC</a
                ><a href="javascript:">充电管理IC</a
                ><a href="javascript:">其他电源IC</a>
                </p>
              </li>
              <li>
                <b><a href="javascript:">MOS</a></b>
                <p>
                  <a href="javascript:">Nand flash</a
                  ><a href="javascript:">PROM（可编程ROM）</a
                ><a href="javascript:"
                >Flash Memory（闪存/快闪存储器）</a
                ><a href="javascript:">EEPROM（电可擦除可编程ROM）</a
                ><a href="javascript:">DRAM（MOS型动态存储器）</a
                ><a href="javascript:">SRAM （MOS型动态存储器）</a
                ><a href="javascript:">ROM（只读存储器）</a
                ><a href="javascript:">NVROM(非易失随机存储器）</a
                ><a href="javascript:">RAM（随机存取存储器）</a
                ><a href="javascript:">SDRAM（同步动态存储器）</a
                ><a href="javascript:">OTP（一次可编程ROM）</a>
                  <a href="javascript:">EPROM（紫外线可擦除可编程ROM）</a>
                </p>
              </li>
            </ul>
          </div>
        </div>
      </li>
      <li>
        <i></i>
        <span>电容</span>
        <span>电感</span>
        <span>电阻</span>
        <span>电位器</span>

        <div class="dw">
          <div class="tit">
            <span>电容/电感/电阻/电位器</span>
          </div>
          <div class="conter">
            <ul>
              <li>
                <b ><a href="javascript:">电容</a></b>
                <p>
                  <a href="javascript:">IC类</a>
                  <a href="javascript:">二三极管</a
                  ><a href="javascript:">单片机</a
                ><a href="javascript:">内存</a
                ><a href="javascript:">IGBT</a
                ><a href="javascript:">MOS管</a
                ><a href="javascript:">光耦</a
                ><a href="javascript:">连接器</a
                ><a href="javascript:">滤波器</a
                ><a href="javascript:">传感器</a
                ><a href="javascript:">传感器</a>
                </p>
              </li>
              <li>
                <b><a href="javascript:">电感</a></b>
                <p>
                  <a href="javascript:">LDO</a
                  ><a href="javascript:">DC-AC</a
                ><a href="javascript:">DC-DC</a
                ><a href="javascript:">LED驱动</a
                ><a href="javascript:">稳压IC</a
                ><a href="javascript:">充电管理IC</a
                ><a href="javascript:">其他电源IC</a>
                </p>
              </li>
              <li>
                <b><a href="javascript:">电阻</a></b>
                <p>
                  <a href="javascript:">Nand flash</a
                  ><a href="javascript:">PROM（可编程ROM）</a
                ><a href="javascript:"
                >Flash Memory（闪存/快闪存储器）</a
                ><a href="javascript:">EEPROM（电可擦除可编程ROM）</a
                ><a href="javascript:">DRAM（MOS型动态存储器）</a
                ><a href="javascript:">SRAM （MOS型动态存储器）</a
                ><a href="javascript:">ROM（只读存储器）</a
                ><a href="javascript:">NVROM(非易失随机存储器）</a
                ><a href="javascript:">RAM（随机存取存储器）</a
                ><a href="javascript:">SDRAM（同步动态存储器）</a
                ><a href="javascript:">OTP（一次可编程ROM）</a>
                  <a href="javascript:">EPROM（紫外线可擦除可编程ROM）</a>
                </p>
              </li>
            </ul>
          </div>
        </div>
      </li>
      <li>
        <i></i>
        <span>连接器</span>
        <span>开关</span>
        <span>PCB</span>
        <span>保险原件</span>

        <div class="dw">
          <div class="tit">
            <span>连接器/开关/PCB/保险元件</span>
          </div>
          <div class="conter">
            <ul>
              <li>
                <b ><a href="javascript:">连接器</a></b>
                <p>
                  <a href="javascript:">IC类</a>
                  <a href="javascript:">二三极管</a
                  ><a href="javascript:">单片机</a
                ><a href="javascript:">内存</a
                ><a href="javascript:">IGBT</a
                ><a href="javascript:">MOS管</a
                ><a href="javascript:">光耦</a
                ><a href="javascript:">连接器</a
                ><a href="javascript:">滤波器</a
                ><a href="javascript:">传感器</a
                ><a href="javascript:">传感器</a>
                </p>
              </li>
              <li>
                <b><a href="javascript:">开关</a></b>
                <p>
                  <a href="javascript:">LDO</a
                  ><a href="javascript:">DC-AC</a
                ><a href="javascript:">DC-DC</a
                ><a href="javascript:">LED驱动</a
                ><a href="javascript:">稳压IC</a
                ><a href="javascript:">充电管理IC</a
                ><a href="javascript:">其他电源IC</a>
                </p>
              </li>
              <li>
                <b><a href="javascript:">PCB</a></b>
                <p>
                  <a href="javascript:">Nand flash</a
                  ><a href="javascript:">PROM（可编程ROM）</a
                ><a href="javascript:"
                >Flash Memory（闪存/快闪存储器）</a
                ><a href="javascript:">EEPROM（电可擦除可编程ROM）</a
                ><a href="javascript:">DRAM（MOS型动态存储器）</a
                ><a href="javascript:">SRAM （MOS型动态存储器）</a
                ><a href="javascript:">ROM（只读存储器）</a
                ><a href="javascript:">NVROM(非易失随机存储器）</a
                ><a href="javascript:">RAM（随机存取存储器）</a
                ><a href="javascript:">SDRAM（同步动态存储器）</a
                ><a href="javascript:">OTP（一次可编程ROM）</a>
                  <a href="javascript:">EPROM（紫外线可擦除可编程ROM）</a>
                </p>
              </li>
            </ul>
          </div>
        </div>
      </li>
      <li>
        <i></i>
        <span>电源</span>
        <span>变压器</span>
        <span>电池</span>
        <span>电线电缆</span>

        <div class="dw">
          <div class="tit">
            <span>电源/变压器/电池/电线电缆</span>
          </div>
          <div class="conter">
            <ul>
              <li>
                <b ><a href="javascript:">电源</a></b>
                <p>
                  <a href="javascript:">IC类</a>
                  <a href="javascript:">二三极管</a
                  ><a href="javascript:">单片机</a
                ><a href="javascript:">内存</a
                ><a href="javascript:">IGBT</a
                ><a href="javascript:">MOS管</a
                ><a href="javascript:">光耦</a
                ><a href="javascript:">连接器</a
                ><a href="javascript:">滤波器</a
                ><a href="javascript:">传感器</a
                ><a href="javascript:">传感器</a>
                </p>
              </li>
              <li>
                <b><a href="javascript:">变压器</a></b>
                <p>
                  <a href="javascript:">LDO</a
                  ><a href="javascript:">DC-AC</a
                ><a href="javascript:">DC-DC</a
                ><a href="javascript:">LED驱动</a
                ><a href="javascript:">稳压IC</a
                ><a href="javascript:">充电管理IC</a
                ><a href="javascript:">其他电源IC</a>
                </p>
              </li>
              <li>
                <b><a href="javascript:">电池</a></b>
                <p>
                  <a href="javascript:">Nand flash</a
                  ><a href="javascript:">PROM（可编程ROM）</a
                ><a href="javascript:"
                >Flash Memory（闪存/快闪存储器）</a
                ><a href="javascript:">EEPROM（电可擦除可编程ROM）</a
                ><a href="javascript:">DRAM（MOS型动态存储器）</a
                ><a href="javascript:">SRAM （MOS型动态存储器）</a
                ><a href="javascript:">ROM（只读存储器）</a
                ><a href="javascript:">NVROM(非易失随机存储器）</a
                ><a href="javascript:">RAM（随机存取存储器）</a
                ><a href="javascript:">SDRAM（同步动态存储器）</a
                ><a href="javascript:">OTP（一次可编程ROM）</a>
                  <a href="javascript:">EPROM（紫外线可擦除可编程ROM）</a>
                </p>
              </li>
            </ul>
          </div>
        </div>
      </li>
      <li>
        <i></i>
        <span>石英器件</span>
        <span>陶瓷元件</span>
        <span>电声元件</span>
        <div class="dw">
          <div class="tit">
            <span>石英器件/陶瓷元件/电声元件</span>
          </div>
          <div class="conter">
            <ul>
              <li>
                <b ><a href="javascript:">石英器件</a></b>
                <p>
                  <a href="javascript:">IC类</a>
                  <a href="javascript:">二三极管</a
                  ><a href="javascript:">单片机</a
                ><a href="javascript:">内存</a
                ><a href="javascript:">IGBT</a
                ><a href="javascript:">MOS管</a
                ><a href="javascript:">光耦</a
                ><a href="javascript:">连接器</a
                ><a href="javascript:">滤波器</a
                ><a href="javascript:">传感器</a
                ><a href="javascript:">传感器</a>
                </p>
              </li>
              <li>
                <b><a href="javascript:">陶瓷期间</a></b>
                <p>
                  <a href="javascript:">LDO</a
                  ><a href="javascript:">DC-AC</a
                ><a href="javascript:">DC-DC</a
                ><a href="javascript:">LED驱动</a
                ><a href="javascript:">稳压IC</a
                ><a href="javascript:">充电管理IC</a
                ><a href="javascript:">其他电源IC</a>
                </p>
              </li>
              <li>
                <b><a href="javascript:">电声原件</a></b>
                <p>
                  <a href="javascript:">Nand flash</a
                  ><a href="javascript:">PROM（可编程ROM）</a
                ><a href="javascript:"
                >Flash Memory（闪存/快闪存储器）</a
                ><a href="javascript:">EEPROM（电可擦除可编程ROM）</a
                ><a href="javascript:">DRAM（MOS型动态存储器）</a
                ><a href="javascript:">SRAM （MOS型动态存储器）</a
                ><a href="javascript:">ROM（只读存储器）</a
                ><a href="javascript:">NVROM(非易失随机存储器）</a
                ><a href="javascript:">RAM（随机存取存储器）</a
                ><a href="javascript:">SDRAM（同步动态存储器）</a
                ><a href="javascript:">OTP（一次可编程ROM）</a>
                  <a href="javascript:">EPROM（紫外线可擦除可编程ROM）</a>
                </p>
              </li>
            </ul>
          </div>
        </div>
      </li>
      <li>
        <i></i>
        <span>LED</span>
        <span>显示屏</span>
        <span>光纤/光电耦合器</span>
        <span>IGBT</span>
        <div class="dw">
          <div class="tit">
            <span>LED/显示屏/光电子/光纤</span>
          </div>
          <div class="conter">
            <ul>
              <li>
                <b ><a href="javascript:">IC现货资源</a></b>
                <p>
                  <a href="javascript:">IC类</a>
                  <a href="javascript:">二三极管</a
                  ><a href="javascript:">单片机</a
                ><a href="javascript:">内存</a
                ><a href="javascript:">IGBT</a
                ><a href="javascript:">MOS管</a
                ><a href="javascript:">光耦</a
                ><a href="javascript:">连接器</a
                ><a href="javascript:">滤波器</a
                ><a href="javascript:">传感器</a
                ><a href="javascript:">传感器</a>
                </p>
              </li>
              <li>
                <b><a href="javascript:">电源IC</a></b>
                <p>
                  <a href="javascript:">LDO</a
                  ><a href="javascript:">DC-AC</a
                ><a href="javascript:">DC-DC</a
                ><a href="javascript:">LED驱动</a
                ><a href="javascript:">稳压IC</a
                ><a href="javascript:">充电管理IC</a
                ><a href="javascript:">其他电源IC</a>
                </p>
              </li>
              <li>
                <b><a href="javascript:">半导体存储器</a></b>
                <p>
                  <a href="javascript:">Nand flash</a
                  ><a href="javascript:">PROM（可编程ROM）</a
                ><a href="javascript:"
                >Flash Memory（闪存/快闪存储器）</a
                ><a href="javascript:">EEPROM（电可擦除可编程ROM）</a
                ><a href="javascript:">DRAM（MOS型动态存储器）</a
                ><a href="javascript:">SRAM （MOS型动态存储器）</a
                ><a href="javascript:">ROM（只读存储器）</a
                ><a href="javascript:">NVROM(非易失随机存储器）</a
                ><a href="javascript:">RAM（随机存取存储器）</a
                ><a href="javascript:">SDRAM（同步动态存储器）</a
                ><a href="javascript:">OTP（一次可编程ROM）</a>
                  <a href="javascript:">EPROM（紫外线可擦除可编程ROM）</a>
                </p>
              </li>
            </ul>
          </div>
        </div>
      </li>
      <li>
        <i></i>
        <span>传感器</span>
        <span>继电器</span>
        <span>微特电机</span>
        <span>电源IC</span>
        <div class="dw">
          <div class="tit">
            <span>传感器/继电器/微特电机</span>
          </div>
          <div class="conter">
            <ul>
              <li>
                <b ><a href="javascript:">IC现货资源</a></b>
                <p>
                  <a href="javascript:">IC类</a>
                  <a href="javascript:">二三极管</a
                  ><a href="javascript:">单片机</a
                ><a href="javascript:">内存</a
                ><a href="javascript:">IGBT</a
                ><a href="javascript:">MOS管</a
                ><a href="javascript:">光耦</a
                ><a href="javascript:">连接器</a
                ><a href="javascript:">滤波器</a
                ><a href="javascript:">传感器</a
                ><a href="javascript:">传感器</a>
                </p>
              </li>
              <li>
                <b><a href="javascript:">三极管</a></b>
                <p>
                  <a href="javascript:">LDO</a
                  ><a href="javascript:">DC-AC</a
                ><a href="javascript:">DC-DC</a
                ><a href="javascript:">LED驱动</a
                ><a href="javascript:">稳压IC</a
                ><a href="javascript:">充电管理IC</a
                ><a href="javascript:">其他电源IC</a>
                </p>
              </li>
              <li>
                <b><a href="javascript:">MOS</a></b>
                <p>
                  <a href="javascript:">Nand flash</a
                  ><a href="javascript:">PROM（可编程ROM）</a
                ><a href="javascript:"
                >Flash Memory（闪存/快闪存储器）</a
                ><a href="javascript:">EEPROM（电可擦除可编程ROM）</a
                ><a href="javascript:">DRAM（MOS型动态存储器）</a
                ><a href="javascript:">SRAM （MOS型动态存储器）</a
                ><a href="javascript:">ROM（只读存储器）</a
                ><a href="javascript:">NVROM(非易失随机存储器）</a
                ><a href="javascript:">RAM（随机存取存储器）</a
                ><a href="javascript:">SDRAM（同步动态存储器）</a
                ><a href="javascript:">OTP（一次可编程ROM）</a>
                  <a href="javascript:">EPROM（紫外线可擦除可编程ROM）</a>
                </p>
              </li>
            </ul>
          </div>
        </div>
      </li>
      <li>
        <i></i>
        <span>变频器</span>
        <span>逆变器</span>
        <span>PLC</span>
        <span>编码器</span>
        <div class="dw">
          <div class="tit">
            <span>变频器/逆变器/PLC/编码器</span>
          </div>
          <div class="conter">
            <ul>
              <li>
                <b ><a href="javascript:">二极管</a></b>
                <p>
                  <a href="javascript:">IC类</a>
                  <a href="javascript:">二三极管</a
                  ><a href="javascript:">单片机</a
                ><a href="javascript:">内存</a
                ><a href="javascript:">IGBT</a
                ><a href="javascript:">MOS管</a
                ><a href="javascript:">光耦</a
                ><a href="javascript:">连接器</a
                ><a href="javascript:">滤波器</a
                ><a href="javascript:">传感器</a
                ><a href="javascript:">传感器</a>
                </p>
              </li>
              <li>
                <b><a href="javascript:">三极管</a></b>
                <p>
                  <a href="javascript:">LDO</a
                  ><a href="javascript:">DC-AC</a
                ><a href="javascript:">DC-DC</a
                ><a href="javascript:">LED驱动</a
                ><a href="javascript:">稳压IC</a
                ><a href="javascript:">充电管理IC</a
                ><a href="javascript:">其他电源IC</a>
                </p>
              </li>
              <li>
                <b><a href="javascript:">MOS</a></b>
                <p>
                  <a href="javascript:">Nand flash</a
                  ><a href="javascript:">PROM（可编程ROM）</a
                ><a href="javascript:"
                >Flash Memory（闪存/快闪存储器）</a
                ><a href="javascript:">EEPROM（电可擦除可编程ROM）</a
                ><a href="javascript:">DRAM（MOS型动态存储器）</a
                ><a href="javascript:">SRAM （MOS型动态存储器）</a
                ><a href="javascript:">ROM（只读存储器）</a
                ><a href="javascript:">NVROM(非易失随机存储器）</a
                ><a href="javascript:">RAM（随机存取存储器）</a
                ><a href="javascript:">SDRAM（同步动态存储器）</a
                ><a href="javascript:">OTP（一次可编程ROM）</a>
                  <a href="javascript:">EPROM（紫外线可擦除可编程ROM）</a>
                </p>
              </li>
            </ul>
          </div>
        </div>
      </li>
      <li>
        <i></i>
        <span>安防器材</span>
        <span>电子成套件</span>
        <span>MOSFET</span>
        <span>IGBT</span>
        <div class="dw">
          <div class="tit">
            <span>安防器材/电子成套件</span>
          </div>
          <div class="conter">
            <ul>
              <li>
                <b ><a href="javascript:">二极管</a></b>
                <p>
                  <a href="javascript:">IC类</a>
                  <a href="javascript:">二三极管</a
                  ><a href="javascript:">单片机</a
                ><a href="javascript:">内存</a
                ><a href="javascript:">IGBT</a
                ><a href="javascript:">MOS管</a
                ><a href="javascript:">光耦</a
                ><a href="javascript:">连接器</a
                ><a href="javascript:">滤波器</a
                ><a href="javascript:">传感器</a
                ><a href="javascript:">传感器</a>
                </p>
              </li>
              <li>
                <b><a href="javascript:">三极管</a></b>
                <p>
                  <a href="javascript:">LDO</a
                  ><a href="javascript:">DC-AC</a
                ><a href="javascript:">DC-DC</a
                ><a href="javascript:">LED驱动</a
                ><a href="javascript:">稳压IC</a
                ><a href="javascript:">充电管理IC</a
                ><a href="javascript:">其他电源IC</a>
                </p>
              </li>
              <li>
                <b><a href="javascript:">PPC</a></b>
                <p>
                  <a href="javascript:">Nand flash</a
                  ><a href="javascript:">PROM（可编程ROM）</a
                ><a href="javascript:"
                >Flash Memory（闪存/快闪存储器）</a
                ><a href="javascript:">EEPROM（电可擦除可编程ROM）</a
                ><a href="javascript:">DRAM（MOS型动态存储器）</a
                ><a href="javascript:">SRAM （MOS型动态存储器）</a
                ><a href="javascript:">ROM（只读存储器）</a
                ><a href="javascript:">NVROM(非易失随机存储器）</a
                ><a href="javascript:">RAM（随机存取存储器）</a
                ><a href="javascript:">SDRAM（同步动态存储器）</a
                ><a href="javascript:">OTP（一次可编程ROM）</a>
                  <a href="javascript:">EPROM（紫外线可擦除可编程ROM）</a>
                </p>
              </li>
            </ul>
          </div>
        </div>
      </li>
      <li>
        <i></i>
        <span>电子测量</span>
        <span>电子试验</span>
        <span>电子制造</span>
        <div class="dw">
          <div class="tit">
            <span>电子测量/电子试验/电子制造</span>
          </div>
          <div class="conter">
            <ul>
              <li>
                <b ><a href="javascript:">二极管</a></b>
                <p>
                  <a href="javascript:">IC类</a>
                  <a href="javascript:">二三极管</a
                  ><a href="javascript:">单片机</a
                ><a href="javascript:">内存</a
                ><a href="javascript:">IGBT</a
                ><a href="javascript:">MOS管</a
                ><a href="javascript:">光耦</a
                ><a href="javascript:">连接器</a
                ><a href="javascript:">滤波器</a
                ><a href="javascript:">传感器</a
                ><a href="javascript:">传感器</a>
                </p>
              </li>
              <li>
                <b><a href="javascript:">三极管</a></b>
                <p>
                  <a href="javascript:">LDO</a
                  ><a href="javascript:">DC-AC</a
                ><a href="javascript:">DC-DC</a
                ><a href="javascript:">LED驱动</a
                ><a href="javascript:">稳压IC</a
                ><a href="javascript:">充电管理IC</a
                ><a href="javascript:">其他电源IC</a>
                </p>
              </li>
              <li>
                <b><a href="javascript:">MOS</a></b>
                <p>
                  <a href="javascript:">Nand flash</a
                  ><a href="javascript:">PROM（可编程ROM）</a
                ><a href="javascript:"
                >Flash Memory（闪存/快闪存储器）</a
                ><a href="javascript:">EEPROM（电可擦除可编程ROM）</a
                ><a href="javascript:">DRAM（MOS型动态存储器）</a
                ><a href="javascript:">SRAM （MOS型动态存储器）</a
                ><a href="javascript:">ROM（只读存储器）</a
                ><a href="javascript:">NVROM(非易失随机存储器）</a
                ><a href="javascript:">RAM（随机存取存储器）</a
                ><a href="javascript:">SDRAM（同步动态存储器）</a
                ><a href="javascript:">OTP（一次可编程ROM）</a>
                  <a href="javascript:">EPROM（紫外线可擦除可编程ROM）</a>
                </p>
              </li>
            </ul>
          </div>
        </div>
      </li>
      <li>
        <i></i>
        <span>电子材料</span>
        <span>五金工具</span>
        <span>防静电产品</span>
        <div class="dw">
          <div class="tit">
            <span>电子材料/五金工具/防静电产品</span>
          </div>
          <div class="conter">
            <ul>
              <li>
                <b ><a href="javascript:">二极管</a></b>
                <p>
                  <a href="javascript:">IC类</a>
                  <a href="javascript:">二三极管</a
                  ><a href="javascript:">单片机</a
                ><a href="javascript:">内存</a
                ><a href="javascript:">IGBT</a
                ><a href="javascript:">MOS管</a
                ><a href="javascript:">光耦</a
                ><a href="javascript:">连接器</a
                ><a href="javascript:">滤波器</a
                ><a href="javascript:">传感器</a
                ><a href="javascript:">传感器</a>
                </p>
              </li>
              <li>
                <b><a href="javascript:">三极管</a></b>
                <p>
                  <a href="javascript:">LDO</a
                  ><a href="javascript:">DC-AC</a
                ><a href="javascript:">DC-DC</a
                ><a href="javascript:">LED驱动</a
                ><a href="javascript:">稳压IC</a
                ><a href="javascript:">充电管理IC</a
                ><a href="javascript:">其他电源IC</a>
                </p>
              </li>
              <li>
                <b><a href="javascript:">OTP</a></b>
                <p>
                  <a href="javascript:">Nand flash</a
                  ><a href="javascript:">PROM（可编程ROM）</a
                ><a href="javascript:"
                >Flash Memory（闪存/快闪存储器）</a
                ><a href="javascript:">EEPROM（电可擦除可编程ROM）</a
                ><a href="javascript:">DRAM（MOS型动态存储器）</a
                ><a href="javascript:">SRAM （MOS型动态存储器）</a
                ><a href="javascript:">ROM（只读存储器）</a
                ><a href="javascript:">NVROM(非易失随机存储器）</a
                ><a href="javascript:">RAM（随机存取存储器）</a
                ><a href="javascript:">SDRAM（同步动态存储器）</a
                ><a href="javascript:">OTP（一次可编程ROM）</a>
                  <a href="javascript:">EPROM（紫外线可擦除可编程ROM）</a>
                </p>
              </li>
            </ul>
          </div>
        </div>
      </li>
    </ul>
  </div>

  <!-- 轮播图 -->
  <div class="lunbo">
    <ul class="img-list">
      <li class="shows"><img src="images/lun1.jpg" alt=""></li>
      <li><img src="images/lun2.gif" alt=""></li>
      <li><img src="images/lun3.png" alt=""></li>
    </ul>

    <div class="circle-list">
      <span class="active"></span>
      <span></span>
      <span></span>
    </div>
  </div>

  <!-- 会员中心和免费注册栏 -->
  <div class="banner-right">
    <!-- 第一栏 -->
    <div class="vip">
      <ul>
        <li>会员中心</li>
        <li>免费注册</li>
      </ul>
    </div>
    <!-- 现货 -->
    <div class="xianhuo">
      <div class="xianhuo-left">
        <img src="images/xianhuo.png" alt="">
      </div>
      <div class="xianhuo-right">
        <p>现货：</p><span>392+</span><p>家</p><br>
        <p>认证现货</p><span>302+</span><p>家</p><br>
        <b>申请现货</b>
      </div>

    </div>
    <!-- 品质保障的tab栏 -->
    <div class="pinzhi">
      <div class="pinzhi-top">
        <ul>
          <li class="ons">品质保障</li>
          <li>稳定库存</li>
          <li>认证商家</li>
        </ul>
      </div>
      <div class="pinzhi-bott show">
        <div class="bott-left">
          <i></i>
        </div>
        <div class="bott-right">
          <h4>品质保障 更放心</h4>
          <p>库存认证高标准 产品质检可追溯</p>
        </div>
      </div>
      <div class="pinzhi-bott">
        <div class="bott-left pitwo">
          <i></i>
        </div>
        <div class="bott-right pitwo">
          <h4>优质商家 更省心</h4>
          <p>
            可售库存实时更新 再也不会断货
          </p>
        </div>
      </div>
      <div class="pinzhi-bott">
        <div class="bott-left pithree">
          <i></i>
        </div>
        <div class="bott-right pithree">
          <h4>稳定库存 更安心</h4>
          <p>
            入驻商家高要求 省心省时
          </p>
        </div>
      </div>
    </div>
    <!-- 视频 -->
    <div class="shipin">
      <!-- autoplay 自动播放（18年开始，谷歌浏览器不支持自动播放）
  muted 静音播放
  controls 是否显示默认播放控件
  loop 循环播放 -->
      <video width="300px" height="180px"
             src="images/shipin.mp4" autoplay="autoplay" muted
             controls>
      </video>
    </div>

    <!-- 推荐现货供应商 -->
    <div class="gongying">
      <div class="gongying-top">
        <b>推荐现货供应商</b>
      </div>
      <div class="gongying-img">
        <ul>
          <li>
            <i><img src="images/gongying1.png" alt=""></i>
            <p>大新科</p>
          </li>
          <li>
            <i><img src="images/gongying2.png" alt=""></i>
            <p>俊腾源</p>
          </li>
          <li>
            <i><img src="images/gongying3.jpg" alt=""></i>
            <p>中芯创亿</p>
          </li>
          <li>
            <i><img src="images/gomgying4.png" alt=""></i>
            <p>振升电子</p>
          </li>
        </ul>
      </div>
    </div>

    <!-- 推荐现货 -->
    <div class="tejia">
      <!-- 标题 -->
      <ul class="tejia-title">
        <li class="black">推荐有货</li>
        <li>今日特价</li>
      </ul>
      <!-- 内容 -->
      <div class="content-warp">
        <ul class="tejia-content first-tejia">
          <li>
            <a href="">LEIXIAOLONG</a>
          </li>
          <li>
            <a href="">MX25L4006EM1I-12G</a>
          </li>
          <li>
            <a href="">LEIXIAOLONG</a>
          </li>
          <li>
            <a href="">MX25L4006EM1I-12G</a>
          </li>
          <li>
            <a href="">LEIXIAOLONG</a>
          </li>
          <li>
            <a href="">LEIXIAOLONG</a>
          </li>
          <li>
            <a href="">MX25L4006EM1I-12G</a>
          </li>
          <li>
            <a href="">LEIXIAOLONG</a>
          </li>
          <li>
            <a href="">LEIXIAOLONG</a>
          </li>
          <li>
            <a href="">LEIXIAOLONG</a>
          </li>
          <li>
            <a href="">LEIXIAOLONG</a>
          </li>
          <li>
            <a href="">LEIXIAOLONG</a>
          </li>
          <li>
            <a href="">LEIXIAOLONG</a>
          </li>
          <li>
            <a href="">LEIXIAOLONG</a>
          </li>
          <li>
            <a href="">LEIXIAOLONG</a>
          </li>

        </ul>
        <ul class="tejia-content">
          <li>
            <a href="">LEIXIAOLONG</a>
            <span>￥1.2</span>
          </li>
          <li>
            <a href="">LEIXIAOLONG</a>
            <span>￥1.2</span>
          </li>
          <li>
            <a href="">LEIXIAOLONG</a>
            <span>￥1.2</span>
          </li>
          <li>
            <a href="">LEIXIAOLONG</a>
            <span>￥1.2</span>
          </li>
          <li>
            <a href="">LEIXIAOLONG</a>
            <span>￥1.2</span>
          </li>
          <li>
            <a href="">LEIXIAOLONG</a>
            <span>￥1.2</span>
          </li>
          <li>
            <a href="">LEIXIAOLONG</a>
            <span>￥1.2</span>
          </li>
          <li>
            <a href="">LEIXIAOLONG</a>
            <span>￥1.2</span>
          </li>
          <li>
            <a href="">LEIXIAOLONG</a>
            <span>￥1.2</span>
          </li>
          <li>
            <a href="">LEIXIAOLONG</a>
            <span>￥1.2</span>
          </li>
          <li>
            <a href="">LEIXIAOLONG</a>
            <span>￥1.2</span>
          </li>
          <li>
            <a href="">LEIXIAOLONG</a>
            <span>￥1.2</span>
          </li>
          <li>
            <a href="">LEIXIAOLONG</a>
            <span>￥1.2</span>
          </li>
          <li>
            <a href="">LEIXIAOLONG</a>
            <span>￥1.2</span>
          </li>
          <li>
            <a href="">LEIXIAOLONG</a>
            <span>￥1.2</span>
          </li>
          <li>
            <a href="">LEIXIAOLONG</a>
            <span>￥1.2</span>
          </li>
          <li>
            <a href="">LEIXIAOLONG</a>
            <span>￥1.2</span>
          </li>
          <li>
            <a href="">LEIXIAOLONG</a>
            <span>￥1.2</span>
          </li>
          <li>
            <a href="">LEIXIAOLONG</a>
            <span>￥1.2</span>
          </li>
        </ul>
      </div>
    </div>

    <!-- 客服舒小姐 -->
    <div class="service">
      <div class="service-left">
        <img src="images/shuxiaojie.jpg" alt="">
      </div>
      <div class="service-right">
        <b>舒小姐</b><span>金牌采购经理</span>
        <p>品质保证，交易安全</p>
        <i class="TA"><img src="images/TA.png" alt=""></i>
      </div>
    </div>
  </div>


  <!-- BOM配单示例商家 -->
  <div class="bom">
    <h4>BOM配单示例商家</h4>
    <ul class="car-list">
      <li>
        <span><img src="images/w1.jpg"></span>
        <p>深圳市创芯联盈电子有限公司</p>
      </li>
      <li>
        <span><img src="images/w2.jpg"></span>
        <p>深圳市创芯联盈电子有限公司</p>
      </li>
      <li>
        <span><img src="images/w3.jpg"></span>
        <p>深圳市创芯联盈电子有限公司</p>
      </li>
      <li>
        <span><img src="images/w4.jpg"></span>
        <p>深圳市创芯联盈电子有限公司</p>
      </li>
      <li>
        <span><img src="images/w5.jpg"></span>
        <p>深圳市创芯联盈电子有限公司</p>
      </li>
      <li>
        <span><img src="images/w6.jpg"></span>
        <p>深圳市创芯联盈电子有限公司</p>
      </li>
      <li>
        <span><img src="images/w7.jpg"></span>
        <p>深圳市创芯联盈电子有限公司</p>
      </li>
      <li>
        <span><img src="images/w8.jpg"></span>
        <p>深圳市创芯联盈电子有限公司</p>
      </li>
      <li>
        <span><img src="images/w9.jpg"></span>
        <p>深圳市创芯联盈电子有限公司</p>
      </li>
      <li>
        <span><img src="images/w10.jpg"></span>
        <p>深圳市创芯联盈电子有限公司</p>
      </li>
    </ul>
  </div>

  <!-- 今日新闻tab栏 -->

  <div class="new">
    <div class="new-tab">
      <a href="JavaScript:void(0)" class="on">今日要闻</a>
      <a href="JavaScript:void(0)">业界动态</a>
      <a href="JavaScript:void(0)">行业趋势</a>
      <a href="JavaScript:void(0)">名企新闻</a>
      <a href="JavaScript:void(0)">新品快报</a>
      <a href="JavaScript:void(0)">政策标准</a>
    </div>
    <div class="new-text">
      <ul class="box-top-text show">
        <li>
          <a href="#"><img src="images/1-1.jpg" alt=""></a>
          <p>
            <a href="#">5G卫星天线、自研DPU网卡、城市大脑，一批科技成果首发</a><br>
            <span>
                                        将城市智能装进一个实体化的人工智能设备、在数据大爆发下解决算力不足难题、给5G卫星装上多波束相控阵天线……在中关村论坛期间...
                                    </span>
          </p>
        </li>
        <li>
          <a href="#"><img src="images/1-2.png" alt=""></a>
          <p><a href="#">TCL创始人、董事长李东生定下新目标
            5年内打造两个世界500强企业</a><br>
            <span>
                                        “在40年发展中，TCL坚守主业、产业升级、全球布局，不断锤炼核心竞争力，穿越周期，实现跨越发展。”在近日举行的TCL成立40周年...
                                    </span>
          </p>
        </li>
        <li>
          <a href="#"><img src="images/1-3.jpg" alt=""></a>
          <p><a href="#">
            谁在加速数字世界？2021通信设备商100强重磅出炉
          </a><br>
            <span>
                                        备受关注的2021通信产业榜通信设备技术服务商100强已正式出炉，并于9月27日2021中国国际信息通信展览会开幕当天正式揭榜。...
                                    </span>
          </p>
        </li>
      </ul>

      <ul class="box-top-text">
        <li>
          <a href="#"><img src="images/1-4.jpg" alt=""></a>
          <p>
            <a href="#">
              政协委员：努力实现5G网络设备芯片自主可控</a><br>
            <span>
                                        将城市智能装进一个实体化的人工智能设备、在数据大爆发下解决算力不足难题、给5G卫星装上多波束相控阵天线……在中关村论坛期间...
                                    </span>
          </p>
        </li>
        <li>
          <a href="#"><img src="images/1-5.png" alt=""></a>
          <p><a href="#">TCL创始人、董事长李东生定下新目标
            5年内打造两个世界500强企业</a><br>
            <span>
                                        “在40年发展中，TCL坚守主业、产业升级、全球布局，不断锤炼核心竞争力，穿越周期，实现跨越发展。”在近日举行的TCL成立40周年...
                                    </span>
          </p>
        </li>
        <li>
          <a href="#"><img src="images/1-6.jpg" alt=""></a>
          <p><a href="#">
            谁在加速数字世界？2021通信设备商100强重磅出炉
          </a><br>
            <span>
                                        备受关注的2021通信产业榜通信设备技术服务商100强已正式出炉，并于9月27日2021中国国际信息通信展览会开幕当天正式揭榜。...
                                    </span>
          </p>
        </li>
      </ul>
      <ul class="box-top-text">
        <li>
          <a href="#"><img src="images/1-7.jpg" alt=""></a>
          <p>
            <a href="#">
              2022年全球半导体市场将破6000亿美元，芯片缺货已成产业新常态</a><br>
            <span>
                                        将城市智能装进一个实体化的人工智能设备、在数据大爆发下解决算力不足难题、给5G卫星装上多波束相控阵天线……在中关村论坛期间...
                                    </span>
          </p>
        </li>
        <li>
          <a href="#"><img src="images/1-8.jpg" alt=""></a>
          <p><a href="#">TCL创始人、董事长李东生定下新目标
            5年内打造两个世界500强企业</a><br>
            <span>
                                        “在40年发展中，TCL坚守主业、产业升级、全球布局，不断锤炼核心竞争力，穿越周期，实现跨越发展。”在近日举行的TCL成立40周年...
                                    </span>
          </p>
        </li>
        <li>
          <a href="#"><img src="images/1-9.png" alt=""></a>
          <p><a href="#">
            谁在加速数字世界？2021通信设备商100强重磅出炉
          </a><br>
            <span>
                                        备受关注的2021通信产业榜通信设备技术服务商100强已正式出炉，并于9月27日2021中国国际信息通信展览会开幕当天正式揭榜。...
                                    </span>
          </p>
        </li>
      </ul>
      <ul class="box-top-text">
        <li>
          <a href="#"><img src="images/1-10.jpg" alt=""></a>
          <p>
            <a href="#">
              瓴盛科技迎新战略投资者 携手小米赋能产业发展</a><br>
            <span>
                                        将城市智能装进一个实体化的人工智能设备、在数据大爆发下解决算力不足难题、给5G卫星装上多波束相控阵天线……在中关村论坛期间...
                                    </span>
          </p>
        </li>
        <li>
          <a href="#"><img src="images/1-11.jpg" alt=""></a>
          <p><a href="#">TCL创始人、董事长李东生定下新目标
            5年内打造两个世界500强企业</a><br>
            <span>
                                        “在40年发展中，TCL坚守主业、产业升级、全球布局，不断锤炼核心竞争力，穿越周期，实现跨越发展。”在近日举行的TCL成立40周年...
                                    </span>
          </p>
        </li>
        <li>
          <a href="#"><img src="images/1-12.jpg" alt=""></a>
          <p><a href="#">
            谁在加速数字世界？2021通信设备商100强重磅出炉
          </a><br>
            <span>
                                        备受关注的2021通信产业榜通信设备技术服务商100强已正式出炉，并于9月27日2021中国国际信息通信展览会开幕当天正式揭榜。...
                                    </span>
          </p>
        </li>
      </ul>
      <ul class="box-top-text">
        <li>
          <a href="#"><img src="images/1-4.jpg" alt=""></a>
          <p>
            <a href="#">
              EMC对策产品: TDK开发出业内首款用于汽车的高可靠性贴片磁珠</a><br>
            <span>
                                        将城市智能装进一个实体化的人工智能设备、在数据大爆发下解决算力不足难题、给5G卫星装上多波束相控阵天线……在中关村论坛期间...
                                    </span>
          </p>
        </li>
        <li>
          <a href="#"><img src="images/1-5.png" alt=""></a>
          <p><a href="#">TCL创始人、董事长李东生定下新目标
            5年内打造两个世界500强企业</a><br>
            <span>
                                        “在40年发展中，TCL坚守主业、产业升级、全球布局，不断锤炼核心竞争力，穿越周期，实现跨越发展。”在近日举行的TCL成立40周年...
                                    </span>
          </p>
        </li>
        <li>
          <a href="#"><img src="images/1-5.png" alt=""></a>
          <p><a href="#">
            谁在加速数字世界？2021通信设备商100强重磅出炉
          </a><br>
            <span>
                                        备受关注的2021通信产业榜通信设备技术服务商100强已正式出炉，并于9月27日2021中国国际信息通信展览会开幕当天正式揭榜。...
                                    </span>
          </p>
        </li>
      </ul>
      <ul class="box-top-text">
        <li>
          <a href="#"><img src="images/1-7.jpg" alt=""></a>
          <p>
            <a href="#">
              工信部等八部门印发《物联网新型基础设施建设三年行动计划（2021-2023年）》</a><br>
            <span>
                                        将城市智能装进一个实体化的人工智能设备、在数据大爆发下解决算力不足难题、给5G卫星装上多波束相控阵天线……在中关村论坛期间...
                                    </span>
          </p>
        </li>
        <li>
          <a href="#"><img src="images/1-8.jpg" alt=""></a>
          <p><a href="#">TCL创始人、董事长李东生定下新目标
            5年内打造两个世界500强企业</a><br>
            <span>
                                        “在40年发展中，TCL坚守主业、产业升级、全球布局，不断锤炼核心竞争力，穿越周期，实现跨越发展。”在近日举行的TCL成立40周年...
                                    </span>
          </p>
        </li>
        <li>
          <a href="#"><img src="images/1-9.png" alt=""></a>
          <p><a href="#">
            谁在加速数字世界？2021通信设备商100强重磅出炉
          </a><br>
            <span>
                                        备受关注的2021通信产业榜通信设备技术服务商100强已正式出炉，并于9月27日2021中国国际信息通信展览会开幕当天正式揭榜。...
                                    </span>
          </p>
        </li>
      </ul>
    </div>

    <!-- 今日特嫁 -->
    <div class="day-jia">
      <div class="day-jia-top1">
        <i><img src="images/jin1.jpg" alt=""></i>
        <span class="ad-label-lb ad1">广告</span>
      </div>
      <div class="day-jia-top2">
        <i><img src="images/jin2.jpg" alt=""></i>
        <span class="ad-label-lb ad2">广告</span>
      </div>
      <div class="day-jia-top3">
        <i><img src="images/jin3.gif" alt=""></i>
        <span class="ad-label-lb ad3">广告</span>
      </div>
    </div>
  </div>
</div>

<!-- IC供应商 -->
<div class="wrapper">
  <div class="wrap">
    <div class="left-title">
      <a href="">
        <img src="images/ic.gif">
      </a>
    </div>
    <div class="right-content">
      <ul class="ulone">
        <li>
          <div class="">
            <a href="">
              <img src="images/1-1.jpg">
            </a>
            <p>
              主营：消费电子,工业控制,汽车电子,LED...
              <span>深圳市德雷仕科技有限公司</span>
            </p>
          </div>
          <div class="">
            <a href="">
              <img src="./images/1-8.jpg">
            </a>
            <p>
              主营：消费电子,汽车电子,LED,智能安防...
              <span>深圳市名都科技有限公司</span>
            </p>
          </div>
          <div class="">
            <a href="">
              <img src="./images/1-10.jpg">
            </a>
            <p>
              主营：消费电子,工业控制,汽车电子,能...
              <span>深圳市芯科华高科技有限公司</span>
            </p>
          </div>
          <div class="">
            <a href="">
              <img src="images/1-11.jpg">
            </a>
            <p>
              主营：消费电子,工业控制,汽车电子,LED...
              <span>深圳市微亨电子有限公司</span>
            </p>
          </div>
          <div class="">
            <a href="">
              <img src="./images/1-11.jpg">
            </a>
            <p>
              主营：工业控制,汽车电子,智能安防
              <span>深圳市芯路通科技有限公司</span>
            </p>
          </div>
        </li>
        <li>
          <div class="">
            <a href="">
              <img src="images/1-11.jpg">
            </a>
            <p>
              主营：消费电子,工业控制,汽车电子,LED...
              <span>深圳市德雷仕科技有限公司</span>
            </p>
          </div>
          <div class="">
            <a href="">
              <img src="./images/1-5.png">
            </a>
            <p>
              主营：消费电子,汽车电子,LED,智能安防...
              <span>深圳市名都科技有限公司</span>
            </p>
          </div>
          <div class="">
            <a href="">
              <img src="./images/1-5.png">
            </a>
            <p>
              主营：消费电子,工业控制,汽车电子,能...
              <span>深圳市芯科华高科技有限公司</span>
            </p>
          </div>
          <div class="">
            <a href="">
              <img src="./images/1-5.png">
            </a>
            <p>
              主营：消费电子,工业控制,汽车电子,LED...
              <span>深圳市微亨电子有限公司</span>
            </p>
          </div>
          <div class="">
            <a href="">
              <img src="./images/1-5.png">
            </a>
            <p>
              主营：消费电子,工业控制,汽车电子,LED...
              <span>深圳市微亨电子有限公司</span>
            </p>
          </div>
        </li>
        <li>
          <div class="">
            <a href="">
              <img src="images/1-5.png">
            </a>
            <p>
              主营：消费电子,工业控制,汽车电子,LED...
              <span>深圳市德雷仕科技有限公司</span>
            </p>
          </div>
          <div class="">
            <a href="">
              <img src="./images/1-7.jpg">
            </a>
            <p>
              主营：消费电子,汽车电子,LED,智能安防...
              <span>深圳市名都科技有限公司</span>
            </p>
          </div>
          <div class="">
            <a href="">
              <img src="./images/1-7.jpg">
            </a>
            <p>
              主营：消费电子,工业控制,汽车电子,能...
              <span>深圳市芯科华高科技有限公司</span>
            </p>
          </div>
          <div class="">
            <a href="">
              <img src="images/1-7.jpg">
            </a>
            <p>
              主营：消费电子,工业控制,汽车电子,LED...
              <span>深圳市微亨电子有限公司</span>
            </p>
          </div>
          <div class="">
            <a href="">
              <img src="./images/1-7.jpg">
            </a>
            <p>
              主营：工业控制,汽车电子,智能安防
              <span>深圳市芯路通科技有限公司</span>
            </p>
          </div>
        </li>
        <li>
          <div class="">
            <a href="">
              <img src="images/IP1.jpg">
            </a>
            <p>
              主营：消费电子,工业控制,汽车电子,LED...
              <span>深圳市德雷仕科技有限公司</span>
            </p>
          </div>
          <div class="">
            <a href="">
              <img src="./images/jin2.jpg">
            </a>
            <p>
              主营：消费电子,汽车电子,LED,智能安防...
              <span>深圳市名都科技有限公司</span>
            </p>
          </div>
          <div class="">
            <a href="">
              <img src="./images/ip2.png">
            </a>
            <p>
              主营：消费电子,工业控制,汽车电子,能...
              <span>深圳市芯科华高科技有限公司</span>
            </p>
          </div>
          <div class="">
            <a href="">
              <img src="./images/ip3.jpg">
            </a>
            <p>
              主营：消费电子,工业控制,汽车电子,LED...
              <span>深圳市微亨电子有限公司</span>
            </p>
          </div>
          <div class="">
            <a href="">
              <img src="./images/ip4.jpg">
            </a>
            <p>
              主营：消费电子,工业控制,汽车电子,LED...
              <span>深圳市微亨电子有限公司</span>
            </p>
          </div>
        </li>
        <li>
          <div class="">
            <a href="">
              <img src="images/ip4.jpg">
            </a>
            <p>
              主营：消费电子,工业控制,汽车电子,LED...
              <span>深圳市德雷仕科技有限公司</span>
            </p>
          </div>
          <div class="">
            <a href="">
              <img src="./images/jin2.jpg">
            </a>
            <p>
              主营：消费电子,汽车电子,LED,智能安防...
              <span>深圳市名都科技有限公司</span>
            </p>
          </div>
          <div class="">
            <a href="">
              <img src="./images/jin2.jpg">
            </a>
            <p>
              主营：消费电子,工业控制,汽车电子,能...
              <span>深圳市芯科华高科技有限公司</span>
            </p>
          </div>
          <div class="">
            <a href="">
              <img src="./images/jin2.jpg">
            </a>
            <p>
              主营：消费电子,工业控制,汽车电子,LED...
              <span>深圳市微亨电子有限公司</span>
            </p>
          </div>
          <div class="">
            <a href="">
              <img src="./images/1-6.jpg">
            </a>
            <p>
              主营：工业控制,汽车电子,智能安防
              <span>深圳市芯路通科技有限公司</span>
            </p>
          </div>
        </li>
      </ul>
    </div>
  </div>
</div>

<!-- 供应商下面的图片 -->
<div class="smater">
  <div class="smater-left">
    <img src="images/smarter.gif" alt="">
    <span class="adlb lb1">广告</span>
  </div>
  <div class="smater-right">
    <img src="images/YAL.gif" alt="">
    <span class="adlb lb2">广告</span>
  </div>
</div>

<!-- 供应商和被动元器件 最新供应 -->

<div class="beidong">
  <!-- 供应商和被动元器件 -->
  <div class="tuijiancp">
    <div class="newstit">
      <a href="JavaScript:void(0)" class="line">IC现货供应</a>
      <a href="JavaScript:void(0)">被动元器件</a>
    </div>
    <div class="korea dis">
      <div class="xinghao">
        <span class="w-1">供应商</span>
        <span class="w-1">型号</span>
        <span>品牌</span>
        <span>封装</span>
        <span>批号</span>
        <span>数量</span>
      </div>
      <div class="news-text dis">
        <ul class="ull">
          <li>
									<span class="w_1">
										芯钰电子（深圳）有限公司
									</span>
            <span class="w_1">
										X1000
									</span>
            <span> TI原盘原标</span>
            <span>SOP-8</span>
            <span>21+</span>
            <span>13000</span>
          </li>

          <li>
									<span class="w_1">
										深圳市远成共创电子科技有限公司
									</span>
            <span class="w_1 w_2">
										LMR14050SSQDDARQ1
									</span>
            <span> LD/通嘉</span>
            <span>SOP-8</span>
            <span>21+</span>
            <span>2844</span>
          </li>
          <li>
									<span class="w_1">
										深圳市腾桩电子有限公司
									</span>
            <span class="w_1 w_2">
										LMR14050SSQDDARQ1
									</span>
            <span> TI原盘原标</span>
            <span>SOP-8</span>
            <span>21+</span>
            <span>13000</span>
          </li>
          <li>
									<span class="w_1">
										芯钰电子（深圳）有限公司
									</span>
            <span class="w_1 w_2">
										X1000
									</span>
            <span>-</span>
            <span>SOP-8</span>
            <span>21+</span>
            <span>2844</span>
          </li>
          <li>
									<span class="w_1">
										深圳市远成共创电子科技有限公司
									</span>
            <span class="w_1 w_2">
										LMR14050SSQDDARQ1
									</span>
            <span> LD/通嘉</span>
            <span>SOP-8</span>
            <span>21+</span>
            <span>2844</span>
          </li>
          <li>
									<span class="w_1">
										深圳市腾桩电子有限公司
									</span>
            <span class="w_1 w_2">
										LMR14050SSQDDARQ1
									</span>
            <span> TI原盘原标</span>
            <span>SOP-8</span>
            <span>21+</span>
            <span>2844</span>
          </li>
          <li>
									<span class="w_1">
										深圳市凯盛恒创科技有限公司
									</span>
            <span class="w_1 w_2">
										X1000
									</span>
            <span> LD/通嘉</span>
            <span>SOP-8</span>
            <span>21+</span>
            <span>13000</span>
          </li>
          <li>
									<span class="w_1">
										芯钰电子（深圳）有限公司
									</span>
            <span class="w_1 w_2">
										LMR14050SSQDDARQ1
									</span>
            <span> -</span>
            <span>SOP-8</span>
            <span>21+</span>
            <span>123</span>
          </li>
          <li>
									<span class="w_1">
										深圳市凯盛恒创科技有限公司
									</span>
            <span class="w_1 w_2">
										LMR14050SSQDDARQ1
									</span>
            <span> TI原盘原标</span>
            <span>SOP-8</span>
            <span>21+</span>
            <span>2844</span>
          </li>
          <li>
									<span class="w_1">
										芯钰电子（深圳）有限公司</a>
									</span>
            <span class="w_1 w_2">
										X1000</a>
									</span>
            <span> TI原盘原标</span>
            <span>SOP-8</span>
            <span>21+</span>
            <span>1232</span>
          </li>
          <li>
									<span class="w_1">
										深圳市凯盛恒创科技有限公司</a>
									</span>
            <span class="w_1 w_2">
										LMR14050SSQDDARQ1</a>
									</span>
            <span> LD/通嘉</span>
            <span>SOP-8</span>
            <span>21+</span>
            <span>22222</span>
          </li>
          <li>
									<span class="w_1">
										芯钰电子（深圳）有限公司
									</span>
            <span class="w_1 w_2">
										LMR14050SSQDDARQ1
									</span>
            <span> TI原盘原标</span>
            <span>SOP-8</span>
            <span>21+</span>
            <span>2844</span>
          </li>
          <li>
									<span class="w_1">
										芯钰电子（深圳）有限公司
									</span>
            <span class="w_1 w_2">
										LMR14050SSQDDARQ1
									</span>
            <span>LD/通嘉</span>
            <span>SOP-8</span>
            <span>21+</span>
            <span>33333</span>
          </li>
          <li>
									<span class="w_1">
										深圳市凯盛恒创科技有限公司
									</span>
            <span class="w_1 w_2">
										LMR14050SSQDDARQ1
									</span>
            <span> TI原盘原标</span>
            <span>SOP-8</span>
            <span>21+</span>
            <span>11111</span>
          </li>
          <li>
									<span class="w_1">
										<a href="">深圳市腾桩电子有限公司</a>
									</span>
            <span class="w_1 w_2">
										<a href="">LMR14050SSQDDARQ1</a>
									</span>
            <span> TI原盘原标</span>
            <span>SOP-8</span>
            <span>21+</span>
            <span>2844</span>
          </li>
          <li>
									<span class="w_1">
										<a href="">芯钰电子（深圳）有限公司</a>
									</span>
            <span class="w_1 w_2">
										<a href="">LMR14050SSQDDARQ1</a>
									</span>
            <span> TI原盘原标</span>
            <span>SOP-8</span>
            <span>21+</span>
            <span>2844</span>
          </li>
          <li>
									<span class="w_1">
										<a href="">芯钰电子（深圳）有限公司</a>
									</span>
            <span class="w_1 w_2">
										<a href="">LMR14050SSQDDARQ1</a>
									</span>
            <span> TI原盘原标</span>
            <span>SOP-8</span>
            <span>21+</span>
            <span>2844</span>
          </li>
          <li>
									<span class="w_1">
										<a href="">深圳市腾桩电子有限公司</a>
									</span>
            <span class="w_1 w_2">
										<a href="">LMR14050SSQDDARQ1</a>
									</span>
            <span> TI原盘原标</span>
            <span>SOP-8</span>
            <span>21+</span>
            <span>2844</span>
          </li>
          <li>
									<span class="w_1">
										<a href="">芯钰电子（深圳）有限公司</a>
									</span>
            <span class="w_1 w_2">
										<a href="">LMR14050SSQDDARQ1</a>
									</span>
            <span> TI原盘原标</span>
            <span>SOP-8</span>
            <span>21+</span>
            <span>2844</span>
          </li>
          <li>
									<span class="w_1">
										<a href="">芯钰电子（深圳）有限公司</a>
									</span>
            <span class="w_1 w_2">
										<a href="">LMR14050SSQDDARQ1</a>
									</span>
            <span> TI原盘原标</span>
            <span>SOP-8</span>
            <span>21+</span>
            <span>2844</span>
          </li>
          <li>
									<span class="w_1">
										<a href="">芯钰电子（深圳）有限公司</a>
									</span>
            <span class="w_1 w_2">
										<a href="">LMR14050SSQDDARQ1</a>
									</span>
            <span> TI原盘原标</span>
            <span>SOP-8</span>
            <span>21+</span>
            <span>2844</span>
          </li>
          <li>
									<span class="w_1">
										<a href="">芯钰电子（深圳）有限公司</a>
									</span>
            <span class="w_1 w_2">
										<a href="">LMR14050SSQDDARQ1</a>
									</span>
            <span> TI原盘原标 </span>
            <span>SOP-8</span>
            <span>21+</span>
            <span>2844</span>
          </li>
          <li>
									<span class="w_1">
										<a href="">芯钰电子（深圳）有限公司</a>
									</span>
            <span class="w_1"></span>
          <li>
									<span class="w_1">
										<a href="">芯钰电子（深圳）有限公司</a>
									</span>
            <span class="w_1 w_2">
										<a href="">X1000</a>
									</span>
            <span> TI原盘原标 </span>
            <span>SOP-8</span>
            <span>21+</span>
            <span>13000</span>
          </li>

          <li>
									<span class="w_1">
										<a href="">深圳市远成共创电子科技有限公司</a>
									</span>
            <span class="w_1 w_2">
										<a href="">LMR14050SSQDDARQ1</a>
									</span>
            <span> LD/通嘉</span>
            <span>SOP-8</span>
            <span>21+</span>
            <span>2844</span>
          </li>
          <li>
									<span class="w_1">
										<a href="">深圳市腾桩电子有限公司</a>
									</span>
            <span class="w_1 w_2">
										<a href="">LMR14050SSQDDARQ1</a>
									</span>
            <span> TI原盘原标</span>
            <span>SOP-8</span>
            <span>21+</span>
            <span>13000</span>
          </li>
          <li>
									<span class="w_1">
										<a href="">芯钰电子（深圳）有限公司</a>
									</span>
            <span class="w_1 w_2">
										<a href="">X1000</a>
									</span>
            <span>-</span>
            <span>SOP-8</span>
            <span>21+</span>
            <span>2844</span>
          </li>
          <li>
									<span class="w_1">
										<a href="">深圳市远成共创电子科技有限公司</a>
									</span>
            <span class="w_1 w_2">
										<a href="">LMR14050SSQDDARQ1</a>
									</span>
            <span> LD/通嘉</span>
            <span>SOP-8</span>
            <span>21+</span>
            <span>2844</span>
          </li>
          <li>
									<span class="w_1">
										<a href="">深圳市腾桩电子有限公司</a>
									</span>
            <span class="w_1 w_2">
										<a href="">LMR14050SSQDDARQ1</a>
									</span>
            <span> TI原盘原标</span>
            <span>SOP-8</span>
            <span>21+</span>
            <span>2844</span>
          </li>
          <li>
									<span class="w_1">
										<a href="">深圳市凯盛恒创科技有限公司</a>
									</span>
            <span class="w_1 w_2">
										<a href="">X1000</a>
									</span>
            <span> LD/通嘉</span>
            <span>SOP-8</span>
            <span>21+</span>
            <span>13000</span>
          </li>
          <li>
									<span class="w_1">
										<a href="">芯钰电子（深圳）有限公司</a>
									</span>
            <span class="w_1 w_2">
										<a href="">LMR14050SSQDDARQ1</a>
									</span>
            <span> -</span>
            <span>SOP-8</span>
            <span>21+</span>
            <span>123</span>
          </li>
          <li>
									<span class="w_1">
										<a href="">深圳市凯盛恒创科技有限公司</a>
									</span>
            <span class="w_1 w_2">
										<a href="">LMR14050SSQDDARQ1</a>
									</span>
            <span> TI原盘原标 </span>
            <span>SOP-8</span>
            <span>21+</span>
            <span>2844</span>
          </li>
          <li>
									<span class="w_1">
										<a href="">芯钰电子（深圳）有限公司</a>
									</span>
            <span class="w_1 w_2">
										<a href="">X1000</a>
									</span>
            <span> TI原盘原标 </span>
            <span>SOP-8</span>
            <span>21+</span>
            <span>1232</span>
          </li>
          <li>
									<span class="w_1">
										<a href="">深圳市凯盛恒创科技有限公司</a>
									</span>
            <span class="w_1 w_2">
										<a href="">LMR14050SSQDDARQ1</a>
									</span>
            <span> LD/通嘉</span>
            <span>SOP-8</span>
            <span>21+</span>
            <span>22222</span>
          </li>
          <li>
									<span class="w_1">
										<a href="">芯钰电子（深圳）有限公司</a>
									</span>
            <span class="w_1 w_2">
										<a href="">LMR14050SSQDDARQ1</a>
									</span>
            <span> TI原盘原标 </span>
            <span>SOP-8</span>
            <span>21+</span>
            <span>2844</span>
          </li>
          <li>
									<span class="w_1">
										<a href="">芯钰电子（深圳）有限公司</a>
									</span>
            <span class="w_1 w_2">
										<a href="">LMR14050SSQDDARQ1</a>
									</span>
            <span>LD/通嘉</span>
            <span>SOP-8</span>
            <span>21+</span>
            <span>33333</span>
          </li>
          <li>
									<span class="w_1">
										<a href="">深圳市凯盛恒创科技有限公司</a>
									</span>
            <span class="w_1 w_2">
										<a href="">LMR14050SSQDDARQ1</a>
									</span>
            <span> TI原盘原标 </span>
            <span>SOP-8</span>
            <span>21+</span>
            <span>11111</span>
          </li>
          <li>
									<span class="w_1">
										<a href="">深圳市腾桩电子有限公司</a>
									</span>
            <span class="w_1 w_2">
										<a href="">LMR14050SSQDDARQ1</a>
									</span>
            <span> TI原盘原标 </span>
            <span>SOP-8</span>
            <span>21+</span>
            <span>2844</span>
          </li>
        </ul>
      </div>
    </div>
    <div class="korea">
      <ul class="koreas">
        <li>
          <i><img src="images/beidong1.jpg" alt=""></i>
          <p>
            供应单相3-300A EMI滤波器RSEN-2010 RSEN-2020 RSEN-2030 RSEN-2040
          </p>
        </li>
        <li>
          <i><img src="images/beidong2.jpg" alt=""></i>
          <p>
            电子产品车间工业加湿机
          </p>
        </li>
        <li>
          <i><img src="images/beidong3.jpg" alt=""></i>
          <p>
            Idec按钮开关CW1L-M1E10QM4G
          </p>
        </li>
        <li>
          <i><img src="images/beidong4.jpg" alt=""></i>
          <p>
            现货供应LEM传感器LAH50-P
          </p>
        </li>
        <li>
          <i><img src="images/beidong5.jpg" alt=""></i>
          <p>
            供应Arcolectric 红色指示灯C0276AANAI
          </p>
        </li>
        <li>
          <i><img src="images/beidong6.jpg" alt=""></i>
          <p>
            LMC6482IMX TI SOP8 运算放大器芯片
          </p>
        </li>
        <li>
          <i><img src="images/beidong7.jpg" alt=""></i>
          <p>
            现货供应ST微控制器STM32F103ZET6
          </p>
        </li>
        <li>
          <i><img src="images/beidong8.jpg" alt=""></i>
          <p>
            供应HMC510LP5ETR压控振荡器
          </p>
        </li>
      </ul>
    </div>
  </div>

  <!-- 最新求购 -->
  <div class="xin">
    <!-- 标题 -->
    <ul class="xin-title">
      <li class="youhuo">最新求购</li>
      <li>最新供应</li>
    </ul>
    <!-- 内容 -->
    <div class="content-xin">
      <ul class="xin-content xin-tab">
        <li>    AK55HB120 </li>
        <li>    FHF10N65 </li>
        <li>   LT15215 </li>
        <li>    M28W320FCB70N6 </li>
        <li> 57-21/R6C-AP1Q2B/BF </li>
        <li> 57-21/R6C-AP1Q2B/BF</li>
        <li>    LY625128SN-70LL </li>
        <li>1lfgjsljg llsdfjgl </li>
        <li>AD5263BRUZ50-REEL7 </li>
        <li>3lfgjsljg ldfjgj ls </li>
        <li>   MPX2040D</li>
        <li>C3216X5R1A475KT000N </li>
      </ul>
      <ul class="xin-content">
        <li>  B82422H1473J000</li>
        <li>   HU2D561MCXS4WPEC</li>
        <li>    AK55HB120</li>
        <li>   LT15215</li>
        <li> 57-21/R6C-AP1Q2B/BF</li>
        <li>6fishdidfoahdfn</li>
        <li>   LT15215</li>
        <li> 57-21/R6C-AP1Q2B/BF</li>
        <li>2fishdidfoahdfn</li>
        <li>    LY625128SN-70LL</li>
        <li>    LY625128SN-70LL</li>
        <li>AD5263BRUZ50-REEL7</li>
      </ul>
    </div>
  </div>
</div>




<script src="index.js"></script>
<script src="JS/jquery-3.6.0.js" type="text/javascript"
        charset="utf-8"></script>
<script src="JS/untilAnimation.js"></script>
<!-- IC供应商 -->
<script src="IC-gongying/untilAnimation.js"></script>
<!-- 侧边栏 -->
<script src="cebian.js"></script>
</body>
</html>
