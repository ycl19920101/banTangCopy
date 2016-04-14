//
//  BTCvNoMessageView.m
//  banTangCopy
//
//  Created by yaochunlin on 16/4/13.
//  Copyright © 2016年 LarrySue. All rights reserved.
//

#import "BTCvNoMessageView.h"
#import <Masonry.h>

@interface BTCvNoMessageView ()


//中间的图片
@property (nonatomic,strong) UIImageView *iconView;

//下方的提示文字
@property (nonatomic,strong) UILabel * promptLabel;

@end

@implementation BTCvNoMessageView
-(instancetype)initWithFrame:(CGRect)frame{

    if (self = [super initWithFrame:frame]) {
        
        //添加子控件
        [self setupUI];
        self.backgroundColor = [UIColor whiteColor];
        
    }
    return self;
}

-(void)setupUI{
//    
//    /*!
//     划分模块的view
//     */
//    UIView *moduleView = [[UIView alloc]init];
////    moduleView.backgroundColor = [UIColor redColor];
//    
//    UIButton *likeBtn = [UIButton buttonWithType:UIButtonTypeCustom];
//    [likeBtn setTitle:@"喜欢" forState:UIControlStateNormal];
//    [likeBtn setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
//    
//    UIButton *commentBtn = [UIButton buttonWithType:UIButtonTypeCustom];
//    [commentBtn setTitle:@"评论" forState:UIControlStateNormal];
//    [commentBtn setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
//    
//    UIButton *noticeBtn = [UIButton buttonWithType:UIButtonTypeCustom];
//    [noticeBtn setTitle:@"通知" forState:UIControlStateNormal];
//    [noticeBtn setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
//    
//    UIView *redView = [[UIView alloc] init];
//    redView.backgroundColor = [UIColor redColor];
//    
//    [moduleView addSubview:likeBtn];
//    [moduleView addSubview:commentBtn];
//    [moduleView addSubview:noticeBtn];
//    [moduleView addSubview:redView];
//    [self addSubview:moduleView];
    
    /*!
     添加子控件
     */
    [self addSubview:self.iconView];
    [self addSubview:self.promptLabel];
    
    
    //设置中间图片控件的约束
    [self.iconView mas_makeConstraints:^(MASConstraintMaker *make) {
        
        make.centerX.equalTo(self);
        make.centerY.equalTo(self).offset(44);
    }];
    
    //设置底部描述文字约束
    [self.promptLabel mas_makeConstraints:^(MASConstraintMaker *make) {
    
        make.centerX.equalTo(self.iconView);
        make.top.equalTo(self.iconView.mas_bottom).offset(8);
        make.width.mas_equalTo(200);
    }];
    
    
//    //设置模块的view约束
//    [moduleView mas_makeConstraints:^(MASConstraintMaker *make) {
//        
//        make.leading.trailing.equalTo(self);
//        make.top.equalTo(self).offset(64);
//        make.bottom.equalTo(self.mas_top).offset(94);
//        
//    }];
//    [likeBtn mas_makeConstraints:^(MASConstraintMaker *make) {
//        make.centerY.equalTo(moduleView);
//        make.leading.equalTo(moduleView).offset(30);
//        
//    }];
//    [commentBtn mas_makeConstraints:^(MASConstraintMaker *make) {
//        make.centerY.equalTo(moduleView);
//        make.centerX.equalTo(moduleView);
//        
//    }];
//    [noticeBtn mas_makeConstraints:^(MASConstraintMaker *make) {
//        make.centerY.equalTo(moduleView);
//        make.trailing.equalTo(moduleView).offset(-30);
//        
//    }];
//    [redView mas_makeConstraints:^(MASConstraintMaker *make) {
//        
//        
//    }];
    
}

#pragma mark 懒加载控件

/*!
 *  @brief 中间的图片控件
 */
-(UIImageView *)iconView{

    if (_iconView == nil) {

        _iconView = [[UIImageView alloc]initWithImage:[UIImage imageNamed:@"avatar_default_big"]];
//        //裁剪图片
        self.iconView.layer.cornerRadius = 42.5;
        self.iconView.layer.masksToBounds = YES;
    }
    
    return _iconView;
}


/*!
 *  @brief 底部的描述文字
 */

-(UILabel *)promptLabel{
    
    if (_promptLabel == nil) {
        
        _promptLabel = [[UILabel alloc]init];
        _promptLabel.text = @"没有收到任何消息";
        _promptLabel.textColor = [UIColor grayColor];
        _promptLabel.textAlignment = NSTextAlignmentCenter;
    }
    return _promptLabel;
}

@end
