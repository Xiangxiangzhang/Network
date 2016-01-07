//
//  QYview.m
//  02-绘制基本图形
//
//  Created by qingyun on 16/1/7.
//  Copyright © 2016年 qingyun. All rights reserved.
//

#import "QYview.h"

@implementation QYview


// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
    //1画个圆角矩形
    UIBezierPath *path=[UIBezierPath bezierPathWithRoundedRect:rect cornerRadius:50];
    //2设置填充色
    [[UIColor greenColor] setFill];
    
    //3绘制 即描边又填充 stroke,fill;
    [path fill];
    
    
    //绘制三次贝塞尔曲线
    
    UIBezierPath *bPath=[UIBezierPath bezierPath];
    
    //移动到一个点开始点
    [bPath moveToPoint:CGPointMake(20, 20)];
     //添加贝塞尔曲线
    [bPath addCurveToPoint:CGPointMake(180, 180) controlPoint1:CGPointMake(20, 180) controlPoint2:CGPointMake(180, 40)];
    //设置描边
    [[UIColor purpleColor]setStroke];
    
    //绘制出来
    [bPath stroke];
}


@end
