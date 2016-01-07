//
//  QYShapeView.m
//  01-绘图
//
//  Created by qingyun on 16/1/7.
//  Copyright © 2016年 qingyun. All rights reserved.
//

#import "QYShapeView.h"

@implementation QYShapeView


// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
//画一个矩形
-(void)drawRectangle{
   //1.获取上下文
   CGContextRef ctx=UIGraphicsGetCurrentContext();
    
   //添加绘画路径矩形路径
    CGContextAddRect(ctx, CGRectMake(20,100, 150, 50));
    
    //设置描边
    //CGContextSetStrokeColorWithColor(ctx,[UIColor blueColor].CGColor);
    [[UIColor blueColor] setStroke];

    //设置填充色
   // CGContextSetFillColorWithColor(ctx, [UIColor greenColor].CGColor);
    [[UIColor greenColor] setFill];
    
    //渲染
    CGContextDrawPath(ctx, kCGPathFillStroke);
    
}


-(void)drawTriangle{
  //1获取上下文
    CGContextRef ctx=UIGraphicsGetCurrentContext();
  //.2上下文移动到移动一个开始位置
    CGContextMoveToPoint(ctx, 0, 0);
  //2.1添加一条线段
    CGContextAddLineToPoint(ctx, 100, 80);
  //3.3添加一条线段
    CGContextAddLineToPoint(ctx, 20, 80);
    
   //关闭路径 (最后一个点和起始点连接)
    CGContextClosePath(ctx);
    
    //设置填充色
    [[UIColor redColor] setFill];
    //设置描边
//    CGContextSetStrokeColorWithColor(<#CGContextRef  _Nullable c#>, <#CGColorRef  _Nullable color#>)
    [[UIColor blueColor]setStroke];
    
    //渲染
    //CGContextFillPath(ctx);
    CGContextDrawPath(ctx, kCGPathFillStroke);

}



- (void)drawRect:(CGRect)rect {
    // Drawing code
    
    [self drawTriangle];
    
    [self drawRectangle];
    
}


@end
