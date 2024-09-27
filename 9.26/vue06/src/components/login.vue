<template>
    <div id="div-login">
        <!-- 1.LOGO -->
        <img src="../img/logo.jpg" id="img-logo" alt="">
        <div id="div-method">
            <span id="span-account" class="span1" @click="switchToAccountLogin">账号密码登录</span>
            <span id="span-tel" class="span1" @click="switchToPhoneLogin">手机账号登录</span>
        </div>
        <!-- 2.登录方式 -->
        <div v-if="isAccountLogin">
            <div id="div-user">
                <img src="../img/user.png" id="img-user" alt="">
                <input type="text" placeholder="请输入账号" v-model="user">
            </div>
            <div id="div-password">
                <img src="../img/password.png" id="img-password" alt="">
                <input type="password" placeholder="请输入密码" v-model="pwd">
            </div>
        </div>
        <div v-else>
            <div id="div-user">
                <img src="../img/phone.png" id="img-phone" alt="">
                <input type="text" placeholder="请输入手机账号" v-model="phoneUser">
            </div>
            <div id="div-code">
                <img src="../img/code.png" id="img-code" alt="">
                <input type="text" placeholder="请输入验证码" v-model="code">
                <button @click="sendCode" class="span1">发送验证码</button>
            </div>
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
    /* background-color: pink; */
    font-size: 30px;
}

#span-tel {
    /* background-color: lightblue; */
    /* float: right;     */
    font-size: 30px;
}

.span1 {
    width: 200px;
    border-radius: 10px;
    text-align: center;
    background-color: rgb(62, 245, 245);

}
.span1:hover {
    cursor: pointer;
    background-color: #7dbfe8;
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
#div-code{
    width: 500px;
    height: 50px;
    line-height: 50px;
    outline: solid gray 1px;
    display: flex;
    /* justify-content: space-between; */
    align-items: center;

}
#div-code>input {
    width: 400px;
    height: 30px;
    font-size: 25px;
    border: 0;
}
#div-code>button {
    width: 120px;
    height: 50px;
    /* background-color: rgb(64, 158, 255); */
    /* color: #ffffff; */
    font-size: 20px;
    border: 0;
    
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
            isAccountLogin: true, // 默认显示账号密码登录
            user: '',
            pwd: '',
            phoneUser: '',
            code: '',
        }
    },
    methods: {
        switchToAccountLogin() {
            this.isAccountLogin = true;
        },
        switchToPhoneLogin() {
            this.isAccountLogin = false;
        },
        doLogin() {
            if (this.isAccountLogin) {
                // 账号密码登录逻辑
                if (this.user === '1' && this.pwd === '1') {
                    alert('登录成功!')
                    this.$router.push('/main');
                } else {
                    alert('账号或密码错误!')
                }
            } else {
                // 手机账号登录逻辑
                if (this.phoneUser === '1' && this.code === '123456') {
                    alert('登录成功!')
                } else {
                    alert('手机账号或验证码错误!')
                }
            }
        },
        sendCode() {
            // 这里添加发送验证码的逻辑
            alert('验证码已发送！请注意查收！')
        }
    }
}
</script>