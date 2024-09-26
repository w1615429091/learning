<template>
    <div>
    <button @click="getData">获取数据</button>
    <div id="div1"></div>
    <!-- <input v-model="name">  -->
     <div>{{rm}}</div>
    </div>  
</template>
<script>
import axios from 'axios';
    export default {
        data(){
            return{
                rm:""
            }
        },
        methods: {
            getData() {
                var laoda = this;
                // console.log('获取数据');
                var p1 = axios.get("1.txt");
                console.log(p1);
                p1.then(function(response) {
                    console.log(response);
                    console.log(response.data);
                    laoda.rm = response.data;
                    // var div1 = document.getElementById("div1");
                    // div1.innerHTML = response.data;

                })
            }
        }
    }
</script>