//
//  UIButton+EdgeInsets.h
//  ButtonEdgeInsets
//
//  Created by lilei on 17/3/2.
//  Copyright © 2017年 lilei. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef NS_ENUM(NSInteger,LLButtonImageDirection){
    LLButtonImageDirectionLeft,//图左字右
    LLButtonImageDirectionRight,//图右字做
    LLButtonImageDirectionCenter,//图文居中
    LLButtonImageDirectionTop,//图上文下
    LLButtonImageDirectionBottom,//图下文上
};

@interface UIButton (EdgeInsets)

- (void)setupEdgeInsetsByDirection:(LLButtonImageDirection)direction;

@end
