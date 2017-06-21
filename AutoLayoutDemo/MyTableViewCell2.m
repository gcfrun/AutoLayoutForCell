

//
//  MyTableViewCell2.m
//  AutoLayoutDemo
//
//  Created by GongCF on 2017/6/21.
//  Copyright © 2017年 GongCF. All rights reserved.
//

#import "MyTableViewCell2.h"
@interface MyTableViewCell2()
@property (weak, nonatomic) IBOutlet UILabel *lbl;
@end
@implementation MyTableViewCell2

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}

- (void)showData
{
    self.lbl.text=self.model.contentStr;
}

@end
