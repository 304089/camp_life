// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, or any plugin's
// vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery3
//= require popper
//= require bootstrap-sprockets

//= require rails-ujs
//= require activestorage
//= require turbolinks
//= require_tree .

$(function() {
  const schedule = $(".plan_schedule");
  const gear = $(".plan_gear");

  $(function() {
    $(".detail_choice__schedule").on("click", function() {
      if ($(schedule).hide()) {
        $(schedule).fadeIn();
        $(gear).hide();
        $(".detail_choice__schedule").css("background", "white")
        $(".detail_choice__gear").css("background", "silver")
      }
    });
  });

  $(function() {
    $(".detail_choice__gear").on("click", function() {
      if ($(gear).hide()) {
        $(gear).fadeIn();
        $(schedule).hide();
        $(".detail_choice__schedule").css("background", "silver")
        $(".detail_choice__gear").css("background", "white")
      }
    });
  });

  $(function(){
    const menu = $(".menu_list")
    $(".menu_btn").on("click", function() {
      if ($(".menu_list").hasClass("menu_active")) {
        $(menu).removeClass("menu_active");
        $(menu).animate({'right':'0'},300);
        $(".main").css("background-color", "rgba(0,0,0,0.4)");
        $(".close_btn").removeClass("menu_btn_hide");
        $(".open_btn").addClass("menu_btn_hide");

      }else{
        $(menu).addClass("menu_active");
        $(menu).animate({'right':'-100%'},300);
        $(".main").css("background-color", "transparent");
        $(".close_btn").addClass("menu_btn_hide");
        $(".open_btn").removeClass("menu_btn_hide");
      }
    });
  });
});

$(function() {
  $('#gear_gear_image').on('change', function (e) {
    const reader = new FileReader();
    reader.onload = function (e) {
      $(".change_file").attr('src', e.target.result);
    }
    reader.readAsDataURL(e.target.files[0]);
  });
  $('#user_profile_image').on('change', function (e) {
    const reader = new FileReader();
    reader.onload = function (e) {
      $(".change_file").attr('src', e.target.result);
    }
    reader.readAsDataURL(e.target.files[0]);
  });
});
