//
//  Home.m
//  CM-Baseball
//
//  Created by Walter Gonzalez Domenzain on 18/06/15.
//  Copyright (c) 2015 Smartplace. All rights reserved.
//

#import "Home.h"
#import "Declarations.h"
#import "cellBaseball.h"

@interface Home ()

@end

@implementation Home

/**********************************************************************************************/
#pragma mark - Initialization methods
/**********************************************************************************************/
- (void)viewDidLoad {
    [super viewDidLoad];
    [self initController];
}
//-------------------------------------------------------------------------------
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
//-------------------------------------------------------------------------------
- (void)initController {
    maTeams             = [[NSMutableArray alloc] initWithObjects: @"Charros de Jalisco", @"Tomateros de Culiacán", @"Naranjeros de Hermosillo", @"Venados de Mazatlán", @"Cañeros de Los Mochis", @"Aguilas de Mexicali", @"Yaquis de Obregón", @"Mayos de Navojoa",nil];
    maImgsTeams         = [[NSMutableArray alloc] initWithObjects: @"charros.png", @"tomateros.png", @"naranjeros.png", @"venados.png", @"mochis.png", @"aguilas.png", @"yaquis.png", @"mayos.png",nil];
}
/**********************************************************************************************/
#pragma mark - Table source and delegate methods
/**********************************************************************************************/
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}
//-------------------------------------------------------------------------------
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return maTeams.count;
}
//-------------------------------------------------------------------------------
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 64;
}
//-------------------------------------------------------------------------------
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    //Initialize cells
    cellBaseball *cell = (cellBaseball *)[tableView dequeueReusableCellWithIdentifier:@"cellBaseball"];
    
    if (cell == nil) {
        [tableView registerNib:[UINib nibWithNibName:@"cellBaseball" bundle:nil] forCellReuseIdentifier:@"cellBaseball"];
        cell = [tableView dequeueReusableCellWithIdentifier:@"cellBaseball"];
    }
    //Fill cell with info from arrays
    cell.lblTeam.text   = maTeams[indexPath.row];
    cell.imgTeam.image  = [UIImage imageNamed:maImgsTeams[indexPath.row]];
    
    return cell;
}
//-------------------------------------------------------------------------------
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    
}
@end
