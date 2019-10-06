# 图书在线
> 采用监听器监听容器启动，初始化用户数据和图书数据，让整个应用共享数据；登录时密码采用MD5加密；所有请求的URI统一使用Servlet处理跳转，不做直接链接跳转
>适当复用页面重复部分，采用include指令；根据session状态判定用户登录状态，实现更好的用户体验
## 1.项目启动进入主页，如用户未登录，显示登录链接，若已经登录，显示用户头像和“退出”链接
![Snipaste_2019-09-27_00-15-25.png](http://ww1.sinaimg.cn/large/0067OQVXgy1g7ddp655x2j31h20qras1.jpg)

## 2.登录页面，输入账号密码可以进行登录
![Snipaste_2019-09-27_00-15-55.png](http://ww1.sinaimg.cn/large/0067OQVXgy1g7ddpsm2rlj31gr0qf0we.jpg)

## 3.登录后进入主页，显示用户信息
![Snipaste_2019-09-27_00-16-19.png](http://ww1.sinaimg.cn/large/0067OQVXgy1g7ddqj93xwj31gm0qmh84.jpg)

## 4.点击用户头像进入个人主页
![Snipaste_2019-09-27_00-17-42.png](http://ww1.sinaimg.cn/large/0067OQVXgy1g7ddrjmp79j31gb0qo0zm.jpg)

## 5.首页选择一本图书，点击可以进入书籍详情页面
![Snipaste_2019-09-27_00-19-21.png](http://ww1.sinaimg.cn/large/0067OQVXgy1g7ddrrn1tuj31gd0qk135.jpg)