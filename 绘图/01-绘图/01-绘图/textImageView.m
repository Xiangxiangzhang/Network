//
//  textImageView.m
//  01-绘图
//
//  Created by qingyun on 16/1/7.
//  Copyright © 2016年 qingyun. All rights reserved.
//

#import "textImageView.h"

@implementation textImageView


// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.


-(void)drawText{
   //1.获取上下文
    CGContextRef ctx=UIGraphicsGetCurrentContext();
   
    //绘制个矩形区域
    CGRect rect=CGRectMake(10, 50, 100, 50);
    CGContextAddRect(ctx, rect);
   
    [[UIColor yellowColor] set];
    //
    CGContextDrawPath(ctx, kCGPathFillStroke);
    
    
    NSString *str=@"好好编程,变土豪";
    NSMutableDictionary *attri=[NSMutableDictionary dictionary];
    attri[NSForegroundColorAttributeName]=[UIColor  redColor];
    attri[NSFontAttributeName]=[UIFont systemFontOfSize:20];
    
    [str drawInRect:rect withAttributes:attri];
}

-(void)drawTextAndImage{
  
    
    //获取图片
    UIImage *image=[UIImage imageNamed:@"pengyouquan"];
    
    //2.画图片
    [image drawInRect:CGRectMake(0, 0, 200, 200)];
    
    //3画文字
    NSString *str=@"jack";
    [str drawInRect:CGRectMake(140, 150, 100, 20) withAttributes:nil];
}



- (void)drawRect:(CGRect)rect {
    // Drawing code
   // [self drawText];
    [self drawTextAndImage];
}


@end
