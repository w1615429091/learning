<template>
<div>
<h1>组件5：v-for</h1>
<div>
    <p v-for="val in peoples" :key="val">{{ val }}</p>
    <p v-for="(val,index) in peoples" v-bind:key="index">{{ val }}</p>
</div>
</div>
</template>
<script>
export default {
    data() {
        return {
            peoples: ["张三", "李四", "王五"]
        }
    }
}
</script>
