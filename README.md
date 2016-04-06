# banTangCopy
高仿半糖APP 供学习使用

##Change Log

###2016年04月06日
####配置项目
配置PCH文件 
配置部分项目参数 
导入第三方框架:AFNetworking / SDWebImage / TTTAttributedLabel / Masonry

注释规范

//头文件基本信息。这个用在每个源代码文件的头文件的最开头。<br>
/*!  <br>
@header (文件名)<br>
@abstract (文件描述)<br>
@author (作者信息)<br>
@version (版本) (时间) Creation<br>
Copyright © 2016年 (作者名). All rights reserved.<br>
*/<br>

//类 属性 分类 协议的注释方法<br>
/*!<br>
@abstract 类 属性 分类 协议的说明<br>
@discussion 如有需要 则更加具体详细的说明写在这里 (可以无此行<br>
*/<br>

//函数 方法 的注释方法<br>
/*!<br>
@abstract 这里写这个方法的一些简要描述<br>
@discussion 如有必要 可以在这里写方法的更详细说明 可以无此行<br>
@param xxxxxx 参数说明 可多行<br>
@result xxxxxx 返回值说明<br>
*/<br>

//枚举信息<br>
/*!<br>
@abstract 关于这个枚举的一些基本信息<br>
@constant xxxxxx 枚举具体项的描述<br>
*/<br>

###2016年03月28日 
####项目初始化 架设项目结构

- AppDelegate<br> 
AppDelegate.h(.m)文件 

- Models<br> 
数据类文件
>Models<br>
|- BTCmBaseModel.h<br> 
|- BTCmBaseModel.m<br> 
|- BTCmCollectionModel.h<br> 
|- BTCmCollectionModel.m<br> 

- Macro<br>
包含全局宏 全局常量的pch文件和常量声明类
>Macro<br>
|- Constant.h //常量声明类<br>
|- banTangCopy.pch<br>

- General<br>
会被重用的Views/Classes和Categories 包括需要全局使用的父类
>General<br>
|- Views<br>
|- BTCgScollView<br>
|- BTCgPullToRefresh<br>
...<br>
|- Classes<br>
|- BTCgBaseViewController<br>
|- BTCgHorizontalView<br>
...<br>
|- Categories<br>
|- UIViewController+BTCSizzle<br>
|- UIImageView+BTCDownloader<br>
...<br>

- Helpers<br>
助手类(工具类)
> Helpers<br>
|- BTChShareHelper<br>
|- BTChDBHelper<br>
|- BTChEmotionHelper<br>

- Sections<br>
app的具体单元，如菜单、大厅、设置等等 每个单元内部包括Controller\View两个文件夹
> Sections<br>
|- Menu<br>
...<br>
|- Setting<br>
...<br>

- Resources<br>
一些资源，主要是图片
> Resources<br>
|-Plist<br>
|-Image<br>

- Other<br>
其他文件 包括main.m README.md LICENSE等


####命名规范
分类方法名以 btc_ 为前缀 <br>
例:`btc_arrayWithContentOfJSON:`

协议命名 BTCp+类名+delegate/datasorce <br>
例:`BTCpSettingViewControllerDelegate`

Block命名 BTCb为前缀 <br>
例:`@property (copy, nonatomic) NSString *(^BTCbCellDidClick)();`

Controller类以BTCc为前缀 以Controller为后缀<br>
例:`BTCcSettingViewController`

View类以BTCv为前缀 以对应类型父类标准名为后缀<br>
例:`BTCvSettingTableView` `BTCvSettingTableViewCell` `BTCvMenuButton`

Model类以BTCm为前缀<br>
例:`BTCmUserList`

助手类(工具类) 类以BTCh为前缀 以Helper为后缀<br>
例:`BTChEmotionHelper`

全局父类 在以上命名基础上添加Base前缀 <br>
例:`BTCcBaseViewController` `BTCvBasePanelView`

所有宏和常量以BTC为前缀 接具体业务类型<br>
例:`BTCColorRandom` `BTCPathUserList` `BTCIdentifierSettingCell`

所有枚举类型以BTCk为前缀 具体枚举值以相关枚举类型+枚举值说明命名<br>
例: `BTCkWeekday` `BTCkWeekdayMonday`

各模块标识词 
Home (首页)
Square (广场)
Show (秀)
Message (消息)
Personal (个人中心) 
Login (登录)