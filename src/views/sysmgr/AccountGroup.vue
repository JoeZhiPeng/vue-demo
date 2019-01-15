/**
 * @Author:      qiaozp
 * @DateTime:    2018-11-28
 * @Description: 用户管理组件
 */
<template>
	<div class="app-container">
		<!-- 搜索条件 -->
		<div class="filter-container">
			<el-form :inline="true" :model="listQuery" class="demo-form-inline">
				<el-form-item label="账号">
					<el-input v-model="listQuery.account" placeholder="请输入账号" clearable></el-input>
				</el-form-item>
				<el-form-item label="昵称">
					<el-input v-model="listQuery.accountNick" placeholder="请输入昵称" clearable></el-input>
				</el-form-item>
				<el-form-item label="状态">
					<el-select v-model="listQuery.status" clearable placeholder="请选择状态">
						<el-option label="启用" value="Y"></el-option>
						<el-option label="停用" value="N"></el-option>
					</el-select>
				</el-form-item>
				<el-form-item label="联系人">
					<el-input v-model="listQuery.contacts" placeholder="请输入联系人" clearable></el-input>
				</el-form-item>
				<el-form-item label="手机">
					<el-input v-model="listQuery.phone" placeholder="请输入手机" clearable></el-input>
				</el-form-item>
				<el-form-item>
					<el-button class="filter-item btnColor" type="primary" icon="el-icon-search" @click="getList(true)">查询</el-button>
					<el-button v-if="permBtn.account_add" class="filter-item btnColor" type="primary" icon="el-icon-plus" @click="handleCreate(true)">新增</el-button>
				</el-form-item>
			</el-form>
		</div>
		<!-- 表格 -->
		<el-table ref="multipleTable" :data="list" :height="height"  fit highlight-current-row 
				v-loading="listLoading" element-loading-text="拼命加载中">
			<el-table-column align="center" label='账号' prop="account" show-overflow-tooltip></el-table-column>
			<el-table-column align="center" label="昵称" prop="accountNick" show-overflow-tooltip></el-table-column>
			<el-table-column align="center" label="手机" prop="phone" width="120"></el-table-column>
			<el-table-column align="center" label="状态" width="50">
				<template slot-scope="scope">
					<div v-if="scope.row.status == 'Y'">启用</div>
					<div v-else>停用</div>
				</template>
			</el-table-column>
			<el-table-column align="center" label="联系人" prop="contacts" show-overflow-tooltip></el-table-column>
			<el-table-column align="center" label="邮箱" prop="email" show-overflow-tooltip></el-table-column>
			<el-table-column align="center" label="操作" width="140">
				<template slot-scope="scope">
					<el-button v-if="permBtn.account_role" class="btn role" @click="roleManage(scope.$index, scope.row)" title="角色管理"></el-button>
					<el-button v-if="permBtn.account_delete" class="btn delete" size="small" @click="handleDelete(scope.$index, scope.row)" title="删除"></el-button>
				</template>
			</el-table-column>
		</el-table>
		<!-- 分页 -->
		<pagination ref="page" :total="total" @reLoadData="paginationChange"></pagination>

		<!--新增弹框-->
		<el-dialog title="新增用户" :visible.sync="addFormVisible" top="10%" width="700px" ock-scroll class="boxres dialog_input" :close-on-click-modal="false"
			:close-on-press-escape="false">
			<el-form class="small-space" ref="addDialogForm" :rules="rulesAdd" :model="addDataTemp" label-position="left" label-width="105px"
					v-loading="addLoad" element-loading-text="拼命加载中">
				<el-row>
					<el-col :span="12">
						<div class="grid-content bg-purple">
							<el-form-item label="用户名称：" prop="account">
								<el-input v-model="addDataTemp.account" :maxlength="50" placeholder="用户名称"></el-input>
							</el-form-item>
							
							<el-form-item label="密码：" prop="password">
								<el-input type="password" :maxlength="20" v-model="addDataTemp.password" placeholder="密码"></el-input>
							</el-form-item>
							
							<el-form-item label="重复密码：" prop="addDbPassword">
								<el-input type="password" :maxlength="20" v-model="addDataTemp.addDbPassword" placeholder="重复密码"></el-input>
							</el-form-item>
							
							<el-form-item label="邮箱：" prop="email">
								<el-input v-model="addDataTemp.email" :maxlength="50" placeholder="邮箱"></el-input>
							</el-form-item>
						</div>
					</el-col>
					<el-col :span="12" style="padding-left: 50px;">
						<el-form-item label="昵称：" prop="accountNick">
							<el-input v-model="addDataTemp.accountNick" :maxlength="50" placeholder="昵称"></el-input>
						</el-form-item>
						<el-form-item label="联系人：" prop="contacts">
							<el-input v-model="addDataTemp.contacts" :maxlength="30" placeholder="联系人"></el-input>
						</el-form-item>
						<el-form-item label="手机：" prop="phone">
							<el-input v-model="addDataTemp.phone" placeholder="手机"></el-input>
						</el-form-item>
						<el-form-item label="状态：">
							<el-select v-model="addDataTemp.status" placeholder="请选择">
								<el-option label="启用" value="Y"></el-option>
								<el-option label="停用" value="N"></el-option>
							</el-select>
						</el-form-item>
					</el-col>
				</el-row>
				<el-form-item class="formButton">
					<el-button @click="addFormVisible = false">取 消</el-button>
					<el-button type="primary" @click.native.prevent="handleCreateSubmit('addDialogForm')" class="btnColor">确 定</el-button>
				</el-form-item>
			</el-form>
		</el-dialog>

		<!-- 角色选择 -->
		<el-dialog  class="roleSelectDialog" title="角色管理" 
			:visible.sync="roleManFormVisible" :close-on-click-modal="false"
			:close-on-press-escape="false" top="10%" width="400px" lock-scroll>
			<div v-loading="roleLoad" element-loading-text="拼命加载中">
				<el-row>
					<label>角色选择：</label>
					<el-select v-model="accountSetRole.roleIds" @change="changeSelVal" multiple
					    collapse-tags  placeholder="请选择">
						<el-option
							v-for="item in roleList"
							:key="item.roleId"
							:label="item.roleName"
							:title="item.roleName"
							:value="item.roleId">
						</el-option>
					</el-select>
				</el-row>
				<div class="panel-body">
					<el-tag class="role_tag"
					v-for="tag in accountSetRole.roles"
					:key="tag.roleId"
					closable
					:disable-transitions="false"
					@close="handleClose(tag)" >{{tag.roleName}}</el-tag>
				</div>
				<div class="formButton">
					<el-button @click="roleManFormVisible = false">取 消</el-button>
					<el-button type="primary" @click.native.prevent="roleSubmit()" class="btnColor">确 定</el-button>
				</div>
			</div>
		</el-dialog> 
	</div>
