/**
 * Created by Administrator on 2019/2/13.
 */

$(document).ready(function(e) {
    var t = $('.fixed_right').offset().top;
    var mh = $('.list').height() + $('.list').offset().top;
    var fh = $('.fixed_right').height() + 300;
    var dh = t+fh;
    $(window).scroll(function(e){
        s = $(document).scrollTop();
        sh = $(window).height();
        if(s+sh > dh){
            console.log(111);
            $('.fixed_right').css('position','fixed');
            $('.fixed_right').css('top',0);

        }else{
            $('.fixed_right').css('position','');
        }
    })
});