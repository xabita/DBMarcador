//
//  ScoreViewControler.m
//  DBMarcador
//
//  Created by Elizabeth Martínez Gómez on 04/02/15.
//  Copyright (c) 2015 Elizabeth Martínez Gómez. All rights reserved.
//

#import "ScoreViewControler.h"
#import "MarcadorDatabase.h"
#import "MarcadorInfo.h"
#import "Variables.h"
#import "cellScore.h"

@implementation ScoreViewControler

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/**********************************************************************************************
 Table Functions
 **********************************************************************************************/
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}
//-------------------------------------------------------------------------------
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return MarcadorArray.count;
}
//-------------------------------------------------------------------------------
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 64;
}
//-------------------------------------------------------------------------------
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    NSLog(@"cellScore");
    static NSString *CellIdentifier = @"cellScore";
    
    
    cellScore *cell = (cellScore *)[tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    if (cell == nil)
    {
        cell = [[cellScore alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:CellIdentifier];
    }
    
    cell.lblScore.text       = MarcadorArray[indexPath.row];
  //  cell.lblFechaHora.text   = fechaHoraArray[indexPath.row];
    
    
    return cell;
}


@end