</template>

<script>
	import "../../assets/css/index.scss";
	import { Message } from 'element-ui';
	import { validate } from 'utils/validate';
	import { utils } from 'src/utils';
	import md5 from 'blueimp-md5';
	import Pagination from '../../components/Pagination';
	
	export default {
		components: {
			'pagination': Pagination
		 },
		data() {
			const vm =this;
			//新增页面密码校验
			const validatePassAdd = (rule, value, callback) => {
				if (value === '') {
					callback(new Error('请输入密码'));
				} else {
					if (vm.addDataTemp.addDbPassword !== '') {
						vm.$refs.addDialogForm.validateField('addDbPassword');
					}
					callback();
				}
    	    };
			const validatePass2Add = (rule, value, callback) => {
				if (value === '') {
					callback(new Error('请再次输入密码'));
				} else if (value !== vm.addDataTemp.password) {
					callback(new Error('两次输入密码不一致'));
				} else {
					callback();
				}
			};

			return {
				//按钮的权限 查询query 新增add   true 显示  false 隐藏
				permBtn:{
					account_add: false,
					account_delete: false, 
					account_modify: false, 
					account_check: false, 
					account_role: false,
				},

				//唯一性验证状态记录
				isValidate:{
					account: false,
					phone: false,
					isOk: false   //点击确定第一时间将此变量设置为true
				},

				list: null, //表格list
				total: 0,
				listLoading: true,
				height: 540,

				deptList: [], //组织机构树数据
				//列表查询参数
				listQuery: {
					iDisplayLength: 10,
					iDisplayStart: 0,
					account: '',
					accountNick: '',
					contacts: '',
					deptId: '',
					phone: '',
					status: '',
				},

				//树控件数据映射关系
        		defaultProps: {
          			children: 'children',
          			label: 'deptName'
				},

				//新建数据
				addDataTemp: {
					account: "",
					accountNick: "",
					allowMobile: "",
					contacts: "",
					deptId: "",
					email: "",
					password: "",//密码
					addDbPassword: "", //新增重复密码
					phone: "",
					status: "",
				},
				allowMobileAdd: false, //新建允许手机登录
				//新增编辑数据校验
				rulesAdd: {
					accountNick: [
						{ required: true, message: '请输入昵称', trigger: 'blur' }
					],
					contacts: [
						{ required: true, message: '请输入联系人', trigger: 'blur'}
					],
					email: [
						{ required: true, validator: validate.isEmail, trigger: 'blur' }
					],
					phone: [
						{ required: true, validator: validate.validateTelphone, trigger: 'blur' },
					],
					password: [
						{ required: true, validator: validatePassAdd, trigger: 'blur' },
						{ required: true, validator: validate.validatePass, trigger: 'blur' }
					],
					addDbPassword: [
						{ required: true, trigger: 'blur' , validator: validatePass2Add },
						{ required: true, trigger: 'blur' , validator: validate.validatePass},
						
					]
				},
				rulesEdit: {
					accountNick: [
						{ required: true, message: '请输入昵称', trigger: 'blur' }
					],
					contacts: [
						{ required: true, message: '请输入联系人', trigger: 'blur'}
					],
					email: [
						{ required: true, validator: validate.isEmail, trigger: 'blur' }
					],
					phone: [
						{ required: true, validator: validate.validateTelphone, trigger: 'blur' },
					]
				},

				//编辑数据
				editParamsTemp: {
					accountId: "",
					account: "",
					accountNick: "",
					allowMobile: "",
					contacts: "",
					deptId: "",
					email: "",
					phone: "",
					status: "",
				},
				deptNameCheck: "", //查看需要的部门名称
				roleNamesCheck: "", //查看需要的角色名称
				allowMobileEdit: false, //修改允许手机登录

				//角色列表数据
				roleList: [],

				//用户赋权数据
				accountSetRole:{
					roleIds: [],
					roles: [],
					accountId: ""
				},
				addFormVisible: false,
				updateFormVisible: false,
				checkFormVisible: false,
				roleManFormVisible: false,

				waitTime: null,
				addLoad: false,//新增加载状态
				updateLoad: false,//修改加载状态
				roleLoad: false,//角色赋权状态
			}
		},
		mounted() {
			var vm = this;
			utils.getTableHeight((height)=>{
				this.height = height;
			});
			vm.getPerm();
			vm.getList();
		},
		//实例销毁之间调用。在这一步，实例仍然完全可用。   时间定时器
		beforeDestroy(){
			if(this.waitTime){
				this.waitTime = clearInterval(this.waitTime); //去掉定时器的方法   同一个变量做定时器
			}
		},
		methods: {
			//获取当前页面的权限
			getPerm(){
				this.permBtn = utils.permsButton(this);
			},
			//获取列表数据
			getList(isBackHome = false) {
				var vm = this;
				if (isBackHome) {
					if (this.listQuery.iDisplayStart != 0) {
						this.$refs.page.backFirstPage();
						return;
					}
				}
				vm.listLoading = true;
				//调用接口
		        vm.$instance.post("/proxy/sysmgr/account/findActList", JSON.parse(JSON.stringify(vm.listQuery))).then(res =>{
		          	if(res.status == 200){
		                vm.list = res.data.data;
						vm.total = res.data.contTotal;
		            }else{
		                Message.error({message:"调用接口失败"});
					}
					vm.listLoading = false;
		        }).catch(error => {vm.listLoading = false;});
			},
			/**
			 * 分页改变，加载数据
			 */
			paginationChange(pageData) {
				this.listQuery.iDisplayStart = pageData.iDisplayStart;
				this.listQuery.iDisplayLength = pageData.iDisplayLength;
				this.getList();
			},
			deptCurrentChange(deptId) {
				this.listQuery.deptId = deptId;
			},
			resetForm(formName) {
				if (this.$refs[formName] !== undefined) {
					this.$refs[formName].resetFields();
				}
			},
			//新增
			handleCreate() {
				this.addDataTemp.account = "";
				this.addDataTemp.accountNick = "";
				this.addDataTemp.allowMobile = "";
				this.addDataTemp.contacts = "";
				this.addDataTemp.deptId = "";
				this.addDataTemp.email = "";
				this.addDataTemp.password = "";//密码
				this.addDataTemp.addDbPassword = ""; //新增重复密码
				this.addDataTemp.phone = "";
				this.addDataTemp.status = "Y";
				this.allowMobileAdd = false;
				this.isValidate.isOk = false;
				this.isValidate.account = false;
				this.isValidate.phone = false;

				if (this.$refs.addDepartSelect) {
					this.$refs.addDepartSelect.deptClear();
					this.$refs.addDialogForm.clearValidate();
				}
				
				this.resetForm("addDialogForm");
				this.addFormVisible = true;
			},
			//新增确定
			handleCreateSubmit(formName) {
				this.isValidate.isOk = true;
				var vm = this;
				this.addDataTemp.allowMobile = this.allowMobileAdd ? "Y" : "N";
				validate.isValidate(this, formName, (formData)=>{
					if(formData.validates){
						vm.createSubmit();
					}
					vm.isValidate.isOk = false;
				});
			},
			//新增提交
			createSubmit() {
				var vm = this;
				let params = JSON.parse(JSON.stringify(vm.addDataTemp));
				delete params.addDbPassword;
				vm.addLoad = true;
				
				vm.$instance.post("/proxy/sysmgr/account/addAct", params).then(res =>{
					if(res.status == 200){
						vm.addLoad = false;
						if (res.data.success) {
							vm.addFormVisible = false;	
							Message({
					          showClose: true,
					          message: '新增成功',
					          type: 'success',
					          duration: 1000 ,
					          onClose: function(){
					          	vm.getList();
					          }
					        });
						} else {
							Message.error({message:res.data.errorMsg});
							
						}						
					}else{
						Message.error({message:"调用接口失败"});
						vm.addLoad = false;
					}
				}).catch(error => {vm.addLoad = false;Message.error({message:"添加失败！"});});	
			},
			//角色管理
			roleManage(index, row) {
				this.accountSetRole.accountId = row.accountId;
				this.accountSetRole.roleIds = [];
				var vm = this;
				//有数据不再请求
				if (vm.roleList && vm.roleList.length == 0) {
					vm.$instance.get("/proxy/sysmgr/role/roleArr").then(res =>{
						if(res.status == 200){
							vm.roleList = res.data;
						}else{
							Message.error({message:"调用接口失败"});
						}
					}).catch(error => {});
				}
				//获取当前角色
				vm.$instance.get("/proxy/sysmgr/account/findRolesByActId", {params: {"accountId": row.accountId}}).then(res =>{
					if(res.status == 200){
						vm.accountSetRole.roles = res.data;
						for(let obj of res.data){
							vm.accountSetRole.roleIds.push(obj.roleId);
						}
					}else{
						Message.error({message:"调用接口失败"});
					}
				}).catch(error => {});
				
				vm.roleManFormVisible = true;
			},
			//赋权
			roleSubmit() {
				var vm = this;
				vm.roleLoad = true;
				var param = JSON.parse(JSON.stringify(vm.accountSetRole));
				delete param.roles;
				vm.$instance.post("/proxy/sysmgr/account/roleManage", param).then(res =>{
					vm.roleLoad = false;
					if(res.status == 200){
						vm.roleLoad = false;
						if (res.data.success) {
							vm.roleManFormVisible = false;
							Message.success({message: '赋权成功！'});
						} else {
							Message.error({message:res.data.errorMsg});
						}
					}else{
						Message.error({message:"调用接口失败"});
					}
				}).catch(error => {vm.roleLoad = false; vm.roleManFormVisible = false;});
			},
			
			//删除
			handleDelete(index, row) {
				var vm = this;
				let param = {};
				param.accountId = row.accountId;
				//确定删除
				this.$confirm('是否删除< '+ row.account +' >账户！', '提示', {
					confirmButtonText: '确定',
					cancelButtonText: '取消',
					type: 'warning'
				}).then(() => {
					//调用接口
					vm.$instance.post("/proxy/sysmgr/account/deleteAct", param).then(res =>{
						if(res.status == 200){
							if (res.data.success) {
								Message.success({message: '删除成功！'});
								vm.$refs.page.deleteItemReLoadList();
							} else {
								Message.error({message:res.data.errorMsg});
							}
						}else{
							Message.error({message:"调用接口失败"});
						}
					}).catch(error => {});
				}).catch(() => {
					Message.info({message: '已取消删除'});          
				});
			},
			
      		//选中角色 事件
      		changeSelVal(data){
      			this.accountSetRole.roles = [];
      			//将选中的角色ID 循环 找到相对应的角色name
				for(let i = 0;i<data.length;i++){
					for(let j = 0; j<this.roleList.length;j++){
						if(data[i] == this.roleList[j].roleId){
							this.accountSetRole.roles.push(this.roleList[j]);
						}
					}
				}
      		},
      		//已选中角色 取消事件
      		handleClose(tag){
      			//es6 数组删除特定的元素
      			this.accountSetRole.roles.splice(
      				this.accountSetRole.roles.findIndex(
      					item => item.roleId === tag.roleId
      				), 
      			1);
      			this.accountSetRole.roleIds.splice(
      				this.accountSetRole.roleIds.findIndex(
      					item => item === tag.roleId
      				), 
      			1);
      		}
		}
	}
	
