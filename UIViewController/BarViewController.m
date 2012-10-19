//
//  BarViewController.m
//  MockingCoreData1
//
//  Created by John Gallagher on 18/10/2012.
//  Copyright (c) 2012 Synaptic Mishap. All rights reserved.
//

#import "BarViewController.h"
#import "BarView.h"

@implementation BarViewController

-(id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil {
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

#pragma mark - View lifecycle

// Implement loadView to create a view hierarchy programmatically, without using a nib.
-(void)loadView {
    [super loadView];
}

-(void)addSyncStatusBar {
    CGRect viewFrame = [[[self navigationController] navigationBar] frame];
    CGRect barFrame = CGRectMake(viewFrame.origin.x, 60, viewFrame.size.width, 30.0f);
    BarView *barView = [[BarView alloc] initWithFrame:barFrame];
    [barView setBackgroundColor:[UIColor blackColor]];
    [barView setText:@"Wow"];
    [barView setTextAlignment:UITextAlignmentCenter];
    [barView setTextColor:[UIColor whiteColor]];

    [[[[self navigationController] navigationBar] superview] addSubview:barView];
}

// Implement viewDidLoad to do additional setup after loading the view, typically from a nib.
-(void)viewDidLoad {
    [super viewDidLoad];

    [self addSyncStatusBar];

}

-(void)viewDidUnload {
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

-(BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation {
    // Return YES for supported orientations
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 100;
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"Cell"];
    if (!cell) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"Cell"];
    }
    [[cell textLabel] setText:@"Hey"];
    return cell;
}

@end
