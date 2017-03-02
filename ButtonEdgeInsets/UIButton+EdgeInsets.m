//
//  UIButton+EdgeInsets.m
//  ButtonEdgeInsets
//
//  Created by lilei on 17/3/2.
//  Copyright © 2017年 lilei. All rights reserved.
//

#import "UIButton+EdgeInsets.h"


@implementation UIButton (EdgeInsets)

- (void)setupEdgeInsetsByDirection:(LLButtonImageDirection)direction{
    
    switch (direction) {
        case LLButtonImageDirectionLeft:
            return;
            break;
        case LLButtonImageDirectionRight:
        {
            self.imageEdgeInsets = UIEdgeInsetsMake(0, self.titleLabel.intrinsicContentSize.width, 0, -self.titleLabel.intrinsicContentSize.width);
            self.titleEdgeInsets = UIEdgeInsetsMake(0, -self.imageView.frame.size.width, 0, self.imageView.intrinsicContentSize.width);
        }
            break;
        case LLButtonImageDirectionCenter:
        {
            self.imageEdgeInsets = UIEdgeInsetsMake(0, self.titleLabel.intrinsicContentSize.width, 0, 0);
            self.titleEdgeInsets = UIEdgeInsetsMake(0, -self.imageView.frame.size.width, 0,0);

        }
            break;
        case LLButtonImageDirectionBottom:
        {
            self.imageEdgeInsets = UIEdgeInsetsMake(-self.titleLabel.intrinsicContentSize.height, self.titleLabel.intrinsicContentSize.width, 0, 0);
            self.titleEdgeInsets = UIEdgeInsetsMake(self.imageView.frame.size.height, -self.imageView.frame.size.width, 0,0);
        }
            break;
        case LLButtonImageDirectionTop:
        {
            self.imageEdgeInsets = UIEdgeInsetsMake(self.titleLabel.intrinsicContentSize.height, self.titleLabel.intrinsicContentSize.width, 0, 0);
            self.titleEdgeInsets = UIEdgeInsetsMake(-self.imageView.frame.size.height, -self.imageView.frame.size.width, 0,0);
        }
            break;
            
        default:
            break;
    }

}

@end
