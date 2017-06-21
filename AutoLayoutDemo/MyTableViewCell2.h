//
//  MyTableViewCell2.h
//  AutoLayoutDemo
//
//  Created by GongCF on 2017/6/21.
//  Copyright © 2017年 GongCF. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "MyModel2.h"
@interface MyTableViewCell2 : UITableViewCell
@property(nonatomic,strong)MyModel2 *model;
- (void)showData;
@end
