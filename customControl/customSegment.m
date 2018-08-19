//
//  customSegment.m
//  customControl
//
//  Created by Gaurav Amrutiya on 19/08/18.
//  Copyright © 2018 Gaurav Amrutiya. All rights reserved.
//

#import "customSegment.h"

@implementation customSegment

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        
        // 1. Load the .xib file .xib file must match classname
        NSString *className = NSStringFromClass([self class]);
        _customSegmentFromXib = [[[NSBundle mainBundle] loadNibNamed:className owner:self options:nil] firstObject];
        _customSegmentFromXib.frame = self.bounds;
        
        // 2. Set the bounds if not set by programmer (i.e. init called)
        if(CGRectIsEmpty(frame)) {
            self.bounds = _customSegmentFromXib.bounds;
        }

        // 3. Add as a subview
        [self addSubview:_customSegmentFromXib];
        
    }
    return self;
}

- (id)initWithCoder:(NSCoder *)aDecoder {
    self = [super initWithCoder:aDecoder];
    if(self) {
        
        // 1. Load .xib file
        NSString *className = NSStringFromClass([self class]);
        _customSegmentFromXib = [[[NSBundle mainBundle] loadNibNamed:className owner:self options:nil] firstObject];
        _customSegmentFromXib.frame = self.bounds;
        
        // 2. Add as a subview
        [self addSubview:_customSegmentFromXib];
    }
    return self;
}


- (IBAction)chanfedSegment:(UIButton *)sender {
    
    [[NSNotificationCenter defaultCenter] postNotificationName:@"segmentChanged" object:sender];
    
}


@end
