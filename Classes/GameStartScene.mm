//
//  GameOverScene.m
//  Cocos2DSimpleGame
//
//  Created by Ray Wenderlich on 2/10/10.
//  Copyright 2010 Ray Wenderlich. All rights reserved.
//

#import "GameStartScene.h"
#import "HelloWorldScene.h"

@implementation GameStartScene
@synthesize layer = _layer;

- (id)init {
	
	if ((self = [super init])) {
		self.layer = [GameStartLayer node];
		[self addChild:_layer];
	}
	return self;
}

- (void)dealloc {
	[_layer release];
	_layer = nil;
	[super dealloc];
}

@end

@implementation GameStartLayer
@synthesize label = _label;

-(id) init
{
	if( (self=[super initWithColor:ccc4(255,255,0,255)] )) {
		
		CGSize winSize = [[CCDirector sharedDirector] winSize];
		self.label = [CCLabel labelWithString:@"" fontName:@"Arial" fontSize:32];
		_label.color = ccc3(0,0,255);
		_label.position = ccp(winSize.width/2, winSize.height/2);
		[self addChild:_label];
		
		[self runAction:[CCSequence actions:
						 [CCDelayTime actionWithDuration:3],
						 [CCCallFunc actionWithTarget:self selector:@selector(gameStartDone)],
						 nil]];
		
	}	
	return self;
}

- (void)gameStartDone {
	
	[[CCDirector sharedDirector] replaceScene:[HelloWorld scene]];
	
}

- (void)dealloc {
	[_label release];
	_label = nil;
	[super dealloc];
}

@end