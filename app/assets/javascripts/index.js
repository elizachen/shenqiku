/**
 * Created by Administrator on 2015/11/23.
 */
$(function () {
    $(window).scroll(function () {

        var mytop = $(window).scrollTop();
        if (mytop > 525) {
            $(".nav").addClass("current")
        } else {
            $(".nav").removeClass("current")
        }

    })
    $('.example-animation').DrSlider();

    $(".nav ul>li").hover(function () {
        menuOver($(this).position().left,$(this).width()/2);
    });
    function menuOver(n,t) {
        $(".nav ul .row").stop().animate({
            'left': (n+t) + 'px',
            'margin-left': (-43) +'px'
        }, 300);
    }
 
	  var n = 0;
     var t=function () {

        if (n < 4) {
            n = n + 1;
        }
        else {
            n = 1
        }

        
        $(".location-index li").eq(n-1).addClass("lic").siblings().removeClass("lic");

    }

    $(".location-index li").eq(0).addClass("lic");
   
    $(".next1").click(function () {

        if (n < 4) {
            n = n + 1;
        }
        else {
            n = 2
        }

        $(".locationwreap").stop(false,true).animate({"margin-Left": -600 * n}, function () {
            if (n == 4) {
                $(".locationwreap").css("margin-left", -600);
                n = 0
            }
        })
        $(".location-index li").eq(n-1).addClass("lic").siblings().removeClass("lic");
    })

    $(".prev1").click(function () {

        if (n > 0) {
            n = n - 1;
        }
        else {
            n = 2
        }

        $(".locationwreap").stop(false,true).animate({marginLeft: -600 * n}, function () {
            if (n == 0) {
                $(".locationwreap").css("margin-left", -2400);
                n = 4;
            }
        })
        $(".location-index li").eq(n).addClass("lic").siblings().removeClass("lic");
    })
    $(".mianright").superSlider({
     listCont:    ".locationwreap",//�����б����
     scrollWhere: "next",//�Զ���������next
     delayTime: 	 4000,//�Զ��ֲ�ʱ����
     speed: 		 600,//�����ٶ�
     prevBtn: 	 ".prev1",//��һҳ��ť
     nextBtn: 	 ".next1",
     amount: 	 1 ,//���ι�������
     showNum: 	 1,//��ʾ����
     autoPlay: 	 true//�Զ�����
     });
	
	 
    var t2=setInterval(t,4000);
    $(".mianright").hover(function () {
        $(this).find(".selectrow").fadeIn();
        clearInterval(t2);

    },function () {
        $(this).find(".selectrow").fadeOut();
        t2=setInterval(t,4000);
    })

    $(".nav_activity").click(function () {

        //$.scrollTo('.activity', 800);
        $("html,body").animate({"scrollTop":525 }, 'slow');

    });
    $(".nav_coffee").click(function () {
        //$.scrollTo('.coffee', 800);
        $("html,body").animate({"scrollTop":1123 }, 'slow');
    });
    $(".nav_order").click(function () {

        $("html,body").animate({"scrollTop":$(".order").offset().top-70 }, 'slow');
    });
    $(".nav_service").click(function () {
        //$.scrollTo('.service', 800);
        $("html,body").animate({"scrollTop":$(".service").offset().top-70 }, 'slow');
    });
    $(".nav_about").click(function () {
        //$.scrollTo('.about', 800);
        $("html,body").animate({"scrollTop":$(".about").offset().top-70 }, 'slow');
    });
    $(".nav_contact").click(function () {
        $("html,body").animate({"scrollTop":$(".contact").offset().top-70 }, 'slow');
        //$.scrollTo('.contact', 800);
    });
})
