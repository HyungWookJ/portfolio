$(function(){
    $('.gnb .dep01 .menu1').click(function(){
        var dep = $(this).siblings('.dep02').css('display')
        if(dep == 'block'){
            $('.gnb .dep01 .dep02').slideUp();
            $('.gnb .dep01 .menu1').removeClass('on');
        } else{
            $('.gnb .dep01 .dep02').slideUp();
            $(this).siblings('.dep02').slideDown();
            $('.gnb .dep01 .menu1').removeClass('on');
            $(this).addClass('on');
        }
        return false;
    })
})

$(document).on("click", ".Gnb_m .menu_button, .Gnb_m .menu-panel-overlay", function() {
    $(".Gnb_m .menu_button, .Gnb_m .menu-panel-overlay, .Gnb_m .menu-panel").toggleClass("is-active")
}).on("click", ".Gnb_m .menu-list_arrow", function() {
    var e = $(this).parents("li").hasClass("is-open");
    $(".ccGnb_m .menu-label").removeClass("is-open"),
    $(this).parents("li").addClass("is-open"),
    e && $(this).parents("li").removeClass("is-open")
})

/* 회원가입과 관련된 스크립트 */
$(document).ready(function() {
	// 아이디 유효성 검사 정규식(대소문자 + 숫자조합 4~12자)
	var reg_id = RegExp(/^[a-zA-Z][0-9a-zA-Z]{3,11}$/); // 영문 + 숫자 포함 4~12자
	
	var reg_email0 = RegExp(/^[a-zA-Z][0-9a-zA-Z]{3,11}$/); // 영문 + 숫자 포함 4~12자
	var reg_email1 = RegExp(/^([0-9a-zA-Z]+\.)+[a-zA-Z]{2,6}$/i); // E-mail 주소 확인 
	
	// 비밀번호 유효성 검사 정규식
	var reg_pw = RegExp(/^[a-zA-Z](?=.*[a-zA-Z0-9])(?=.*[0-9]).{6,11}$/); // 영문 + 숫자, 영문, 특수문자 포함 7~12자
	var reg_pwc = RegExp(/^[a-zA-Z](?=.*[a-zA-Z0-9])(?=.*[0-9]).{6,11}$/); // 영문 + 숫자, 영문, 특수문자 포함 7~12자
	
		//alert("aaa"); // 작동 확인 알림창
	$("#id").on("blur", function() {
		var pw=$("#id").val();
		if(reg_id.test(id)){
			alert("사용 가능 합니다.");
		}else{
			alert("대소문자 + 숫자, 영문, 특수문자 포함 7 ~ 12자");
		}
		
	})
	
	$("#pw").on("blur", function() {
		var pw=$("#pw").val();
		if(reg_pw.test(pw)){
			alert("사용 가능 합니다.");
		}else{
			alert("대소문자 + 숫자, 영문, 특수문자 포함 7 ~ 12자");
		}
		
	})
	
	$("#pwc").on("blur", function() {
			var pw=$("#pw").val();
			var pwc=$("#pwc").val();
			if(reg_pwc.test(pwc) != " " && reg_pwc.test(pwc) == reg_pw.test(pw)){
				$("#pwcheck1").html("<span style='color: blue; font-size: 13px;'>" + "입력하신 비밀번호가 일치합니다." + "</span>");
			} else{
				$("#pwcheck1").html("<span style='color: red; font-size: 13px;'>" + "입력하신 비밀번호가 다릅니다." + "</span>");
			}
	})
})