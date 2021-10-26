function animation(ele, target) {
    // 进来就清除定时器
    clearInterval(ele.interId);
    ele.interId = setInterval(function() {
        // 等于目标时清除定时器
        if (ele.offsetLeft == target) {
            clearInterval(ele.interId);
            // 当向左时
        } else if (ele.offsetLeft > target) {
            var step = (ele.offsetLeft - 13) < target ? target : ele.offsetLeft - 13;
            console.log(step);
            ele.style.left = step + 'px';
            // 向右走
        } else if (ele.offsetLeft < target) {
            var step = (ele.offsetLeft + 13) > target ? target : ele.offsetLeft + 13;
            ele.style.left = step + 'px';
        };
    }, 10);
};



function animation2(ele, target) {
    // 进来就清除定时器
    clearInterval(ele.interId);
    ele.interId = setInterval(function() {
        // 等于目标时清除定时器
        if (ele.offsetLeft == target) {
            clearInterval(ele.interId);
        } else {
            var dis = (target - ele.offsetLeft) / 10;
            // 总结：记住---向左小于0,下取整，向右大于0，上取整
            dis = dis < 0 ? Math.floor(dis) : Math.ceil(dis);
            ele.style.left = ele.offsetLeft + dis + 'px';
        };
    }, 0);
};




function ICanimation3(ele, target) {
    // 进来就清除定时器
    clearInterval(ele.interId);
    ele.interId = setInterval(function() {
        // 等于目标时清除定时器
        if (ele.offsetTop == target) {
            clearInterval(ele.interId);
        } else {
            var dis = (target - ele.offsetTop) / 10;
            // 总结：记住---向左小于0,下取整，向右大于0，上取整
            dis = dis < 0 ? Math.floor(dis) : Math.ceil(dis);
            ele.style.top = ele.offsetTop + dis + 'px';
        };
    }, 30);
};