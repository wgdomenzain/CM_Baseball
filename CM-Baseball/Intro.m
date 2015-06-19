//
//  Intro.m
//  CM-Baseball
//
//  Created by Walter Gonzalez Domenzain on 18/06/15.
//  Copyright (c) 2015 Smartplace. All rights reserved.
//

#import "Intro.h"
#import "Declarations.h"

@interface Intro ()

@end

@implementation Intro

- (void)viewDidLoad {
    [super viewDidLoad];
    
    //Round user image and add a white border
    self.btnIntro.layer.borderColor    = [UIColor clearColor].CGColor;
    self.btnIntro.layer.borderWidth    = 2.0;
    self.btnIntro.clipsToBounds        = YES;
    self.btnIntro.layer.cornerRadius   = 4;
}
//-------------------------------------------------------------------------------
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
//-------------------------------------------------------------------------------
-(void)viewWillAppear:(BOOL)animated {
    self.lblIntro.text  = maIntroTitles[self.iPageIndex];
    self.imgIntro.image = [UIImage imageNamed:maIntroImgs[self.iPageIndex]];
    if (self.iPageIndex == 2)
    {
        self.btnIntro.hidden = NO;
    }
}

- (IBAction)btnIntroPressed:(id)sender {
}
@end
