# banTangCopy
高仿半糖APP

##项目组成员

苏俊良
王东银
周博
曾宇
姚春林
张彬
商宏华
孙林春

##项目初始化
###2016年03月28日21:26
#### 架设项目结构
> AppDelegate
AppDelegate.h(.m)文件

> Models
数据类文件 命名规则:BTCm为前缀
结构如下
Models
|- BTCmBaseModel.h
|- BTCmBaseModel.m
|- BTCmCollectionModel.h
|- BTCmCollectionModel.m

> Macro
包含全局宏 全局常量的pch文件和常量声明类 所有宏和常量以BTC为前缀
结构如下
Macro
|- AppMacro.h
|- NotificationMacro.h
|- VendorMacro.h
|- constant.h
|- banTangCopy.pch
AppMacro.h app相关的宏定义
NotificationMacro.h 通知相关的宏定义
constant.h 常量声明类
UtilsMacro.h 方便使用的方法宏定义
banTangCopy.pch pch文件

> General
会被重用的Views/Classes和Categories 包括需要全局使用的父类 所有类以BTCg为前缀 分类的附加名需要以BTC为前缀
结构如下
General
|- Views
 |- BTCgScollView
 |- BTCgPullToRefresh
...
|- Classes
 |- BTCgBaseViewController
 |- BTCgHorizontalView
...
| - Categories
 |- UIViewController+BTCSizzle
 |- UIImageView+BTCDownloader
...

> Helpers
助手类(工具类) 所有类以BTCh为前缀 以Helper为后缀
结构如下
Helpers
|- BTChShareHelper
|- BTChDBHelper
|- BTChEmotionHelper

> Sections
app的具体单元，如导航、瀑布流等等 每个单元内部包括Controller\View两个文件夹
结构如下
Sections
|- Menu
...
|- Setting
...
|- Collection
...

> Resources
一些资源，主要是图片
结构如下
Resources
|-Plist
|-Image
