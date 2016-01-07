//
//  QYCircleView.m
//  01-绘图
//
//  Created by qingyun on 16/1/7.
//  Copyright © 2016年 qingyun. All rights reserved.
//

#import "QYCircleView.h"

@implementation QYCircleView


-(void)drawArc{
  //1获取上下文
  CGContextRef ctx=UIGraphicsGetCurrentContext();
  //2.添加圆弧路径
    /*
     * ctx 图形上下文
     * CGFloat x, 中心坐标x轴
     * CGFloat y  中心坐标Y轴
     * radius   半径
     * CGFloat startAngle, 开始角度
     * CGFloat endAngle,   结束的角度
     * int clockwise     0：顺时针，1，逆时针
     */
    CGContextAddArc(ctx, 100, 100, 50, 0,M_PI_2+M_PI, 0);

  //.绘制
    CGContextStrokePath(ctx);
}
//1/4的弧度
-(void)drawCicle{
  //1.获取上下文
    CGContextRef ctx=UIGraphicsGetCurrentContext();
  //2.绘制圆弧
    CGContextAddArc(ctx, 100, 100, 50, 0, M_PI_4, 0);
  //3.绘制
    CGContextStrokePath(ctx);
    
}
//绘制一个圆形
-(void)drawS{
  //1。获取上下文
    CGContextRef ctx=UIGraphicsGetCurrentContext();
  //2>设置圆路径
    CGContextAddArc(ctx, 100, 100, 50, 0,2*M_PI, 0);
   //3绘制
    CGContextStrokePath(ctx);
    //画椭圆的方法
    CGContextAddEllipseInRect(ctx, CGRectMake(50, 50, 50, 50));
    CGContextSetFillColorWithColor(ctx, [UIColor purpleColor].CGColor);
    //填充
    CGContextFillPath(ctx);
}

// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
  //1.绘制圆弧
    //[self drawArc];
   //2.绘制1/4圆弧
    [self drawCicle];
   //3绘制一个圆形
    [self drawS];
}


@end
