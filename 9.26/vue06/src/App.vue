<template>
  <div>
    <router-view>
    </router-view>
  </div>
</template>

<script>
import login from "./components/login.vue";
export default {
  name: "App",
  components: {
    login
  }
};

</script>