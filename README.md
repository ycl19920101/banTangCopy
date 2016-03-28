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

- AppDelegate
AppDelegate.h(.m)文件 

- Models
数据类文件
>Models
|- BTCmBaseModel.h
|- BTCmBaseModel.m
|- BTCmCollectionModel.h
|- BTCmCollectionModel.m

- Macro
包含全局宏 全局常量的pch文件和常量声明类
>Macro
|- constant.h //常量声明类
|- banTangCopy.pch

- General
会被重用的Views/Classes和Categories 包括需要全局使用的父类
>General
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

- Helpers
> Helpers
|- BTChShareHelper
|- BTChDBHelper
|- BTChEmotionHelper

- Sections
app的具体单元，如菜单、大厅、设置等等 每个单元内部包括Controller\View两个文件夹
> Sections
|- Menu
...
|- Setting
...

- Resources
一些资源，主要是图片
> Resources
|-Plist
|-Image


####命名规范
分类方法名以 btc_ 为前缀 
例:btc_arrayWithContentOfJSON:

协议命名 BTCp+类名+delegate/datasorce 
例:BTCpSettingViewControllerDelegate

Block命名 BTCb为前缀 
例:@property (copy, nonatomic) NSString *(^BTCbCellDidClick)();

Controller类以BTCc为前缀 以Controller为后缀
例:BTCcSettingViewController

View类以BTCv为前缀 以对应类型父类标准名为后缀
例:BTCvSettingTableView BTCvSettingTableViewCell BTCvMenuButton

Model类以BTCm为前缀
例:BTCmUserList

助手类(工具类) 类以BTCh为前缀 以Helper为后缀
例:BTChEmotionHelper

全局父类 在以上命名基础上添加Base前缀 
例:BTCcBaseViewController BTCcBasePanelView

所有宏和常量以BTC为前缀 接具体业务类型
例:BTCColorRandom BTCPathUserList BTCIdentifierSettingCell

