// 给搜索框的error添加事件
// 获取元素
var keywordclose = document.querySelector(".keywordclose");
var search = document.querySelector(".inputs");
var htmls = document.querySelector("html");
console.log(htmls);
keywordclose.onclick = function () {
    search.removeAttribute("placeholder");
};
htmls.ondblclick = function () {
    search.setAttribute("placeholder", "可输入型号和参数(如 LM358 TI SOP 19+)或中文关键词");
};



// 轮播图
// // 获取元素
var imgList = document.querySelector('.img-list');
var circleList = document.querySelectorAll(".circle-list span");
var lis = document.querySelectorAll(".img-list li");
var flag = 1;

// interId全局变量
var interId = null;
// 循环遍历给每个span添加点击事件
for (var i = 0; i < circleList.length; i++) {

    // 获取索引
    circleList[i].index = i;
    // 给span添加点击事件
    circleList[i].onmouseenter = function () {
        clearInterval(interId);
        for (var j = 0; j < circleList.length; j++) {
            circleList[j].className = "";
            lis[j].className = "";

        }
        // console.log(666);
        this.className = "active";
        lis[this.index].className = "shows";
        // console.log(this.index);

        flag = this.index + 1;
    }
    circleList[i].onmouseleave = function () {
        lunbo();
    }

}

function lunbo() {
    // 判断定时器到达最后一个时等于0
    interId = setInterval(function () {
        if (flag == circleList.length) {
            flag = 0;
        }
        for (var i = 0; i < circleList.length; i++) {
            circleList[i].className = "";
            lis[i].className = "";

        }
        circleList[flag].className = "active";
        lis[flag].className = "shows";
        flag++;

    }, 3000)
}
lunbo();


// <!-- 品质保障的tab栏 -->

// 获取元素
var pinzhiTop = document.querySelectorAll(".pinzhi-top ul li");
var pinzhiBott = document.querySelectorAll(".pinzhi-bott");
// 循环遍历每一个li,并添加属性
for (var i = 0; i < pinzhiTop.length; i++) {

    // 获取索引
    pinzhiTop[i].index = i;

    // 给li 加事件
    pinzhiTop[i].onmouseenter = function () {
        // 排他
        for (var j = 0; j < pinzhiTop.length; j++) {
            pinzhiTop[j].className = "";
            pinzhiBott[j].className = "pinzhi-bott"

        }

        this.className = "ons";
        pinzhiBott[this.index].className = "show pinzhi-bott"
    }

}

// // 推荐现货

// // 获取元素


// // <!-- 品质保障的tab栏 -->

// 获取元素
var tejiaTitle = document.querySelectorAll(".tejia-title li");
console.log(tejiaTitle);
var tejiaContent = document.querySelectorAll(".tejia-content");
console.log(tejiaContent);

// 循环遍历每一个li,并添加属性
for (var i = 0; i < tejiaTitle.length; i++) {

    // 获取索引
    tejiaTitle[i].index = i;

    // 给li 加事件
    tejiaTitle[i].onmouseenter = function () {
        // 排他
        for (var j = 0; j < tejiaTitle.length; j++) {
            tejiaTitle[j].className = "";
            tejiaContent[j].className = "tejia-content"

        }

        this.className = "black";
        tejiaContent[this.index].className = "first-tejia tejia-content"
    }

};


var carList = document.querySelectorAll(".tejia-content");
function shows(ele) {
    ele.interId = setInterval(function () {
        if (ele.offsetTop == -180) {
            ele.style.top = 0 + 'px';
        } else {

            ele.style.top = ele.offsetTop - 5 + "px";
        }
    }, 300);
}
shows(carList[0]);
shows(carList[1]);



// <!-- BOM配单示例商家 -->
// 获取元素
var carList = document.querySelector(".car-list");
var carLi = document.querySelectorAll(".car-list li");
console.log(carLi);

function show() {
    // 向左走
    setInterval(function () {
        if (carList.offsetLeft == -1180) {
            carList.style.left = "0px";
        }
        carList.style.left = carList.offsetLeft - 10 + "px";
    }, 400)
};
show();

