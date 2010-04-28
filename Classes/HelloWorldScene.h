//
//  HelloWorldScene.h
//  Cocos2DBreakout2
//
//  Created by Ray Wenderlich on 2/17/10.
//  Copyright 2010 Ray Wenderlich. All rights reserved.
//

#import "cocos2d.h"
#import "Box2D.h"
#import "MyContactListener.h"

@interface HelloWorld : CCLayer {
    b2World *_world;
    b2Body *_groundBody;
    b2Body *_paddleBody;    
    b2Fixture *_paddleFixture;
    b2Fixture *_ballFixture;
    b2Fixture *_bottomFixture;
    b2MouseJoint *_mouseJoint;
    MyContactListener *_contactListener;
}

+ (id) scene;

@end
