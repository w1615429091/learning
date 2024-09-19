
    localStorage.setItem('username0','root');
    localStorage.setItem('password0','123456');
    //获取标签 BOM 下划线 
    var btn_login = document.querySelector('#btn-login');
    //   绑定事件
    btn_login.onclick = function()
    {
        //获取用户名密码
        var username = document.querySelector('#username').value;
        var password = document.querySelector('#password').value;
        if(username == '' || password == '')
        {
            alert('用户名或密码不能为空');
            return;
        }
        else{
                // 判断是否正确 
            if(username == localStorage.getItem('username') && password == localStorage.getItem('password'))
            {
                alert('登录成功');
                
                // 跳转到首页
                location.href = 'https://www.4399.com/';
            }
            else{
                alert('用户名或密码错误');
            }
        }
    }
    var btn_registration = document.querySelector('#btn-registration');
    btn_registration.onclick = function(){
        location.href = "./注册.html";
    }
