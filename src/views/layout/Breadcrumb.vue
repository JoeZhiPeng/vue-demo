/**
 * @Author:      wangchao
 * @DateTime:    2018-12-27
 * @Description: 面包屑
 */
<template>
  <div>
    <el-breadcrumb  v-if="breadcrumbList" separator-class="el-icon-arrow-right" class="breadcrumb">
      <el-breadcrumb-item
        v-for="(item, index) in breadcrumbList"
        :key="index"
      >{{item}}</el-breadcrumb-item>
    </el-breadcrumb>
  </div>
</template>

<script>
import { mapGetters } from "vuex";
// import { constants } from 'http2';
export default {
  data() {
    return {};
  },
  computed: {
    ...mapGetters(["breadcrumbList"])
  },
  components: {},
  mounted() {
    this.breadcrumbList;
  },
  watch: {},
  methods: {}
};
</script>

<style  rel="stylesheet/scss" lang="scss" scoped>
.breadcrumb {
  height: 40px;
  line-height: 40px;
  padding-left: 20px;
  font-size: 14px;
  border: 1px solid #e9e9e9;
  background: white;
}
</style>
