<template>
        <div id="Main">
            <p>内容1</p>
            <p>内容2</p>
            <Content />
        </div>
</template>
<style>
    #Main {
        width: 60%;
        height: 500px;
        border: solid 3px red;
        display: inline-block;
        margin-left: 85px;
        background-color: aquamarine;
    }
    
</style>
<script>
    import Content from './Content.vue';
    export default {
        components: {
            Content
        }
    }
</script>