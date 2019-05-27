//
//  TrimView.m
//  AddToMusic
//
//  Created by leo on 26/5/19.
//  Copyright © 2019 Shafiq Shovo. All rights reserved.
//

#import "TrimView.h"

@interface TrimView ()
@property (weak, nonatomic) IBOutlet UIButton *trimBtn;
@property (weak, nonatomic) IBOutlet UIButton *cutBtn;
@property (weak, nonatomic) IBOutlet UIButton *splitBtn;
@property (strong, nonatomic) IBOutlet UIView *TrimView;

@end

@implementation TrimView
-(void)awakeFromNib{
    [self designBtn];
    [super awakeFromNib];
}

-(instancetype)initWithCoder:(NSCoder *)aDecoder{
    self = [super initWithCoder:aDecoder ];
    return self;
}

-(void) designBtn
{
    NSLog(@"HELLO0000");
    
    self.TrimView.layer.cornerRadius=1.15;
    self.TrimView.layer.masksToBounds=YES;
 
    
}
- (IBAction)TrimbtnPressed:(id)sender {

    UIButton *btn = (UIButton*)sender;
    [btn setBackgroundColor:[UIColor colorWithRed:77.0 / 255.0 green:77.0 / 255.0 blue:77.0 / 255.0 alpha:1.0]];
    [_cutBtn setBackgroundColor:[UIColor colorWithRed:41.0 / 255.0 green:41.0 / 255.0 blue:41.0 / 255.0 alpha:1.0]];
    [_splitBtn setBackgroundColor:[UIColor colorWithRed:41.0 / 255.0 green:41.0 / 255.0 blue:41.0 / 255.0 alpha:1.0]];
    
    
}
- (IBAction)CutbtnPressed:(id)sender {
    UIButton *btn = (UIButton*)sender;
    [btn setBackgroundColor:[UIColor colorWithRed:77.0 / 255.0 green:77.0 / 255.0 blue:77.0 / 255.0 alpha:1.0]];
    [_trimBtn setBackgroundColor:[UIColor colorWithRed:41.0 / 255.0 green:41.0 / 255.0 blue:41.0 / 255.0 alpha:1.0]];
    [_splitBtn setBackgroundColor:[UIColor colorWithRed:41.0 / 255.0 green:41.0 / 255.0 blue:41.0 / 255.0 alpha:1.0]];
}
- (IBAction)splitbtnPressed:(id)sender {
    UIButton *btn = (UIButton*)sender;
    [btn setBackgroundColor:[UIColor colorWithRed:77.0 / 255.0 green:77.0 / 255.0 blue:77.0 / 255.0 alpha:1.0]];
    [_trimBtn setBackgroundColor:[UIColor colorWithRed:41.0 / 255.0 green:41.0 / 255.0 blue:41.0 / 255.0 alpha:1.0]];
    [_cutBtn setBackgroundColor:[UIColor colorWithRed:41.0 / 255.0 green:41.0 / 255.0 blue:41.0 / 255.0 alpha:1.0]];
}

@end
