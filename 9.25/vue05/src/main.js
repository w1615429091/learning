
// import { createApp, h } from 'vue'
// import App from './App.vue'
// //引入路由工具
// // 1-1.createRouter：创建路由的工具
// // 1-2.createWebHashHistory：取名字的工具，创建基于hash模式的路由历史记录
// import { createRouter, createWebHashHistory } from 'vue-router'
// import Login from './pages/Login.vue'
// import Register from './pages/Register.vue';

// var router = createRouter({
//     history:createWebHashHistory(),

//     routes: [
//         {
//             path: '/login',
//             component: Login
//         },
//         {
//             path: '/register',
//             component:Register
//         }
//     ]

// });
// createApp(App).use(router).mount('#app')

import { createRouter, createWebHashHistory } from 'vue-router'
import { createApp, h } from 'vue'
import App from './App.vue'
import Card1 from './pages/Card1.vue'
import Card2 from './pages/Card1.vue'
import Card3 from './pages/Card1.vue'

var router = createRouter({
    history:createWebHashHistory(),
    routes: [
        
        {
            path: '/card1',
            component: Card1
        },
        {
            path: '/card2',
            component: Card2
        },
        {
            path: '/card3',
            component: Card3
        }
    ]
})

createApp(App).use(router).mount('#app')
