//
//  ViewController.m
//  TTImageCroper
//
//  Created by tanson on 2018/6/9.
//  Copyright © 2018年 tanson. All rights reserved.
//

#import "ViewController.h"
#import "TTImageCropViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UIImageView *imageView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)open:(id)sender {
    TTImageCropViewController * c = [TTImageCropViewController new];
    c.image = [UIImage imageNamed:@"IMG_3208"];
    c.cropSize = CGSizeMake(400, 300);
    c.completion = ^(UIImage * img) {
        self.imageView.image = img;
    };
    [self presentViewController:c animated:YES completion:nil];
}

@end
