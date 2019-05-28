//
//  CanvasView.h
//  AddToMusic
//
//  Created by leo on 27/5/19.
//  Copyright © 2019 Shafiq Shovo. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@protocol CanvasViewDelegate <NSObject>

-(void) canvasViewChange;

@end




@interface CanvasView : UIView

@property (weak,nonatomic) id < CanvasViewDelegate > delegate;

@end

NS_ASSUME_NONNULL_END
