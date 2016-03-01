//
//  ViewController.m
//  ScrollViewDemo
//
//  Created by Konstantin Snegov on 10/02/16.
//  Copyright © 2016 Konstantin Snegov. All rights reserved.
//

#import "ViewController.h"

@interface ViewController () <UIScrollViewDelegate>
@property (weak, nonatomic) IBOutlet UIImageView *imageView;
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *imageViewHeightConstraint;
@end

@implementation ViewController

- (void)scrollViewDidScroll:(UIScrollView *)scrollView {
    CGFloat offset = scrollView.contentOffset.y;
    if (offset > 0) {
        return;
    }
    
    CGFloat minHeight = self.imageViewHeightConstraint.constant;
    CGFloat height = minHeight + fabs(offset);
    
    self.imageView.frame = CGRectMake(0, offset, CGRectGetWidth(self.imageView.bounds), height);
}

@end
