//
//  ModelViewController.m
//  InterActiveViewController
//
//  Created by Muhammad, Shauket | RASIA on 20/1/20.
//  Copyright © 2020 Muhammad, Shauket | RASIA. All rights reserved.
//

#import "ModelViewController.h"
#import <HWPanModal/HWPanModal.h>
#import "CustomAnimation.h"

@interface ModelViewController ()<UITableViewDataSource,HWPanModalPresentable>
@property (nonatomic, strong) CustomAnimation *customAnimation;
@end

@implementation ModelViewController
@synthesize tableView = _tableView;
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

#pragma mark - UITableViewCell Datasouce

- (nonnull UITableViewCell *)tableView:(nonnull UITableView *)tableView cellForRowAtIndexPath:(nonnull NSIndexPath *)indexPath {
    UITableViewCell *cell =  [tableView dequeueReusableCellWithIdentifier:@"cell"];//tableView.dequeueReusableCell(withIdentifier: "cell")
    cell.textLabel.text = [NSString stringWithFormat:@"Title No %ld",(long)indexPath.row];
    return cell;
}

- (NSInteger)tableView:(nonnull UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 20;
}

#pragma mark - HWPanModalPresentable

- (CGFloat)topOffset {
    return 0;
}

- (NSTimeInterval)transitionDuration {
    return 0.6;
}

- (CGFloat)springDamping {
    return 1;
}

- (BOOL)shouldRoundTopCorners {
    return NO;
}

- (BOOL)showDragIndicator {
    return NO;
}

- (BOOL)allowScreenEdgeInteractive {
    return YES;
}

- (CGFloat)maxAllowedDistanceToLeftScreenEdgeForPanInteraction {
    return 0;
}
- (PresentingViewControllerAnimationStyle)presentingVCAnimationStyle {
    return PresentingViewControllerAnimationStyleCustom;
}
- (id<HWPresentingViewControllerAnimatedTransitioning>)customPresentingVCAnimation {
    return self.customAnimation;
}
- (UIScrollView *)panScrollable {
    return self.tableView;
}

- (CustomAnimation *)customAnimation {
    if (!_customAnimation) {
        _customAnimation = [CustomAnimation new];
    }
    return _customAnimation;
}


@end
