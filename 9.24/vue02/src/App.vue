<template><div>


<!-- 
  <h1>Hello Vue</h1>
  <button @click="change">改变名字</button>
  <p>{{ sname }}</p> -->

<!-- <Demo1></Demo1>  -->
 <!-- // 这样写也可以 -->

<!-- <Demo4></Demo4> -->
<!-- <Demo3></Demo3> -->
<!-- <header></header> -->
<elm />
<Nav></Nav>
<Main>  </Main>
<Content />
</div>

</template>

<script>
// 当我们要在一个组件中引入另一个组件时
// 必须要在当前组件中加上注册信息
// import Demo2 from "./components/Demo2.vue";
// import Demo4 from "./components/Demo4.vue";
import elm from "./components/Header.vue";
import Nav from "./components/Nav.vue";
import Main from "./components/Main.vue";

export default{
  components:{
    // Demo1,
    // Demo4,
    elm,
    Nav,
    Main

  }
}
  // export default{
  //   data(){
  //     return{
  //       sname:'张三'
  //     }
  //   },
  //   methods:{
  //     change(){
  //       this.sname = "李四"
  //     }
  //   },
  //   watch:{
  //     sname(newStr,oldStr){
  //       //监听器 变量发生改变时执行 
  //       console.log("sname改变");
  //       console.log(newStr,oldStr);
  //     }
  //   }
  // }
</script>