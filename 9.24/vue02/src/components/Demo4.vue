<template>
    <div>
        <h1>自定义组件4-样式绑定2</h1>
        <p style="color:red;background-color: aqua;">不是哥们</p>
        <p :style="ys1">哈哈</p>
    </div>
</template>


<script>
export default {
    data(){
        return {
            ys1:{
                color:'green'
                
            }
        }
    }
}


</script>