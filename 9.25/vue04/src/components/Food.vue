<template>
<div>


    <button @click="getFruit">水果</button>
    <button @click="getSnack">零食</button>
    <button @click="getDrink">饮料</button>
    <div>{{ msg }}</div>
</div>

</template>

<script>
    import axios from 'axios';
    export default {
       data() {
    return {
        msg: ""
        }
    },
        methods: {
            getFruit() {
                var that = this;
                var p = axios.get("水果.txt");
                p.then(function (response) {
                    that.msg = response.data;
                });
            } // 这里结束了 getFruit 方法
        } // 这里结束了 methods 对象
    }


</script>