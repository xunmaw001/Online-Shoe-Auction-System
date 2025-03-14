import Vue from 'vue';
//配置路由
import VueRouter from 'vue-router'
Vue.use(VueRouter);
//1.创建组件
import Index from '@/views/index'
import Home from '@/views/home'
import Login from '@/views/login'
import NotFound from '@/views/404'
import UpdatePassword from '@/views/update-password'
import pay from '@/views/pay'
import register from '@/views/register'
import center from '@/views/center'
    import news from '@/views/modules/news/list'
    import discussremenjingpai from '@/views/modules/discussremenjingpai/list'
    import remenjingpai from '@/views/modules/remenjingpai/list'
    import jingpaixinxi from '@/views/modules/jingpaixinxi/list'
    import xiaoxitongzhi from '@/views/modules/xiaoxitongzhi/list'
    import qiuxiefenlei from '@/views/modules/qiuxiefenlei/list'
    import kebizhanqu from '@/views/modules/kebizhanqu/list'
    import storeup from '@/views/modules/storeup/list'
    import users from '@/views/modules/users/list'
    import forum from '@/views/modules/forum/list'
    import yonghu from '@/views/modules/yonghu/list'
    import yonghupingjia from '@/views/modules/yonghupingjia/list'
    import chat from '@/views/modules/chat/list'
    import discusskebizhanqu from '@/views/modules/discusskebizhanqu/list'
    import config from '@/views/modules/config/list'


//2.配置路由   注意：名字
const routes = [{
    path: '/index',
    name: '首页',
    component: Index,
    children: [{
      // 这里不设置值，是把main作为默认页面
      path: '/',
      name: '首页',
      component: Home,
      meta: {icon:'', title:'center'}
    }, {
      path: '/updatePassword',
      name: '修改密码',
      component: UpdatePassword,
      meta: {icon:'', title:'updatePassword'}
    }, {
      path: '/pay',
      name: '支付',
      component: pay,
      meta: {icon:'', title:'pay'}
    }, {
      path: '/center',
      name: '个人信息',
      component: center,
      meta: {icon:'', title:'center'}
    }
          ,{
	path: '/news',
        name: '球鞋资讯',
        component: news
      }
          ,{
	path: '/discussremenjingpai',
        name: '热门竞拍评论',
        component: discussremenjingpai
      }
          ,{
	path: '/remenjingpai',
        name: '热门竞拍',
        component: remenjingpai
      }
          ,{
	path: '/jingpaixinxi',
        name: '竞拍信息',
        component: jingpaixinxi
      }
          ,{
	path: '/xiaoxitongzhi',
        name: '消息通知',
        component: xiaoxitongzhi
      }
          ,{
	path: '/qiuxiefenlei',
        name: '球鞋分类',
        component: qiuxiefenlei
      }
          ,{
	path: '/kebizhanqu',
        name: '科比展区',
        component: kebizhanqu
      }
          ,{
	path: '/storeup',
        name: '我的收藏管理',
        component: storeup
      }
          ,{
	path: '/users',
        name: '管理员',
        component: users
      }
          ,{
	path: '/forum',
        name: '论坛管理',
        component: forum
      }
          ,{
	path: '/yonghu',
        name: '用户',
        component: yonghu
      }
          ,{
	path: '/yonghupingjia',
        name: '用户评价',
        component: yonghupingjia
      }
          ,{
	path: '/chat',
        name: '客服管理',
        component: chat
      }
          ,{
	path: '/discusskebizhanqu',
        name: '科比展区评论',
        component: discusskebizhanqu
      }
          ,{
	path: '/config',
        name: '轮播图管理',
        component: config
      }
        ]
  },
  {
    path: '/login',
    name: 'login',
    component: Login,
    meta: {icon:'', title:'login'}
  },
  {
    path: '/register',
    name: 'register',
    component: register,
    meta: {icon:'', title:'register'}
  },
  {
    path: '/',
    name: '首页',
    redirect: '/index'
  }, /*默认跳转路由*/
  {
    path: '*',
    component: NotFound
  }
]
//3.实例化VueRouter  注意：名字
const router = new VueRouter({
  mode: 'hash',
  /*hash模式改为history*/
  routes // （缩写）相当于 routes: routes
})

export default router;
