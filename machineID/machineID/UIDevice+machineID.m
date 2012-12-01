//
//  UIDevice+machineID.m
//  machineID
//
//  Created by Michael MacCallum on 12/1/12.
//  No rights reserved.
//
#import "UIDevice+machineID.h"

@implementation UIDevice (machineID)
- (NSString *)machineID {
    struct utsname sysInfo;
    uname(&sysInfo);
    return [NSString stringWithCString:sysInfo.machine encoding:NSUTF8StringEncoding];
}

- (NSString *)nodeName {
    struct utsname sysInfo;
    uname(&sysInfo);
    return [NSString stringWithCString:sysInfo.nodename encoding:NSUTF8StringEncoding];
}

- (NSString *)systemNameVague {
    struct utsname sysInfo;
    uname(&sysInfo);
    return [NSString stringWithCString:sysInfo.sysname encoding:NSUTF8StringEncoding];
}


- (NSString *)sysInfo:(char *)input {
    struct utsname sysInfo;
    uname(&sysInfo);
    return [NSString stringWithCString:input encoding:NSUTF8StringEncoding];
}

- (BOOL)isRetina {
    return ([UIScreen mainScreen].scale == 2.0f);
}

- (NSString *)codeName {
    return [self getSysInfoByName:"hw.model"];
}

- (NSString *) getSysInfoByName:(char *)typeSpecifier {
    size_t size;
    sysctlbyname(typeSpecifier, NULL, &size, NULL, 0);
    char *answer = malloc(size);
    sysctlbyname(typeSpecifier, answer, &size, NULL, 0);
    NSString *results = [NSString stringWithCString:answer encoding: NSUTF8StringEncoding];
    free(answer);
    return results;
}
@end