<template>
    <div id="nav">
        <ItemList />
    </div>
</template>
<script>
    import ItemList from './ItemList.vue';
    export default {
        components: {
            ItemList
        }  
    }

</script>
<style>
#nav{
    width: 30%;
    height: 500px;
    outline: 1px solid red;
    background-color: aqua;
    display: inline-block;
    vertical-align: top;
}


</style>