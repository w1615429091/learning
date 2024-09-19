var username = document.getElementById("username");
var password = document.getElementById("password");
var register = document.getElementById("register");

register.onclick = function() {
    var usernameValue = username.value;
    var passwordValue = password.value;
    if (usernameValue == "" || passwordValue == "") {
        alert("用户名或密码不能为空");
        return;
    }
    else {
        alert("注册成功");
        localStorage.setItem("username", usernameValue);
        localStorage.setItem("password", passwordValue);
        location.href = "./登录界面.html";
        
    }
}