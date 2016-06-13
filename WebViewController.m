//
//  Web.m
//  NerdFeed
//
//  Created by Ernald on 6/1/16.
//  Copyright © 2016 Big Nerd. All rights reserved.
//

#import "WebViewController.h"

@implementation WebViewController

- (void)loadView
{
    UIWebView *webView = [UIWebView new];
    webView.scalesPageToFit = YES;
    self.view = webView;
}

- (void)setURL:(NSURL *)URL
{
    _URL = URL;
    
    if(_URL)
    {
        NSURLRequest *request = [NSURLRequest requestWithURL:_URL];
        [(UIWebView *) self.view loadRequest:request];
    }
}

@end
