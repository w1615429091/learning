<template>
    <div id="div-login">
        <!-- 1.LOGO -->
        <img src="../img/logo.jpg" id="img-logo" alt="">
        <div id="div-method">
            <span id="span-account" class="span1">账号密码登录</span>
            <span id="span-tel" class="span1">手机账号登录</span>
        </div>
        <!-- 2.账号密码 -->
        <div id="div-user">
            <img src="../img/user.png" id="img-user" alt="">
            <input type="text" name="" placeholder="请输入账号" id="" v-model="user">
        </div>
        <div id="div-password">
            <img src="../img/password.png" id="img-password" alt="">
            <input type="password" name="" placeholder="请输入密码" id="" v-model="pwd">
        </div>
        <!-- 3.相关按钮 -->
        <div id="div-op">
            <input type="checkbox" />自动登录
            <span id="span-forget">忘记密码</span>
        </div>
        <div id="div-button">
            <button id="btn-login" @click="doLogin()">登录</button>
        </div>

    </div>
</template>
<style>
#div-login {
    width: 500px;
    margin: 0 auto;
    /* outline: solid 3px red; */
    display: flex;
    flex-wrap: wrap;
}

#img-logo {
    margin: auto;
}

#div-method {
    width: 500px;
    outline: solid gray 2px;
    display: flex;
    justify-content: space-around;
}

#span-account {
    background-color: pink;
    font-size: 30px;
}

#span-tel {
    background-color: lightblue;
    /* float: right;     */
    font-size: 30px;
}

.span1 {
    width: 200px;
    border-radius: 10px;
    text-align: center;
    /* background-color: aqua; */
}

#div-user {
    width: 500px;
    height: 50px;
    line-height: 50px;
    outline: solid gray 1px;
}

#div-user>input {
    width: 400px;
    height: 30px;
    font-size: 25px;
    border: 0;
}

#div-password {
    width: 500px;
    height: 50px;
    line-height: 50px;
    outline: solid gray 1px;
}

#div-password>input {
    width: 400px;
    height: 30px;
    font-size: 25px;
    border: 0;
}

#img-user {
    width: 20px;
}

#img-password {
    width: 20px;
}

#div-op {
    width: 500px;
    height: 50px;
    outline: solid gray 1px;
    line-height: 50px;
    font-size: 20px;
}

#span-forget {
    color: rgb(64, 158, 255);
    float: right;
}

#div-button {

    width: 500px;
    height: 80px;
    outline: solid gray 1px;
    line-height: 80px;
    text-align: center;
}

#btn-login {
    width: 500px;
    height: 45px;
    background-color: rgb(64, 158, 255);
    line-height: 45px;
    color: #ffffff;
    font-size: 25px;

}
</style>

<script>
export default {
    name: 'Login',
    data() {
        return {
            user: '',
            pwd: '',
        }
    },
    methods: {
        doLogin() {
            console.log('user:', this.user, 'pwd:', this.pwd, 'autoLogin:')
            if (this.user === '1' && this.pwd === '1') {
                alert('登录成功!')
                window.location.href = 'http://www.4399.com'
            } else {
                alert('账号或密码错误!')
            }
        }
    }
}


</script>