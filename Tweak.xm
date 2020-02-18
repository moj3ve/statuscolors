#include <UIKit/UIKit.h>
/*
NSDictionary *bundleDefaults = [[NSUserDefaults standardUserDefaults]
persistentDomainForName:@"com.daydream.statuscolorsprefs"];
id isEnabled = [bundleDefaults valueForKey:@"isEnabled"];
*/
%hook UIStatusBar_Base
-(BOOL)isHidden {
	NSDictionary *bundleDefaults = [[NSUserDefaults standardUserDefaults]
	persistentDomainForName:@"com.daydream.statuscolorprefs"];
	id isEnabled = [bundleDefaults valueForKey:@"isEnabled"];
	id hideBar = [bundleDefaults valueForKey:@"hideBar"];
	if([isEnabled isEqual:@1] && [hideBar isEqual:@1]){
		return NO;
	}
	return YES;
}
%end
