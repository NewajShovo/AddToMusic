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
    if (self) {
        [self designBtn];
    }
    return self;
}

-(void) designBtn
{
    NSLog(@"HELLO0000");
    
    [_splitBtn.layer setBorderWidth:1.0];
    [_cutBtn.layer setBorderWidth:1.0];
    [_trimBtn.layer setBorderWidth:1.0];
    _splitBtn.layer.borderColor = [UIColor colorWithRed:77.0 / 255.0 green:77.0 / 255.0 blue:77.0 / 255.0 alpha:1.0].CGColor;
    _cutBtn.layer.borderColor = [UIColor colorWithRed:77.0 / 255.0 green:77.0 / 255.0 blue:77.0 / 255.0 alpha:1.0].CGColor;
    _trimBtn.layer.borderColor = [UIColor colorWithRed:77.0 / 255.0 green:77.0 / 255.0 blue:77.0 / 255.0 alpha:1.0].CGColor;
     TrimView.layerClass
    _splitBtn.clipsToBounds=YES;
    
    
    
    
}

@end
