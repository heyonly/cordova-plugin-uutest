//
//  TestPlugin.h
//  testCordova
//
//  Created by Administrator on 16/9/20.
//
//

#import <Cordova/CDVPlugin.h>

@interface CocoaPlugin : CDVPlugin

- (void)testWithTitle:(CDVInvokedUrlCommand *)command;
+ (NSString *)systemVersion;
- (void)appVersion:(CDVInvokedUrlCommand*)command;
- (void)downloadfile:(CDVInvokedUrlCommand *)command
@end
