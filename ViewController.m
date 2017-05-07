//
//  ViewController.m
//  折叠
//
//  Created by 李源 on 2017/3/10.
//  Copyright © 2017年 huiian. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property (nonatomic,assign)BOOL isOpen;

@end

@implementation ViewController
- (CATransform3D)transform1{
    CATransform3D transform = CATransform3DIdentity;
    transform.m34 = 1.0 / -900;
    transform = CATransform3DScale(transform, 0.85, 0.85, 1);
    transform = CATransform3DRotate(transform, 15.0 * M_PI/180.0, 1, 0, 0);
    return transform;
}

- (CATransform3D)transform2{
    CATransform3D transform = CATransform3DIdentity;
    transform.m34 = 1.0 / -900;
    transform = CATransform3DScale(transform, 0.80, 0.80, 1);
    transform = CATransform3DTranslate(transform, 0, - 50, 0);
//    transform = CATransform3DRotate(transform, 15.0 * M_PI/180.0, 1, 0, 0);
    return transform;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
}


- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    if (self.isOpen) {
        [UIView animateWithDuration:0.5 animations:^{
            self.view.layer.transform =[self transform1];
        } completion:^(BOOL finished) {
            [UIView animateWithDuration:0.5 animations:^{
                self.view.layer.transform =CATransform3DIdentity;
            }];
            self.isOpen =! self.isOpen;
        }];
    }else{
        [UIView animateWithDuration:0.5 animations:^{
            self.view.layer.transform = [self transform1];
        } completion:^(BOOL finished) {
            [UIView animateWithDuration:0.5 animations:^{
                self.view.layer.transform = [self transform2];
            }];
             self.isOpen =! self.isOpen;
        }];

    }
   }

@end
