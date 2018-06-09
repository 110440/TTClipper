//
//  ViewController.m
//  TTImageClipper
//
//  Created by tanson on 2018/6/9.
//  Copyright © 2018年 tanson. All rights reserved.
//

#import "ViewController.h"
#import "TTImageClipperViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UIImageView *imageView;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (IBAction)open:(id)sender {
    TTImageClipperViewController * c = [TTImageClipperViewController new];
    c.image = [UIImage imageNamed:@"IMG_3208"];
    c.cropSize = CGSizeMake(400, 300);
    c.completion = ^(UIImage * img) {
        self.imageView.image = img;
    };
    [self presentViewController:c animated:YES completion:nil];
}


@end
