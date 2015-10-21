//
//  ViewController.m
//  block
//
//  Created by 栾有数 on 15/10/15.
//  Copyright © 2015年 栾有数. All rights reserved.
//

#import "ViewController.h"
typedef void (^exe)(int a, int b);

@interface ViewController ()
@property(nonatomic, strong)void (^print2)(int,int);
@property(nonatomic, strong)exe tt ;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
//block 1
    int out = 8;
    int (^pring)(int,int)=^(int a,int b){
        return b + a;
    };
    int result = pring(9,10);
    NSLog(@"%d",result);
//block 2
    [self setPrint2:^(int a, int b) {
        NSLog(@"%d",a+b);
    }];
    [self ss];
//block 3
//    self.tt = ^(int a,int b){
//        NSLog(@"%d",a+b);
//    };
    [self bbbb:^(int a, int b) {
        NSLog(@"%d",a+b);

    }];
    

}
-(void)bbbb:(exe)block{
    block(9,9);
}
-(void)ss{
    self.print2(9,10);
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
