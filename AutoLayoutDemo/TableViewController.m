//
//  TableViewController.m
//  AutoLayoutDemo
//
//  Created by GongCF on 2017/6/20.
//  Copyright © 2017年 GongCF. All rights reserved.
//

#import "TableViewController.h"
#import "MyTableViewCell1.h"
#import "MyTableViewCell2.h"
#import "MyModel1.h"
#import "MyModel2.h"
static NSString *cellId1=@"cellId1";
static NSString *cellId2=@"cellId2";
@interface TableViewController ()
@property(nonatomic,strong)NSMutableArray *data1;
@property(nonatomic,strong)NSMutableArray *data2;
@end

@implementation TableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    //给tableview设置一个默认高度
    self.tableView.estimatedRowHeight = 80;
    //告诉tableview，cell是自适应的
    self.tableView.rowHeight = UITableViewAutomaticDimension;
//    [self.tableView registerClass:NSClassFromString(@"MyTableViewCell1") forCellReuseIdentifier:cellId1];
//    [self.tableView registerClass:NSClassFromString(@"MyTableViewCell2") forCellReuseIdentifier:cellId2];
    [self loadData];
    [self.tableView reloadData];
}

-(void)loadData
{
    NSArray *arr11=@[@"老人徒手挖出60平地下室，持续挖3个月终被城管部门填平。2017年6月19日报道，江苏常州一名六旬老人范某为了增加自己的住房面积，私自在家中开挖地下室，仅凭手挖肩挑，硬是在自己房子里挖出一个面积约60平方米，最深处达2米的地下室",@"MWeb has two Mode, External Mode and Library Mode.\nIn External Mode, you can edit classic text and markdown files from anywhere on your Mac. As an example, you can point MWeb to a folder on Dropbox. Library Mode design for note taking and static blog/website generator. For more info",@"Tell your friends about MWeb."];
    NSArray *arr12=@[@"MWeb has two Mode, External Mode and Library Mode.",@"What is MWeb? MWeb is a Pro Markdown writing, note taking and static blog generator App",@"说起国内的综艺节目，可以说是各式各样层出不穷，有钱的就请一些人气火爆的明星来捧场，没钱的就只能找些事来炒作一下，吸引眼球增添收视率"];
    NSArray *arr22=@[@"胜平负：主胜(2.25),平(3.35)\n比分：4:1(21.00),4:2(50.00),5:2(100.0),1:2(14.00),0:4(300.0),2:4(200.0),2:5(600.0),负其它(250.0)",@"胜平负：平(3.40)\n让球(+1)：主胜(4.02),平(3.30)",@"胜平负：平(3.40),客胜(1.82)\n比分：1:2(10.00)\n总进球：5(12.00)\n半全场：胜胜(2.80),胜平(13.00),胜负(32.00),平胜(4.50),平平(4.60),平负(8.00),负胜(25.00)"];
    self.data1=[[NSMutableArray alloc]initWithCapacity:3];
    for (int i=0; i<arr11.count; i++) {
        MyModel1 *model=[[MyModel1 alloc]init];
        model.str1=arr11[i];
        model.str2=arr12[i];
        [self.data1 addObject:model];
    }
    
    self.data2=[[NSMutableArray alloc]initWithCapacity:3];
    for (int i=0; i<arr11.count; i++) {
        MyModel2 *model=[[MyModel2 alloc]init];
        model.contentStr=arr22[i];
        [self.data2 addObject:model];
    }
    
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.data1.count+self.data2.count;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    if (indexPath.row<self.data1.count) {
        MyTableViewCell1 *cell = [tableView dequeueReusableCellWithIdentifier:cellId1 forIndexPath:indexPath];
        cell.model=self.data1[indexPath.row];
        [cell showData];
        return cell;
    }else
    {
        MyTableViewCell2 *cell = [tableView dequeueReusableCellWithIdentifier:cellId2 forIndexPath:indexPath];
        cell.model=self.data2[indexPath.row-self.data1.count];
        [cell showData];
        return cell;
    }
}



@end
