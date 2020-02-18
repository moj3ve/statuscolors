#line 1 "Tweak.xm"
#include <UIKit/UIKit.h>






#include <substrate.h>
#if defined(__clang__)
#if __has_feature(objc_arc)
#define _LOGOS_SELF_TYPE_NORMAL __unsafe_unretained
#define _LOGOS_SELF_TYPE_INIT __attribute__((ns_consumed))
#define _LOGOS_SELF_CONST const
#define _LOGOS_RETURN_RETAINED __attribute__((ns_returns_retained))
#else
#define _LOGOS_SELF_TYPE_NORMAL
#define _LOGOS_SELF_TYPE_INIT
#define _LOGOS_SELF_CONST
#define _LOGOS_RETURN_RETAINED
#endif
#else
#define _LOGOS_SELF_TYPE_NORMAL
#define _LOGOS_SELF_TYPE_INIT
#define _LOGOS_SELF_CONST
#define _LOGOS_RETURN_RETAINED
#endif

@class UIStatusBarItemView; 
static BOOL (*_logos_orig$_ungrouped$UIStatusBarItemView$isVisible)(_LOGOS_SELF_TYPE_NORMAL UIStatusBarItemView* _LOGOS_SELF_CONST, SEL); static BOOL _logos_method$_ungrouped$UIStatusBarItemView$isVisible(_LOGOS_SELF_TYPE_NORMAL UIStatusBarItemView* _LOGOS_SELF_CONST, SEL); 

#line 7 "Tweak.xm"

static BOOL _logos_method$_ungrouped$UIStatusBarItemView$isVisible(_LOGOS_SELF_TYPE_NORMAL UIStatusBarItemView* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
	NSDictionary *bundleDefaults = [[NSUserDefaults standardUserDefaults]
	persistentDomainForName:@"com.daydream.statuscolorprefs"];
	id isEnabled = [bundleDefaults valueForKey:@"isEnabled"];
	id hideBar = [bundleDefaults valueForKey:@"hideBar"];
	if([isEnabled isEqual:@1] && [hideBar isEqual:@1]){
		return NO;
	}
	return YES;
}

static __attribute__((constructor)) void _logosLocalInit() {
{Class _logos_class$_ungrouped$UIStatusBarItemView = objc_getClass("UIStatusBarItemView"); MSHookMessageEx(_logos_class$_ungrouped$UIStatusBarItemView, @selector(isVisible), (IMP)&_logos_method$_ungrouped$UIStatusBarItemView$isVisible, (IMP*)&_logos_orig$_ungrouped$UIStatusBarItemView$isVisible);} }
#line 19 "Tweak.xm"
