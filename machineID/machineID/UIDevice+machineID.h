//
//  UIDevice+machineID.h
//  machineID
//
//  Created by Michael MacCallum on 12/1/12.
//  No rights reserved.
//
#import <UIKit/UIKit.h>
#import <sys/utsname.h>
#import <sys/types.h>
#import <sys/sysctl.h>

@interface UIDevice (machineID)
- (NSString *)machineID;
- (NSString *)nodeName;
- (NSString *)systemNameVague;
- (NSString *)codeName;
- (BOOL)isRetina;
@end