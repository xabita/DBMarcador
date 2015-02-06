//
//  ScoreViewControler.h
//  DBMarcador
//
//  Created by Elizabeth Martínez Gómez on 04/02/15.
//  Copyright (c) 2015 Elizabeth Martínez Gómez. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ScoreViewControler : UIViewController <UITableViewDelegate, UITableViewDataSource, UIAlertViewDelegate>

@property (strong, nonatomic) IBOutlet UITableView *tblMain;

@property (strong, nonatomic) IBOutlet UIButton *btnBack;


@end
