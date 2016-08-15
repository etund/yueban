//
//  YBLoginController.m
//  YueBan
//
//  Created by etund on 16/8/15.
//  Copyright © 2016年 etund. All rights reserved.
//

#import "YBLoginController.h"
#import "Masonry.h"

@interface YBLoginController ()

@end

@implementation YBLoginController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self setUp];
    [self setUpView];
}

- (void)setUp{
    self.view.backgroundColor = [UIColor whiteColor];
}

- (void)setUpView{
    UIView *topV = [[UIView alloc] init];
    topV.backgroundColor = [UIColor clearColor];
    [self.view addSubview:topV];
    __weak typeof(self) weakSelf = self;
    [topV mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.right.top.offset(0);
        make.height.equalTo(weakSelf.view.mas_height).multipliedBy(2/5);
    }];
    
    UIImageView *iconImage = [[UIImageView alloc] init];
    iconImage.backgroundColor = [UIColor greenColor];
    [topV addSubview:iconImage];
#pragma mark - TODO 图片
    
    UILabel *label = [[UILabel alloc] init];
    label.textAlignment = NSTextAlignmentCenter;
    label.numberOfLines = 0;
    label.font = [UIFont systemFontOfSize:13];
    [topV addSubview:label];
    
    NSMutableAttributedString *attrStr = [[NSMutableAttributedString alloc] initWithString:@"乐伴\n一路音你相伴"];
    [attrStr addAttributes:@{
                             NSFontAttributeName:[UIFont systemFontOfSize:24 weight:UIFontWeightBold],
                             } range:NSMakeRange(0, 2)];
    [attrStr addAttribute:NSFontAttributeName value:[UIFont systemFontOfSize:24] range:NSMakeRange(0, 2)];
    label.attributedText = attrStr;
    
    
    
    [iconImage mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerX.offset(0);
        make.height.width.equalTo(@100);
        make.top.offset(150);
    }];
    [label mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(iconImage.mas_bottom).multipliedBy(1.08);
        make.centerX.equalTo(iconImage.mas_centerX);
    }];
    
    
    
    UIView *bottomV = [[UIView alloc] init];
    bottomV.backgroundColor = [UIColor clearColor];
    [self.view addSubview:bottomV];
    [bottomV mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.right.bottom.offset(0);
        make.height.equalTo(topV);
    }];
    UIButton *loginBtn = [UIButton buttonWithType:UIButtonTypeCustom];
    
    loginBtn.backgroundColor = [UIColor redColor];
    loginBtn.layer.cornerRadius = 10;
    loginBtn.layer.masksToBounds = YES;
    [loginBtn addTarget:self action:@selector(loginClick) forControlEvents:UIControlEventTouchUpInside];
    [bottomV addSubview:loginBtn];
#pragma  mark - TODO 背景色 图片
 
    UIImageView *bottomImage = [[UIImageView alloc] init];
    bottomImage.backgroundColor = [UIColor yellowColor];
    [bottomV addSubview:bottomImage];
#pragma  mark - TODO 图片
    
    [loginBtn mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerX.offset(0);
        make.top.offset(0);
        make.height.equalTo(@20);
        make.width.equalTo(@80);
#pragma  MARK - TODO 大小
    }];
    
    [bottomImage mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.right.bottom.offset(0);
        make.height.equalTo(@80);
    }];
}

#pragma  mark - Event
- (void)loginClick{
    
}

@end
