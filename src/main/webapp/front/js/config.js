
var projectName = '网上球鞋竞拍系统';
/**
 * 轮播图配置
 */
var swiper = {
	// 设定轮播容器宽度，支持像素和百分比
	width: '100%',
	height: '400px',
	// hover（悬停显示）
	// always（始终显示）
	// none（始终不显示）
	arrow: 'none',
	// default（左右切换）
	// updown（上下切换）
	// fade（渐隐渐显切换）
	anim: 'default',
	// 自动切换的时间间隔
	// 默认3000
	interval: 2000,
	// 指示器位置
	// inside（容器内部）
	// outside（容器外部）
	// none（不显示）
	indicator: 'outside'
}

/**
 * 个人中心菜单
 */
var centerMenu = [{
	name: '个人中心',
	url: '../' + localStorage.getItem('userTable') + '/center.html'
}, 
{
	name: '我的发布',
	url: '../forum/list-my.html'
},

{
	name: '我的收藏',
	url: '../storeup/list.html'
}
]


var indexNav = [

{
	name: '热门竞拍',
	url: './pages/remenjingpai/list.html'
}, 
{
	name: '科比展区',
	url: './pages/kebizhanqu/list.html'
}, 

{
	name: '论坛信息',
	url: './pages/forum/list.html'
}, 
{
	name: '球鞋资讯',
	url: './pages/news/list.html'
},
]

var adminurl =  "http://localhost:8080/ssmk8vvq/admin/dist/index.html";

var cartFlag = false

var chatFlag = false


chatFlag = true


var menu = [{"backMenu":[{"child":[{"buttons":["新增","查看","修改","删除"],"menu":"球鞋分类","menuJump":"列表","tableName":"qiuxiefenlei"}],"menu":"球鞋分类管理"},{"child":[{"buttons":["新增","查看","修改","删除","查看评论"],"menu":"热门竞拍","menuJump":"列表","tableName":"remenjingpai"}],"menu":"热门竞拍管理"},{"child":[{"buttons":["新增","查看","修改","删除","查看评论"],"menu":"科比展区","menuJump":"列表","tableName":"kebizhanqu"}],"menu":"科比展区管理"},{"child":[{"buttons":["新增","查看","修改","删除"],"menu":"用户","menuJump":"列表","tableName":"yonghu"}],"menu":"用户管理"},{"child":[{"buttons":["查看","修改","删除","审核","消息通知"],"menu":"竞拍信息","menuJump":"列表","tableName":"jingpaixinxi"}],"menu":"竞拍信息管理"},{"child":[{"buttons":["查看","修改","删除"],"menu":"消息通知","menuJump":"列表","tableName":"xiaoxitongzhi"}],"menu":"消息通知管理"},{"child":[{"buttons":["查看","修改","删除","审核"],"menu":"用户评价","menuJump":"列表","tableName":"yonghupingjia"}],"menu":"用户评价管理"},{"child":[{"buttons":["新增","查看","修改","删除"],"menu":"论坛管理","tableName":"forum"}],"menu":"论坛管理"},{"child":[{"buttons":["新增","查看","修改","删除"],"menu":"管理员","tableName":"users"}],"menu":"管理员管理"},{"child":[{"buttons":["新增","查看","修改","删除"],"menu":"轮播图管理","tableName":"config"},{"buttons":["新增","查看","修改","删除"],"menu":"球鞋资讯","tableName":"news"},{"buttons":["新增","查看","修改","删除"],"menu":"客服管理","tableName":"chat"}],"menu":"系统管理"}],"frontMenu":[{"child":[{"buttons":["查看","竞拍"],"menu":"热门竞拍列表","menuJump":"列表","tableName":"remenjingpai"}],"menu":"热门竞拍模块"},{"child":[{"buttons":["查看"],"menu":"科比展区列表","menuJump":"列表","tableName":"kebizhanqu"}],"menu":"科比展区模块"}],"roleName":"管理员","tableName":"users"},{"backMenu":[{"child":[{"buttons":["查看"],"menu":"竞拍信息","menuJump":"列表","tableName":"jingpaixinxi"}],"menu":"竞拍信息管理"},{"child":[{"buttons":["查看","支付","用户评价"],"menu":"消息通知","menuJump":"列表","tableName":"xiaoxitongzhi"}],"menu":"消息通知管理"},{"child":[{"buttons":["查看"],"menu":"用户评价","menuJump":"列表","tableName":"yonghupingjia"}],"menu":"用户评价管理"},{"child":[{"buttons":["查看","删除"],"menu":"我的收藏管理","tableName":"storeup"}],"menu":"我的收藏管理"}],"frontMenu":[{"child":[{"buttons":["查看","竞拍"],"menu":"热门竞拍列表","menuJump":"列表","tableName":"remenjingpai"}],"menu":"热门竞拍模块"},{"child":[{"buttons":["查看"],"menu":"科比展区列表","menuJump":"列表","tableName":"kebizhanqu"}],"menu":"科比展区模块"}],"roleName":"用户","tableName":"yonghu"}]


var isAuth = function (tableName,key) {
    let role = localStorage.getItem("userTable");
    let menus = menu;
    for(let i=0;i<menus.length;i++){
        if(menus[i].tableName==role){
            for(let j=0;j<menus[i].backMenu.length;j++){
                for(let k=0;k<menus[i].backMenu[j].child.length;k++){
                    if(tableName==menus[i].backMenu[j].child[k].tableName){
                        let buttons = menus[i].backMenu[j].child[k].buttons.join(',');
                        return buttons.indexOf(key) !== -1 || false
                    }
                }
            }
        }
    }
    return false;
}

var isFrontAuth = function (tableName,key) {
    let role = localStorage.getItem("userTable");
    let menus = menu;
    for(let i=0;i<menus.length;i++){
        if(menus[i].tableName==role){
            for(let j=0;j<menus[i].frontMenu.length;j++){
                for(let k=0;k<menus[i].frontMenu[j].child.length;k++){
                    if(tableName==menus[i].frontMenu[j].child[k].tableName){
                        let buttons = menus[i].frontMenu[j].child[k].buttons.join(',');
                        return buttons.indexOf(key) !== -1 || false
                    }
                }
            }
        }
    }
    return false;
}
