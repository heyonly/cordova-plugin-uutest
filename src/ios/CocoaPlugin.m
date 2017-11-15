//
//  TestPlugin.m
//  testCordova
//
//  Created by Administrator on 16/9/20.
//
//

#import "CocoaPlugin.h"

@implementation CocoaPlugin

-(void)testWithTitle:(CDVInvokedUrlCommand *)command{
    if (command.arguments.count>0) {
        //customize argument
        NSString* title = command.arguments[0];
        NSLog(@"title:%@",title);
        CDVPluginResult* pluginResult = [CDVPluginResult resultWithStatus:CDVCommandStatus_OK messageAsString:@"我是OC回传的参数!"];
        [self.commandDelegate sendPluginResult:pluginResult callbackId:command.callbackId];
    }else{
        //callback
        CDVPluginResult* pluginResult = [CDVPluginResult resultWithStatus:CDVCommandStatus_ERROR messageAsString:@"没有参数"];
        [self.commandDelegate sendPluginResult:pluginResult callbackId:command.callbackId];
    }
}

+ (NSString *)systemVersion {
    return [[UIDevice currentDevice] systemVersion];
}
- (void)appVersion:(CDVInvokedUrlCommand*)command {
    NSString* title = command.arguments[0];
    NSLog(@"title:%@",title);
    NSString* value0 = [NSString stringWithFormat:@"%@(%@)", [[[NSBundle mainBundle] infoDictionary] valueForKey:@"CFBundleShortVersionString"] ,[[NSBundle mainBundle] objectForInfoDictionaryKey:(NSString*)kCFBundleVersionKey]];
    NSLog(@"App 版本号： %@",value0);
    CDVPluginResult* result = [CDVPluginResult resultWithStatus:CDVCommandStatus_OK messageAsString:value0];
    [self.commandDelegate sendPluginResult:result callbackId:command.callbackId];
}
- (void)downloadfile:(CDVInvokedUrlCommand *)command {
    [self testWithTitle:command];
}
@end
