//
//  internetNewViewController.m
//  internetNew
//
//  Created by PointerWare Laptop 3 on 12-03-19.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "internetNewViewController.h"



@implementation internetNewViewController
@synthesize searchButton;
@synthesize searchBox;

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Release any cached data, images, etc that aren't in use.
}

#pragma mark - View lifecycle

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
}

- (void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
}

- (void)viewWillDisappear:(BOOL)animated
{
	[super viewWillDisappear:animated];
}

- (void)viewDidDisappear:(BOOL)animated
{
	[super viewDidDisappear:animated];
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
}
- (IBAction)searchBoutton:(id)sender {
    // NSLog(@"whats in text box %@",searchBox.text);
    //Getting input from the user and converting it to string.
    
    
    URL = [NSString stringWithFormat:@"http://www.google.ca/search?q=%@", searchBox.text];
    //putting that string in to url and opening that web page. 
    
    [self performSegueWithIdentifier:@"homeTowebPage" sender:self];
    
    //[webView loadRequest:[NSURLRequest requestWithURL:[NSURL URLWithString: myURLString] ]];
    
    //[searchButton resignFirstResponder];    
    [self.searchBox resignFirstResponder];
}

@end
