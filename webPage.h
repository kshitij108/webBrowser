//
//  webPage.h
//  internetNew
//
//  Created by PointerWare Laptop 3 on 12-03-19.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "internetNewViewController.h"

@interface webPage : UIViewController < UITableViewDelegate , UIActionSheetDelegate>;


@property (weak, nonatomic) IBOutlet UIWebView *webView;

-(IBAction)addBookmarkButtonTapped;
@end
