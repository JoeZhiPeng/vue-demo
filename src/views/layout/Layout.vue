/**
 * @Author:      wangchao
 * @DateTime:    2018-11-19 
 * @Description: 将整体布局的组件Navbar头部
 */
<template>
    <div class="app-wrapper" :class="{hideSidebar:!sidebar.opened}">
        <navbar/>
        <Breadcrumb></Breadcrumb>
        <div class="main-container">
        	<div class="sidebar-wrapper">
        		
        	</div>
            <app-main/>
        </div>
    </div>
</template>

<script>
    import { Navbar,  AppMain, Breadcrumb } from 'views/layout';
    export default {
      name: 'layout',
      components: {
        Navbar,
        AppMain,
        Breadcrumb
      },
      computed: {
        sidebar() {
          return this.$store.state.app.sidebar;
        }
      }
    }
</script>

<style rel="stylesheet/scss" lang="scss" scoped>
    @import "src/assets/css/mixin.scss";
    .app-wrapper {
        @include clearfix;
        position: relative;
        min-height:inherit;//继承高度
        width: 100%;
        &.hideSidebar {
            .sidebar-wrapper {
                -webkit-transform: translate(-200px, 0);    //隐藏菜单 Chrome || Safari
                -moz-transform: translate(-200px, 0);       //隐藏菜单  Firefox 
                -ms-transform: translate(-200px, 0);        //隐藏菜单 IE 
                -o-transform: translate(-200px, 0);         //隐藏菜单 Opera
            }
            .app-container {
                /*padding: 10px;//当菜单隐藏的时候  paddingleft为0*/
                margin: 10px 0 0 0;
                -webkit-transition: all .28s ease-out;  //css3 有些浏览器不支持 Chrome || Safari
                -moz-transition: all .28s ease-out;  //css3 有些浏览器不支持 Firefox 
                -ms-transition: all .28s ease-out;//css3 有些浏览器不支持 IE
                -o-transition: all .28s ease-out;//css3 有些浏览器不支持 Opera
            }
        }
        .sidebar-wrapper {
            width: 0;
            position: fixed;
            top: 60px;
            bottom: 0;
            left: 0;
            z-index: 1001;
            overflow: hidden;
            -webkit-transition: all .28s ease-out;  //css3 有些浏览器不支持 Chrome || Safari
            -moz-transition: all .28s ease-out;  //css3 有些浏览器不支持 Firefox 
            -ms-transition: all .28s ease-out;//css3 有些浏览器不支持 IE
            -o-transition: all .28s ease-out;//css3 有些浏览器不支持 Opera
        }
        .sidebar-container {
            -webkit-transition: all .28s ease-out;  //css3 有些浏览器不支持 Chrome || Safari
            -moz-transition: all .28s ease-out;  //css3 有些浏览器不支持 Firefox 
            -ms-transition: all .28s ease-out;//css3 有些浏览器不支持 IE
            -o-transition: all .28s ease-out;//css3 有些浏览器不支持 Opera
            position: absolute;
            top: 0;
            bottom: 0;
            left: 0;
            right: 0;
            overflow-y: auto;
            overflow-x: hidden;
        }
        .main-container {
            height:inherit;//继承高度
            -webkit-transition: all .28s ease-out;  //css3 有些浏览器不支持 Chrome || Safari
            -moz-transition: all .28s ease-out;  //css3 有些浏览器不支持 Firefox 
            -ms-transition: all .28s ease-out;//css3 有些浏览器不支持 IE
            -o-transition: all .28s ease-out;//css3 有些浏览器不支持 Opera
        }
    }
</style>
