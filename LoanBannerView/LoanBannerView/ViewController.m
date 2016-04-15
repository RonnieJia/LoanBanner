//
//  ViewController.m
//  LoanBannerView
//
//  Created by jia on 16/4/15.
//  Copyright © 2016年 AS. All rights reserved.
//

#import "ViewController.h"
#import "LoanBannerView.h"

@interface ViewController ()
@property (nonatomic, strong) NSArray *imgs;
@property (nonatomic, strong) NSArray *linkImgs;
@property (nonatomic, weak) LoanBannerView *loanView;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.view.backgroundColor = [UIColor colorWithRed:0.9 green:0.9 blue:0.9 alpha:1];
    
    LoanBannerView *bannerView = [[LoanBannerView alloc] initWithFrame:CGRectMake(0, 20, self.view.frame.size.width, 200) BannerLinksArray:self.linkImgs infoArray:nil];
    [self.view addSubview:bannerView];
    bannerView.block = ^(NSInteger index) {
        NSLog(@"%d",index);
    };
    self.loanView = bannerView;
}

- (IBAction)autoBtnClick:(UIButton *)sender {
    sender.selected = !sender.selected;
    self.loanView.isAutoLoan = !sender.selected;
}

- (NSArray *)imgs {
    if (!_imgs) {
        _imgs = [NSArray arrayWithObjects:@"1", @"2", @"3", @"4", nil];
    }
    return _imgs;
}
- (NSArray *)linkImgs {
    if (!_linkImgs) {
        _linkImgs = [NSArray arrayWithObjects:@"http://cdn.duitang.com/uploads/item/201209/27/20120927174050_HjNYf.thumb.700_0.jpeg",@"http://img5.duitang.com/uploads/item/201508/25/20150825203917_Uc8jY.thumb.700_0.jpeg",@"http://cdn.duitang.com/uploads/blog/201505/18/20150518162302_Y4HVE.thumb.700_0.jpeg",@"http://img4.duitang.com/uploads/item/201506/09/20150609115651_Rci8X.thumb.700_0.jpeg", nil];
    }
    return _linkImgs;
}
@end
