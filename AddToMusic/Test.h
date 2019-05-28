//
//  Test.h
//  AddToMusic
//
//  Created by leo on 26/5/19.
//  Copyright © 2019 Shafiq Shovo. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "CanvasView.h"

NS_ASSUME_NONNULL_BEGIN

@interface Test : UIViewController <CanvasViewDelegate>
@property (strong, nonatomic) IBOutlet UIView *containerView;
@property (strong, nonatomic) IBOutlet UIView *PlayerView;

@end

NS_ASSUME_NONNULL_END
