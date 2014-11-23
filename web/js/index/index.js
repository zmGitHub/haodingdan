
$().ready(function(){
    // 手机号码验证
    jQuery.validator.addMethod("isMobile", function(value, element) {
        var length = value.length;
        var mobile = /^(((13[0-9]{1})|(15[0-9]{1}))+\d{8})$/;
        var tel = /^\d{3,4}-?\d{7,9}$/;
        return this.optional(element) || (tel.test(value) || mobile.test(value));
    }, "请输入手机或者电话号码");

//    注册
    $("#reg-form form").validate({
        rules: {
            reg_name: {
                required: true,
                remote:'front/user_validate.action',
                minlength:2
            },
            reg_email: {
                required: true,
                email: true
            },
            reg_password: {
                required: true,
                minlength: 5
            },
            reg_configPassword: {
                required: true,
                minlength: 5,
                equalTo: "#reg_password"
            },
            reg_phone:{
                required:true,
                isMobile:true
            }
        },
        messages:{
            reg_name:{
                required:'请输入用户名',
                remote:$.validator.format("该名称已存在..."),
                minlength:'用户名称太短'
            },
            reg_email:{
                required:'请输入邮箱',
                email:'请输入正确的格式'
            },
            reg_password:{
                required:'请输入密码',
                minlength: $.validator.format("密码不能小于{0}个字 符")
            },
            reg_configPassword:{
                required: "请输入确认密码",
                minlength: "确认密码不能小于5个字符",
                equalTo: "两次输入密码不一致不一致"
            },
            reg_phone:{
                required:"请输入号码",
                isMobile: "请输入手机或者电话号码"
            }
        },
        submitHandler:function(form){
            $(form).ajaxSubmit({
                url:'front/user_reg.action',
                type:'post',
                data:$("#reg-form form").serialize(),
                success:function(data){
                    $("#reg-form").removeClass("in");
                    alert("注册成功");
                }
            });
        }
    });

//    登陆
    $("#login-form form").validate({
        rules:{
            name:{
                required:true
            },
            password:{
                required:true
            }
        },
        messages:{
            name:{
                required:'用户名不能为空'
            },
            password:{
                required:'密码不能为空'
            }
        },
        submitHandler:function(form){
            $(form).ajaxSubmit({
                type: "POST",
                url: "front/user_login.action",
                data:$("#login-form form").serialize(),
                success: function(data){
                    if(data!=0){
                        $("#login-form").removeClass("in");
                        $("#top-navbar form").html("<div style='margin-top: 10px'><a href='' style='cursor:pointer;'>"+"欢迎您"+data+"</a></div>");
                    }else{
                        alert("用户名或者密码错误...");
                    }
                }
            })
        }
    })
})
