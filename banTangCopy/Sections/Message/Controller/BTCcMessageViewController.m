//
//  BTCcMessageViewController.m
//  banTangCopy
//
//  Created by yaochunlin on 16/4/13.
//  Copyright © 2016年 LarrySue. All rights reserved.
//

#import "BTCcMessageViewController.h"
#import "BTCvNoMessageView.h"

@interface BTCcMessageViewController ()

@end

@implementation BTCcMessageViewController

-(void)loadView{
    
    //判断是否接收到消息
    BOOL isRecieveMessage = NO;
    
    if (isRecieveMessage) {
        [super loadView];
    }else{
        self.view = [[BTCvNoMessageView alloc]init];
    }
}

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = @"消息";

}

@end
