<template>
    <div>
        <h1>组件7-事件参数</h1>
        <button @click="fun2('张飞')">参数按钮1</button>
        <button @click="fun3('张飞','关羽')">参数按钮2</button>
        <button @click="fun4">参数按钮3</button>
        <button @click="change" @dblclick="bcak">变色按钮</button>
        <button @click="nb($event,'张三','李四')">双参传递</button>
    </div>
</template>
<script>
export default{
    methods:{
        fun2(val){
            
            alert(val);
        },
        fun3(str0,str1){
            
            alert(str0+str1);
        },
        //"e"是默认隐藏对象，代表事件对象，可以获取事件对象中的属性和方法
        fun4(e){
            alert(e)
            // alert(按钮3);
            console.log(e.type); // 输出事件的类型，如 'click'

            console.log(e.target); // 输出触发事件的 DOM 元素
            console.log(e.clientX, e.clientY); // 输出鼠标点击时的坐标
        },
        change(e){
            e.target.style.background="pink";
            console.log(e.type);

        },
        bcak(e){
            e.target.style.background="white";
            console.log(e.type);

            
        },
        nb(e,str1,str2){
            console.log(e.target);
            console.log(e.type);

            console.log(str1);
            console.log(str2);
        }
        
    }
}
</script>
