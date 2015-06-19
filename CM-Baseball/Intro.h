//
//  Intro.h
//  CM-Baseball
//
//  Created by Walter Gonzalez Domenzain on 18/06/15.
//  Copyright (c) 2015 Smartplace. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface Intro : UIViewController

//Objects
@property NSUInteger                                iPageIndex;
@property (strong, nonatomic) IBOutlet UIImageView  *imgIntro;
@property (strong, nonatomic) IBOutlet UILabel      *lblIntro;

@end
