<template>
  <el-container style="min-height: 100vh">
    <el-aside :width="sideWidth + 'px'" style="background-color: rgb(238, 241, 246); box-shadow: 2px 0 6px rgb(0 21 41 / 35%);">
      <el-menu :default-openeds="['1', '3']" style="min-height: 100%; overflow-x: hidden"
               background-color="rgb(42,43,45)"
               text-color="#fff"
               active-text-color="rgb(110,179,255)"
               :collapse-transition="false"
               :collapse="isCollapse"
      >
        <div style="height: 60px; line-height: 60px; text-align: center">
          <img src="../assets/logo.png" alt="" style="width: 20px; position: relative; top: 5px; margin-right: 5px">
          <b style="color: white" v-show="logoTextShow">论文管理系统</b>
        </div>
        <el-submenu index="1">
          <template slot="title">
            <i class="el-icon-message"></i>
            <span slot="title">查找论文</span>   <!--//导航1-->
          </template>
          <el-menu-item-group>
            <template slot="title">根据作者查找</template>  <!--//分组1-->
            <el-menu-item index="1-1">学生</el-menu-item>    <!--//选项1-->
            <el-menu-item index="1-2">老师</el-menu-item>    <!--//选项2-->
          </el-menu-item-group>
          <el-menu-item-group title="根据论文查找">   <!--//分组2-->
            <el-menu-item index="1-3">论文编号</el-menu-item>   <!--//选项3-->
            <el-menu-item index="1-4">论文名称</el-menu-item>   <!--//选项4-->
            <el-menu-item index="1-5">论文类别</el-menu-item>   <!--//选项5-->
            <el-menu-item index="1-6">论文等级</el-menu-item>   <!--//选项6-->
          </el-menu-item-group>
        </el-submenu>
        <el-submenu index="2">
          <template slot="title">
            <i class="el-icon-menu"></i>
            <span slot="title">对论文的操作</span>    <!--//导航2-->
          </template>
          <el-menu-item-group>
            <el-menu-item index="2-1">上传论文</el-menu-item>   <!--//选项1-->
            <el-menu-item index="2-2">删除论文</el-menu-item>   <!--//选项2-->
            <el-menu-item index="2-3">修改论文</el-menu-item>   <!--//选项3-->
          </el-menu-item-group>
        </el-submenu>
        <el-submenu index="3">
          <template slot="title">
            <i class="el-icon-setting"></i>
            <span slot="title">个人中心</span>
          </template>
<!--          <el-menu-item-group>-->
<!--            <template slot="title">分组一</template>-->
<!--            <el-menu-item index="3-1">选项1</el-menu-item>-->
<!--            <el-menu-item index="3-2">选项2</el-menu-item>-->
<!--          </el-menu-item-group>-->
<!--          <el-menu-item-group title="分组2">-->
<!--            <el-menu-item index="3-3">选项3</el-menu-item>-->
<!--          </el-menu-item-group>-->
<!--          <el-submenu index="3-4">-->
<!--            <template slot="title">选项4</template>-->
<!--            <el-menu-item index="3-4-1">选项4-1</el-menu-item>-->
<!--          </el-submenu>-->
        </el-submenu>
      </el-menu>
    </el-aside>

    <el-container>

      <el-header style="font-size: 12px; border-bottom: 1px solid #ccc; line-height: 60px; display: flex">
        <div style="flex: 1; font-size: 20px">
          <span :class="collapseBtnClass" style="cursor: pointer" @click="collapse"></span>
        </div>
        <el-dropdown style="width: 70px; cursor: pointer">
          <span>Leeer</span><i class="el-icon-arrow-down" style="margin-left: 5px"></i>
          <el-dropdown-menu slot="dropdown">
            <el-dropdown-item>个人信息</el-dropdown-item>
            <el-dropdown-item>退出</el-dropdown-item>
          </el-dropdown-menu>
        </el-dropdown>

      </el-header>

      <el-main>
        <el-table :data="tableData">
          <el-table-column prop="number" label="论文编号" width="140">
          </el-table-column>
          <el-table-column prop="name" label="论文名称" width="320">
          </el-table-column>
          <el-table-column prop="date" label="发表时间">
          </el-table-column>
        </el-table>
      </el-main>

    </el-container>
  </el-container>
</template>

<script>

export default {
  name: 'Home',
  data() {
    const item = {
      number: '1001',
      name: '基于情感分析和PCA-LSTM模型的股票价格预测',
      date: '2022-05-27',
    };
    return {
      tableData: Array(1).fill(item),
      collapseBtnClass: 'el-icon-s-fold',
      isCollapse: false,
      sideWidth: 200,
      logoTextShow: true
    }
  },
  methods: {
    collapse() {  // 点击收缩按钮触发
      this.isCollapse = !this.isCollapse
      if (this.isCollapse) {  // 收缩
        this.sideWidth = 64
        this.collapseBtnClass = 'el-icon-s-unfold'
        this.logoTextShow = false
      } else {   // 展开
        this.sideWidth = 200
        this.collapseBtnClass = 'el-icon-s-fold'
        this.logoTextShow = true
      }
    }
  }
}
</script>