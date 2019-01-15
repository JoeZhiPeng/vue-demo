/**
 * @Author:      wangchao
 * @DateTime:    2018-11-21 10:14:22
 * @Description: 路由store
 */
const permission = {
  state: {
    routers:null,//菜单
    perms:null,//权限
    breadcrumbList:null
    
  },
  mutations: {
    SET_ROUTERS: (state, routers) => {
      state.routers = routers;
    },
    SET_PERMS: (state, perms) => {
      state.perms = perms;
    },
    SET_BREADCRUMBLIST: (state, menus) => {
      state.breadcrumbList = [];
      state.breadcrumbList = menus;
    }
  },
  actions: {
    //c菜单
    GenerateRoutes({ commit }, data) {
      console.log('该用户所有的菜单：',data);
      return new Promise(resolve => {
        commit('SET_ROUTERS', data); 
        resolve();
      })
    },
    //按钮权限
    GeneratePerms({ commit }, data) {
      console.log('该用户下所有权限',data);
      return new Promise(resolve => {
        commit('SET_PERMS', data); 
        resolve();
      })
    }
  }
};
export default permission;
