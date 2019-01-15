/**
 * @Author:      wangchao
 * @DateTime:    2018-11-19 09:12:07
 * @Description: 路由配置
 */
import Vue from 'vue';
import Router from 'vue-router';
import store from '../store/index.js';  //状态store
//webpack热加载在开发环境下会很慢，因此只在生产环境下进行懒加载
const _import = require('./_import_' + process.env.NODE_ENV);
/* 布局以及菜单*/
import Layout from '../views/layout/Layout';
/* login 登录找回密码 以及重置密码*/
const Login = _import('login/Index');
/* 个人信息 */
const Personal = _import('login/Personal');
/* 错误页面 */
const Err404 = _import('error/404');
const Err401 = _import('error/401');
/*系统管理：用户/组管理*/
const AccountGroup = _import('sysmgr/AccountGroup');

Vue.use(Router);//全局方法 Vue.use() 使用插件
  /**
    * hidden : true不显示在菜单栏
    * redirect : 设置重定向，noredirect是不重定向
    * noDropdown : true 不显示子菜单
    * meta : { role: ['admin'] }  will control the page role
    * children:嵌套路由,component必不可少，先进入父路由
    **/
    const constantRouterMap = [
      //登录、找回密码、重新设置密码、以及401、404
      { path: '/login', component: Login, hidden: true },
      { path: '/error/404', component: Err404, hidden: true },  //假地址时重定向
      { path: '/error/401', component: Err401, hidden: true }, 

      //路由 /  重定向到首页
      {
        path: '/',
        //redirect: '/lbs/CarGps',  //路由为 / 就重定向到默认首页
        redirect: to => {
          // 方法接收 目标路由 作为参数
          // return 重定向的 字符串路径/路径对
          let paths = "";
          if(store.getters.routerPath && store.getters.routerPath){
            paths =  store.getters.routerPath;
          }else{
            paths = '/user/Personal';
          }
          return paths;
        },
        hidden: true,
      },
      {
        path: '/sysmgr',
        component: Layout,
        redirect: 'noredirect',
        name: '系统管理',
        children: [
          { path: 'AccountGroup', component: AccountGroup, name: '用户/组管理' }
        ]
      },{
        path: '/user',
        component: Layout,
        redirect: 'noredirect',
        name: '位置服务',
        children: [
          { path: 'Personal', component: Personal, name: '个人信息' }
        ]
      },
      { path: '*', redirect: '/error/404', hidden: true }
    ];



//创建router 对路由constantRouterMap进行管理
export default new Router({
  mode: 'hash',  //开启history模式保证spa可以和以前的网页一样可以前进和后退  hash
  scrollBehavior: () => ({ y: 0 }),  //路由跳转保持原先的滚动位置，支持 history.pushState 的浏览器中可用。
  routes: constantRouterMap  //嵌套路由组
});





