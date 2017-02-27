// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require turbolinks
//= require bootstrap/alert
//= require_tree .
//= require bootstrap/dropdown



$(document).on('click', '.productDecription-menuList-item', function () {
  var index = $(this).index() //拿到这个「选项卡」的index，第一个是0，第二个是1，以此类推
  $('.productDecription-menuList-item').removeClass('white')
  $(this).addClass('white')
  $('.productDecription-content-item').hide() //所有的内容都隐藏
  $('.productDecription-content-item').eq(index).show() //只显示对于index的内容

})

$(document).on('click', 'ul.menu-items > li', function(){
	var index=$(this).index();

	$('ul.menu-items > li').removeClass('active');
  $(this).addClass('active');
// $(this).hide();
	// $(this).addClass("active");

})

function addOne(){
  var pn=document.getElementById('productNum')
		var pg=document.getElementById('pq')
		if (parseInt(pn.value)<pg.innerHTML) {
			pn.value=parseInt(pn.value)+1
		}
    // alert(window.location.href);
}

function deleteOne(){
  var pn=document.getElementById('productNum')


if (parseInt(pn.value)>1 ) {
	pn.value=parseInt(pn.value)-1
}

	}
