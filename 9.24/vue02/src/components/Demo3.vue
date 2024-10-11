<template>
<div>
    <h1 class="A B">自定义组件3-样式绑定1</h1>
    <p :class="ys1">绑定单个</p>
    <p :class="ys2">绑定多个1</p>
    <p :class="[ys0,ys1]">绑定多个2</p>

</div>
</template>
<style>
    .A{
        color: rgb(74, 203, 143);
    }
    .B{
        background-color: pink;
    }
    .c{
        font-size: 30px;
    }
</style>

<script>
    export default {
        data(){
            return{
                ys0:"c",
                ys1:"A",
                ys2:["A","B"]
            }
        }
    }


</script>