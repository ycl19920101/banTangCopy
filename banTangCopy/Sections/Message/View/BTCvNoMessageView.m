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

////划分模块的view
//@property (nonatomic,weak) UIView *moduleView;
//
////中间的图片
//@property (nonatomic,weak) UIImageView *iconView;
//
////下方的提示文字
//@property (nonatomic,weak) UILabel * promptLabel;

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

    /*!
     添加子控件
     */
    
    /*!
     划分模块的view
     */
    UIView *moduleView = [[UIView alloc]init];
//    moduleView.backgroundColor = [UIColor redColor];
    
    UIButton *likeBtn = [UIButton buttonWithType:UIButtonTypeCustom];
    [likeBtn setTitle:@"喜欢" forState:UIControlStateNormal];
    [likeBtn setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    
    UIButton *commentBtn = [UIButton buttonWithType:UIButtonTypeCustom];
    [commentBtn setTitle:@"评论" forState:UIControlStateNormal];
    [commentBtn setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    
    UIButton *noticeBtn = [UIButton buttonWithType:UIButtonTypeCustom];
    [noticeBtn setTitle:@"通知" forState:UIControlStateNormal];
    [noticeBtn setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    
    UIView *redView = [[UIView alloc] init];
    redView.backgroundColor = [UIColor redColor];
    
    [moduleView addSubview:likeBtn];
    [moduleView addSubview:commentBtn];
    [moduleView addSubview:noticeBtn];
    [moduleView addSubview:redView];
    [self addSubview:moduleView];
    
    /*!
     *  @brief 中间的图片控件
     */
    UIImageView *iconView = [[UIImageView alloc]initWithImage:[UIImage imageNamed:@"chat_bottom_smile_press"]];
    [self addSubview:iconView];
    
    /*!
     *  @brief 底部的描述文字
     */
    UILabel *promptLabel = [[UILabel alloc]init];
    [self addSubview:promptLabel];
    
    moduleView.translatesAutoresizingMaskIntoConstraints = NO;
    
    //设置模块的view约束
    [moduleView mas_makeConstraints:^(MASConstraintMaker *make) {
        
        make.leading.trailing.equalTo(self);
        make.top.equalTo(self).offset(64);
        make.bottom.equalTo(self.mas_top).offset(94);
        
    }];
    [likeBtn mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerY.equalTo(moduleView);
        make.leading.equalTo(moduleView).offset(30);
        
    }];
    [commentBtn mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerY.equalTo(moduleView);
        make.centerX.equalTo(moduleView);
        
    }];
    [noticeBtn mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerY.equalTo(moduleView);
        make.trailing.equalTo(moduleView).offset(-30);
        
    }];
    [redView mas_makeConstraints:^(MASConstraintMaker *make) {
        
        
    }];
    
}


@end
