//
//  webPage.m
//  internetNew
//
//  Created by PointerWare Laptop 3 on 12-03-19.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "webPage.h"

@implementation webPage
@synthesize webView;

-(void)viewDidLoad{
    
[webView loadRequest:[NSURLRequest requestWithURL:[NSURL URLWithString: URL] ]];
}

-(IBAction)addBookmarkButtonTapped {
    UIActionSheet *actionSheet = [[UIActionSheet alloc] initWithTitle:[[[[self webView]request] URL] absoluteString] delegate:self cancelButtonTitle:@"Cancel" destructiveButtonTitle:nil otherButtonTitles:@"Add", nil];
    [actionSheet showInView:self.view];
    //[actionSheet release];
}


-(void)actionSheet:(UIActionSheet *)actionSheet clickedButtonAtIndex:(NSInteger)buttonIndex {
    if (buttonIndex == 0) {
        NSMutableArray *bookmarks = [[[NSUserDefaults standardUserDefaults] arrayForKey:@"Bookmarks"] mutableCopy];
        if (!bookmarks) {
            bookmarks = [[NSMutableArray alloc] init];
        }
        [bookmarks addObject:[[[[self webView]request] URL] absoluteString]];
        [[NSUserDefaults standardUserDefaults] setObject:bookmarks forKey:@"Bookmarks"];
        //    	[bookmarks release];
    }
}




@end