// // 鼠标移入事件
//     $(".car-list li").hover(function() {
//         // 鼠标移入先清除定时器
//         clearInterval(carList.interId);
//         // 给当前对象下的孩子设置样式
//         $(this).children("p").addClass("active");
//     }, function() {
//         // 鼠标移出 把所有孩子的样式去掉
//         $(".car-list li").children("p").removeClass("active");
//         // 开启定时器
//         animation(carList);
//     });



// <!-- 今日新闻tab栏 -->
// 获取元素
var newTab = document.querySelectorAll(".new-tab a");
var boxTopText = document.querySelectorAll(".box-top-text");

// 循环遍历每一个a
for (var i = 0; i < newTab.length; i++) {
    // 获取点击a的索引
    newTab[i].index = i;

    // 再给所有a添加点击事件
    newTab[i].onmouseenter = function () {

        console.log(this.index);
        // 排他
        for (var j = 0; j < newTab.length; j++) {
            newTab[j].className = "";
            boxTopText[j].className = "box-top-text";

        };
        this.className = "on";
        boxTopText[this.index].className = "show";
    };

};


//  IC供应商
// 获取元素
var uls = document.querySelector(".ulone");
var liss = document.querySelectorAll(".ulone li");
console.log(uls);
var flags = 1;
function IC() {
    setInterval(function () {

        if (flags == liss.length || uls.style.top == "800px") {
            uls.style.top = "0px";
            flags = 1;
        }
        target = flags * -170;
        ICanimation3(uls, target);
        // console.log(target);
        flags++;
    }, 2000);
}
IC();




// 现货供给和被动元器件往上滑动
// 获取元素
// var ulls = document.querySelector(".ull");
// console.log(ulls);
// function qijian() {
//     // 添加定时器
//     setInterval(function () {
//         if (ulls.offsetTop == -300) {
//             ulls.style.top = "0px";
//         };

//         ulls.style.top = ulls.offsetTop - 1 + "px";
//         // console.log(ulls.offsetTop);
//     }, 100);
// }
// qijian();

// 现货供给和被动元器件 tab栏
// 获取元素
var newStit = document.querySelectorAll(".newstit a");
var koreas = document.querySelectorAll(".korea");
console.log(newStit);

for (var i = 0; i < newStit.length; i++) {

    newStit[i].inx = i;
    newStit[i].onmouseenter = function () {

        // 排他
        for (var j = 0; j < newStit.length; j++) {
            newStit[j].className = "";
            koreas[j].className = "korea";
        }
        this.className = "line";
        koreas[this.inx].className = "dis korea"
    }

}

//获取元素
var dianji = document.querySelector('.ull');
var bds = document.querySelector('.news-text');

//封装函数
function cvb(ele) {
    //添加间隙定时器
    ele.interId = setInterval(function () {
        //开始让ul向上运动
        // console.log(121231);
        ele.style.top = ele.offsetTop - 1 + 'px';
        //在判断
        //无缝轮播
        if (ele.offsetTop == -300) {
            ele.style.top = 0 + 'px';
        }
    }, 70);
    //添加鼠标移入移除事件
    //当鼠标移动到bds上时
    bds.onmouseover = function () {
        //清除定时器
        clearInterval(ele.interId);
    }
}
cvb(dianji);
//鼠标离开时，继续执行封装函数
bds.onmouseout = function () {
    cvb(dianji);
}








// <!-- 最新求购 -->

// 获取元素
var xinTitle = document.querySelectorAll(".xin-title li");
console.log(xinTitle);
var xinContent = document.querySelectorAll(".xin-content");

// 循环遍历给标题添加点击事件
for (var i = 0; i < xinTitle.length; i++) {

    // 获取索引
    xinTitle[i].in = i;
    xinTitle[i].onmouseenter = function () {
        //    排他
        for (var j = 0; j < xinTitle.length; j++) {
            xinTitle[j].className = "";
            xinContent[j].className = "xin-content";
        }
        this.className = "youhuo";
        xinContent[this.in].className = "xin-tab xin-content";
    }

}

