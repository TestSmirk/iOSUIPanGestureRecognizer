//
//  ViewController.m
//  Demo2
//
//  Created by TestSmirk on 16/8/3.
//  Copyright © 2016年 TestSmirk. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UIView *view1;
@property (weak, nonatomic) IBOutlet UIView *view2;
@property (weak, nonatomic) IBOutlet UIView *view3;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
 pan = [[UIPanGestureRecognizer alloc]initWithTarget:self action:@selector(panEvent:)];
    self.view3.userInteractionEnabled = true;
    [self.view3 addGestureRecognizer:pan];
}
UIPanGestureRecognizer *pan;
-(void)panEvent:(UIPanGestureRecognizer*)gen{
    CGPoint point=   [gen translationInView:self.view3];
    NSLog(@"123   %f",point.x);
    self.view3.transform = CGAffineTransformTranslate(self.view3.transform, point.x, point.y);
    [pan setTranslation:CGPointZero inView:self.view3];
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
