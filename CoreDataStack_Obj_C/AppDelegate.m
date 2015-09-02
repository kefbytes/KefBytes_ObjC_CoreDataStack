//
//  AppDelegate.m
//  CoreDataStack_Obj_C
//
//  Created by Franks, Kent on 5/12/15.
//  Copyright (c) 2015 Franks, Kent. All rights reserved.
//

#import "AppDelegate.h"

#import "KefPersistenceController.h"

@interface AppDelegate ()

@property (strong, readwrite) KefPersistenceController *persistenceController;

- (void)completeUserInterface;

@end

@implementation AppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    [self setPersistenceController:[[KefPersistenceController alloc] initWithCallback:^{
        [self completeUserInterface];
    }]];
    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application
{
    [[self persistenceController] save];
}

- (void)applicationDidEnterBackground:(UIApplication *)application
{
    [[self persistenceController] save];
}

- (void)applicationWillTerminate:(UIApplication *)application
{
    [[self persistenceController] save];
}

- (void)completeUserInterface
{
    //Application code goes here
}

@end