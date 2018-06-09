//
//  TTImageCropViewController.h
//  CroppingImage
//
//  Created by tanson on 2018/6/4.
//  Copyright © 2018年 刘志雄. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface TTImageCropViewController : UIViewController

@property (nonatomic,assign) CGSize cropSize;
@property (nonatomic,strong) UIImage *image;

@property (nonatomic,copy) void (^completion)(UIImage*);

@end
