//
//  KefPersistenceController.h
//  CoreDataStack_Obj_C
//
//  Created by Franks, Kent on 5/12/15.
//  Copyright (c) 2015 Franks, Kent. All rights reserved.
//

typedef void (^InitCallbackBlock)(void);

@interface KefPersistenceController : NSObject

@property (strong, readonly) NSManagedObjectContext *managedObjectContext;

- (id)initWithCallback:(InitCallbackBlock)callback;

- (void)save;

@end
