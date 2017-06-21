//
//  MyTableViewCell1.m
//  AutoLayoutDemo
//
//  Created by GongCF on 2017/6/21.
//  Copyright © 2017年 GongCF. All rights reserved.
//

#import "MyTableViewCell1.h"
@interface MyTableViewCell1()
@property (weak, nonatomic) IBOutlet UILabel *lbl1;
@property (weak, nonatomic) IBOutlet UILabel *lbl2;

@end
@implementation MyTableViewCell1

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}

- (void)showData
{
    self.lbl1.text=self.model.str1;
    self.lbl2.text=self.model.str2;
}

@end
