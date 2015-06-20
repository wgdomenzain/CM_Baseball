//
//  cellBaseball.h
//  CM-Baseball
//
//  Created by Walter Gonzalez Domenzain on 18/06/15.
//  Copyright (c) 2015 Smartplace. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface cellBaseball : UITableViewCell

//Objects
@property (strong, nonatomic) IBOutlet UIImageView *imgTeam;
@property (strong, nonatomic) IBOutlet UILabel *lblTeam;
@property (strong, nonatomic) IBOutlet UILabel *lblWon;
@property (strong, nonatomic) IBOutlet UILabel *lblLost;

@end
