import { createApp } from 'vue'
import App from './App.vue'

// 引入路由
import { createRouter, createWebHashHistory } from 'vue-router'
import login from './components/login.vue'
import Main from './components/Main.vue'

// 配置路由
var router = createRouter({
    history: createWebHashHistory(),
    routes: [
        {
            path: '/',
            component: login
        }, 
        {
            path: '/main',
            component: Main
        }
    ]
})

// 使用路由
const app = createApp(App);
app.use(router); // 这行代码将路由应用到你的应用中
app.mount('#app');

