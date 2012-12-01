











#import "UIDevice+machineID.h"
//  This application will exit after launch. There is no need to support a UI considering the
//  logs below demonstrate how to get the system information we're looking for in this category.
void customCategoryFunctions ()
{
    NSLog(@"%@",[[UIDevice currentDevice] machineID]);              //Hardware identifier of current device e.g. "iPhone5,1"
    NSLog(@"%@",[[UIDevice currentDevice] nodeName]);               //Name of node within network
    NSLog(@"%@",[[UIDevice currentDevice] systemNameVague]);        //Vague system name. Will probably only ever get to output "Darwin"
    NSLog(@"%@",[[UIDevice currentDevice] codeName]);               //Code name of device e.g. "N41AP"
    NSLog(@"%d",[[UIDevice currentDevice] isRetina]);               //BOOL, returns YES (1) for retina NO (0) for non-retina
}



































































#import <UIKit/UIKit.h>

int main(int argc, char *argv[])
{
    @autoreleasepool {
        customCategoryFunctions();
        return 0;
    }
}
