<template>
  <div>
    <h1>组件6-事件</h1>
    <button v-on:click="fun1">单击</button>
    <button v-on:click="count++">add</button>
    <p>{{ count }}</p>
  </div>
</template>
<script>
export default{
    data(){
        return{
            count:0
            };
        },
        methods:{
            fun1(){
                alert("单击");
            }
        }
    }
</script>