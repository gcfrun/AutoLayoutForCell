//
//  MyTableViewCell1.h
//  AutoLayoutDemo
//
//  Created by GongCF on 2017/6/21.
//  Copyright © 2017年 GongCF. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "MyModel1.h"
@interface MyTableViewCell1 : UITableViewCell
@property(nonatomic,strong)MyModel1 *model;
- (void)showData;
@end
