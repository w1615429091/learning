<template>
    <div>
    <h1>自定义组件2:用户注册</h1>
    账号:<input type="text" v-model="account" />
    <p>{{ account }}</p>
    <input type="radio" name="sex" value="man" v-model="sex"/>男
    <input type="radio" name="sex" value="woman" v-model="sex"/>女
    <input type="radio" name="sex" value="unknown" v-model="sex"/>未知
    <p>{{ sex }}</p>兴趣爱好：
    <input type="checkbox" v-model="climb" />爬山
    <input type="checkbox" v-model="swim" />游泳
    <input type="checkbox" v-model="jog" />蹦极
    <p>{{ climb }}-{{ swim }}-{{ jog }}</p>


    喜欢的水果：
    <input type="checkbox" value="香蕉" v-model="fruit" />香蕉
    <input type="checkbox" value="苹果" v-model="fruit" />苹果
    <input type="checkbox" value="西瓜" v-model="fruit" />西瓜
    <input type="checkbox" value="梨子" v-model="fruit" />梨子
    <input type="checkbox" value="草莓" v-model="fruit" />草莓
    <p>    {{fruit}}    </p>
    所在城市：
    <select name="" id="" value="city" v-model="city">
        <option value="北京">北京</option>
        <option value="上海">上海</option>
        <option value="深圳">深圳</option>
        <option value="广州">广州</option>
    </select>
    <p>{{ city }}</p>
    <textarea name="" id="" cols="30" rows="10" v-model="remark"></textarea>
    <p>{{ remark }}</p>
    <!-- //上传图片 -->
    <input type="file" />
    <input type="date" v-memo="dt" />
    <p>{{ dt }}</p>
</div>
</template>
<script>
    export default {
        data(){
            return{
                account:'',
                sex:'',
                climb:'false',
                swim:'false',
                jog:'false',
                fruit:[],
                city:'',
                remark:'',
                dt:''
            }
        }
    }
</script>
