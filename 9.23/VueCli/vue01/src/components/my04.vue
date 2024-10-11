<template>
    <div>
    <!-- <p v-if = " flag">显示</p>
    <p v-else>隐藏</p> -->
    <!-- <p>不显示</p> -->
    <!-- <h1>组件中的v-if</h1> -->
    <p v-if ="score>=90" >优秀</p>
    <p v-else-if="score>=80">良好</p>
    <p v-else-if="score>=60">中等</p>
    <p v-else>较差</p>
</div>
</template>
<script>
    export default {
        data() {
            return {
                flag: false,
                score: 99
            }
        },
    }

</script>