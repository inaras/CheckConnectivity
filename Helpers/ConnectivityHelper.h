//
//  ConnectivityHelper.h
//  Divxplanet
//
//  Created by Osman Çelik on 12/7/11.
//  Copyright (c) 2011 Inaras. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <sys/socket.h>
#import <netinet/in.h>
#import <SystemConfiguration/SystemConfiguration.h>

@interface ConnectivityHelper : NSObject{
}
+ (BOOL)hasConnectivity;
@end