</script>
<style rel="stylesheet/scss" lang="scss">
	.roleSelectDialog .el-input {
		width: 260px;
	}
	.roleSelectDialog .el-select__tags {
		display: none;
	}
	.device-imei>div>div {
		cursor: pointer;
		width: 160px;
		height: 30px;
		line-height: 30px;
		padding: 0 10px;
		color: #c0c4cc;
		border: 1px solid #dcdfe6;
		border-radius: 4px;
	}
	
	.box .el-dialog {
		width: 25%;
	}
	
	.el-tabs__nav-wrap::after{
		background: none;
	}
	
	.el-tabs__item{
		border: 1px solid #e9e9e9;
		text-align: center;
		border-radius: 4px;
		-webkit-border-radius: 4px;
    	-moz-border-radius: 4px;
    	padding: 0 30px !important;
	}
	.el-tabs__item.is-active{
		background: #1e4d78;
		border: 1px solid #1e4d78;
		color: #fff;
	}
	.el-tabs__active-bar{
		background: none;
	}
	.box form{
		padding-left: 50px;
	}
	.dialogDeptTree {
		border: 1px solid #ddd;
		max-height: 150px;
		min-height: 150px;
		overflow-y: auto; 
	}
	.panel-body{
		min-height: 100px;
		margin-top: 20px;
	    background-color: #f8f9fb;
	    overflow-x:hidden;
	    overflow-y:auto;
	}
	
	.el-tag.el-tag--info.el-tag--small{
		height: 24px;
	}
	
	.role_tag{
		display: inline-table;
		margin-bottom: 5px;
		background-color: #ebebeb;
		color: #797979;
		border: none;
		padding: 1px 10px;
		margin-right: 5px;
		min-height: 20px !important;
		line-height: 20px !important;
	}
	.el-tag.role_tag{
		white-space: inherit;
		height: 0;
	}
	
	.el-select-dropdown__item{
		width: 250px;
		padding: 0 10px;
	}
	.el-select-dropdown__item.selected::after{
		right: 0 !important;
	}
</style>
