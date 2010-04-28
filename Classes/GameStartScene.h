//
//  GameStartScene.h
//  Cocos2DSimpleGame
//
//  Created by Jonathan Connell on 4/21/10.
//  Copyright 2010 Jonathan Connell. All rights reserved.
//

#import "cocos2d.h"

@interface GameStartLayer : CCColorLayer {
	CCLabel *_label;
}

@property (nonatomic, retain) CCLabel *label;

@end

@interface GameStartScene : CCScene {
	GameStartLayer *_layer;
}

@property (nonatomic, retain) GameStartLayer *layer;

@end
