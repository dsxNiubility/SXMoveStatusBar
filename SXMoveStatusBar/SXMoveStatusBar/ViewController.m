//
//  ViewController.m
//  SXMoveStatusBar
//
//  Created by dsx on 15/4/26.
//  Copyright (c) 2015年 dsx. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property (weak, nonatomic) IBOutlet UIView *moveView;
@property (weak, nonatomic) IBOutlet UIImageView *img;

@property(nonatomic,strong)UIApplication *app;
@property (nonatomic,assign)BOOL open;

@end

@implementation ViewController


- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    UIApplication *app = [UIApplication sharedApplication];
    app.statusBarHidden = YES;
    self.app = app;
//    self.open = YES;
    [self prefersStatusBarHidden];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

//- (BOOL)prefersStatusBarHidden{
//    return self.open;
//}

- (IBAction)btnClick:(id)sender {
    self.img.image = [self createScreenShot];
//    self.app.statusBarHidden = YES;
    [UIView animateWithDuration:0.5 animations:^{
//        self.moveView.center = CGPointMake(500, self.view.bounds.size.height/2.0);
    }];
    
}

- (UIImage *)createScreenShot
{
    UIGraphicsBeginImageContextWithOptions(self.view.frame.size, YES, 0.0);
    [self.view.layer renderInContext:UIGraphicsGetCurrentContext()];
    UIImage *image = UIGraphicsGetImageFromCurrentImageContext();
    return image;
}


@end
