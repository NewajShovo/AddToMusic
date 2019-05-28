//
//  CanvasView.m
//  AddToMusic
//
//  Created by leo on 27/5/19.
//  Copyright © 2019 Shafiq Shovo. All rights reserved.
//

#import "CanvasView.h"
#import "Test.h"

@interface CanvasView ()

@end

@implementation CanvasView


-(void)awakeFromNib{
    
    [super awakeFromNib];
}

-(instancetype)initWithCoder:(NSCoder *)aDecoder{
    self = [super initWithCoder:aDecoder ];
    return self;
}
- (IBAction)firstRationBtnClicked:(id)sender {

    NSLog(@"Hello");
    if(self.delegate!=nil){
        NSLog(@"I am in");
        if ([self.delegate respondsToSelector:@selector(canvasViewChange)]) {
            [self.delegate canvasViewChange];
        }
    }
}
- (IBAction)secondRationBtnClicked:(id)sender {

}
- (IBAction)thirdRatioBtnClicked:(id)sender {
}

@end
