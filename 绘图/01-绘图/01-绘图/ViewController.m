//
//  ViewController.m
//  01-绘图
//
//  Created by qingyun on 16/1/7.
//  Copyright © 2016年 qingyun. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()<UITableViewDelegate,UITableViewDataSource>
@property(nonatomic,strong)NSArray *dataArr;
@property(nonatomic,strong)NSArray *showArr;
@end

@implementation ViewController

- (void)viewDidLoad {
    
  _dataArr=@[@"LineViewController",@"ShapeViewController",@"CircleViewController",@"TextImageViewController"];
    _showArr=@[@"draw  Line",@"draw shape",@"Draw Circle",@"draw TextImage"];
    
    UITableView  *mytable=[[UITableView alloc] initWithFrame:self.view.frame style:UITableViewStylePlain];
    mytable.delegate=self;
    mytable.dataSource=self;
    [self.view addSubview:mytable];
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return _dataArr.count;
}

-(UITableViewCell*)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
   static NSString *identifier=@"cell";
    UITableViewCell *cell=[tableView dequeueReusableCellWithIdentifier:identifier];
    if (cell==nil) {
        cell=[[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:identifier];
    }
    cell.textLabel.text=_showArr[indexPath.row];
    return cell;

}

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    UIViewController *controller=[NSClassFromString(_dataArr[indexPath.row]) new];
    [self.navigationController pushViewController:controller animated:YES];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
