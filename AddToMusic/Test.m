//
//  Test.m
//  AddToMusic
//
//  Created by leo on 26/5/19.
//  Copyright © 2019 Shafiq Shovo. All rights reserved.
//

#import "Test.h"
#import "TrimView.h"

#define SCREEN_HEIGHT [UIScreen mainScreen].bounds.size.height
#define SCREEN_WIDTH  [UIScreen mainScreen].bounds.size.width





@interface Test ()
{
TrimView *mTrimView;
UIView *presentedView;

    IBOutlet UIView *coverView;
    IBOutlet UIView *temporaryView;
}
@end

@implementation Test

-(BOOL) prefersStatusBarHidden{
    return  YES;
}

- (void)viewDidLoad {
    [super viewDidLoad];
//    TrimView *obj=[[TrimView alloc]init];
//    obj.designBtn;
    
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(0.3 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
        [self LoadView];
    });
}

- (void) LoadView{
    
    mTrimView = [self loadFromNib:@"TrimView" classToLoad:[TrimView class]];
    mTrimView.frame = CGRectMake(0, SCREEN_HEIGHT, _containerView.frame.size.width, _containerView.frame.size.height);
    [coverView addSubview:mTrimView];
    [mTrimView updateConstraintsIfNeeded];

}

- (id)loadFromNib:(NSString *)name classToLoad:(Class)classToLoad {
    NSArray *bundle = [[NSBundle mainBundle] loadNibNamed:name owner:self options:nil];
    for (id object in bundle) {
        if ([object isKindOfClass:classToLoad]) {
            return object;
        }
    }
    return nil;
}

- (IBAction)ButtonClicked:(id)sender {
    [self AnimateView:mTrimView];
}
- (IBAction)ndButtonClicked:(id)sender {
    [self AnimateView:mTrimView];
}

- (void) AnimateView:(UIView*)view{
    [UIView animateWithDuration:UINavigationControllerHideShowBarDuration animations:^{
        [self->presentedView setFrame:CGRectMake(0, SCREEN_HEIGHT-100, self->presentedView.frame.size.width, self->presentedView.frame.size.height)];
        [view setFrame:self->_containerView.frame];
    } completion:^(BOOL finished) {
        if (finished) {
            self->presentedView = view;
        }
    }];
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
