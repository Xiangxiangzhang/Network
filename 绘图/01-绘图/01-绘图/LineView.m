//
//  LineView.m
//  01-绘图
//
//  Created by qingyun on 16/1/7.
//  Copyright © 2016年 qingyun. All rights reserved.
//

#import "LineView.h"

@implementation LineView


// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
    //1.获取上下文
    CGContextRef ctx=UIGraphicsGetCurrentContext();
    
     //设置线段相关属性 线段宽度 10
     CGContextSetLineWidth(ctx, 10);
    
     //设置拐角样式
    CGContextSetLineJoin(ctx, kCGLineJoinRound);
    
    //线段头的样式
    CGContextSetLineCap(ctx, kCGLineCapRound);
    
    //设置线段颜色
    CGContextSetStrokeColorWithColor(ctx, [UIColor redColor].CGColor);
    
    //移动到一个点(10.10)
    CGContextMoveToPoint(ctx, 10, 10);
    
    //添加一条线段
    CGContextAddLineToPoint(ctx, 80, 180);
    
    //3.渲染
   // CGContextDrawPath(ctx, kCGPathFillStroke);
    CGContextStrokePath(ctx);
   
    

   //画第二条线段
    CGContextSetRGBStrokeColor(ctx, 0, 0, 1, 1);
    
    CGContextMoveToPoint(ctx,100, 20);
    
    CGContextAddLineToPoint(ctx, 100, 100);
    
    CGContextAddLineToPoint(ctx, 150, 80);
    
  //再次进行渲染
    CGContextStrokePath(ctx);
    

}


@end
