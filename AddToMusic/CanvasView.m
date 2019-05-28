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
    Test *temp = [[Test alloc]init];
    NSLog(@"%f",temp.PlayerView.frame.size.height);
    [super awakeFromNib];
}

-(instancetype)initWithCoder:(NSCoder *)aDecoder{
    self = [super initWithCoder:aDecoder ];
    return self;
}
- (IBAction)firstRationBtnClicked:(id)sender {

    [self.delegate canvasViewChange];
    
    NSLog(@"HELLO");
    
}
- (IBAction)secondRationBtnClicked:(id)sender {

}
- (IBAction)thirdRatioBtnClicked:(id)sender {
}

@end
