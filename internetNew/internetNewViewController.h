//
//  internetNewViewController.h
//  internetNew
//
//  Created by PointerWare Laptop 3 on 12-03-19.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "internetNewAppDelegate.h"

@interface internetNewViewController : UIViewController < UITableViewDelegate , UIActionSheetDelegate>;

@property (weak, nonatomic) IBOutlet UIButton *searchButton;


@property (weak, nonatomic) IBOutlet UITextField *searchBox;




- (IBAction)searchBoutton:(id)sender;




@end