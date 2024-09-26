<template>
<div>
    <router-link to="/card1" id="card1" class="card">
      卡1
    </router-link>
    <router-link to="/card2" id="card2" class="card">
      卡2
    </router-link>
    <router-link to="/card3" id="card3" class="card">
      卡3
    </router-link>
    <div id="view-card">
    <router-view >
        <!-- 这里是卡片内容 -->1
    </router-view>
    </div>
</div>
</template>

<style>
    .card {
        width: 100px;
        height: 50px;
        outline: solid black 1px;
        background: skyblue;
        display: inline-block;
        text-align: center;
        line-height: 50px;
    }
    #view-card {
        width: 300px;
        height: 400px;
        outline: solid green 1px;
        display: inline-block;
    }

</style>