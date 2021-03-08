#line 1 "Tweak.x"
#import <UIKit/UIKit.h>



@interface SBIconLegibilityLabelView : UIView
@end


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

@class SBIconRecentlyUpdatedLabelAccessoryView; @class PSCapacityBarCell; @class SBIconLegibilityLabelView; @class SBIconListPageControl; @class _UIStatusBarStringView; @class SBIconImageView; @class SBDockView; @class _UIStatusBar; @class SBIconBetaLabelAccessoryView; @class NCNotificationListView; @class NCNotificationListSectionRevealHintView; @class SBIconBadgeView; 
static void (*_logos_orig$_ungrouped$SBIconLegibilityLabelView$layoutSubviews)(_LOGOS_SELF_TYPE_NORMAL SBIconLegibilityLabelView* _LOGOS_SELF_CONST, SEL); static void _logos_method$_ungrouped$SBIconLegibilityLabelView$layoutSubviews(_LOGOS_SELF_TYPE_NORMAL SBIconLegibilityLabelView* _LOGOS_SELF_CONST, SEL); static void (*_logos_orig$_ungrouped$_UIStatusBar$layoutSubviews)(_LOGOS_SELF_TYPE_NORMAL _UIStatusBar* _LOGOS_SELF_CONST, SEL); static void _logos_method$_ungrouped$_UIStatusBar$layoutSubviews(_LOGOS_SELF_TYPE_NORMAL _UIStatusBar* _LOGOS_SELF_CONST, SEL); static void (*_logos_orig$_ungrouped$_UIStatusBarStringView$layoutSubviews)(_LOGOS_SELF_TYPE_NORMAL _UIStatusBarStringView* _LOGOS_SELF_CONST, SEL); static void _logos_method$_ungrouped$_UIStatusBarStringView$layoutSubviews(_LOGOS_SELF_TYPE_NORMAL _UIStatusBarStringView* _LOGOS_SELF_CONST, SEL); static void (*_logos_orig$_ungrouped$_UIStatusBarStringView$setText$)(_LOGOS_SELF_TYPE_NORMAL _UIStatusBarStringView* _LOGOS_SELF_CONST, SEL, id); static void _logos_method$_ungrouped$_UIStatusBarStringView$setText$(_LOGOS_SELF_TYPE_NORMAL _UIStatusBarStringView* _LOGOS_SELF_CONST, SEL, id); static void (*_logos_orig$_ungrouped$NCNotificationListView$layoutSubviews)(_LOGOS_SELF_TYPE_NORMAL NCNotificationListView* _LOGOS_SELF_CONST, SEL); static void _logos_method$_ungrouped$NCNotificationListView$layoutSubviews(_LOGOS_SELF_TYPE_NORMAL NCNotificationListView* _LOGOS_SELF_CONST, SEL); static void (*_logos_orig$_ungrouped$NCNotificationListSectionRevealHintView$layoutSubviews)(_LOGOS_SELF_TYPE_NORMAL NCNotificationListSectionRevealHintView* _LOGOS_SELF_CONST, SEL); static void _logos_method$_ungrouped$NCNotificationListSectionRevealHintView$layoutSubviews(_LOGOS_SELF_TYPE_NORMAL NCNotificationListSectionRevealHintView* _LOGOS_SELF_CONST, SEL); static void (*_logos_orig$_ungrouped$SBIconListPageControl$layoutSubviews)(_LOGOS_SELF_TYPE_NORMAL SBIconListPageControl* _LOGOS_SELF_CONST, SEL); static void _logos_method$_ungrouped$SBIconListPageControl$layoutSubviews(_LOGOS_SELF_TYPE_NORMAL SBIconListPageControl* _LOGOS_SELF_CONST, SEL); static void (*_logos_orig$_ungrouped$PSCapacityBarCell$layoutSubviews)(_LOGOS_SELF_TYPE_NORMAL PSCapacityBarCell* _LOGOS_SELF_CONST, SEL); static void _logos_method$_ungrouped$PSCapacityBarCell$layoutSubviews(_LOGOS_SELF_TYPE_NORMAL PSCapacityBarCell* _LOGOS_SELF_CONST, SEL); static void (*_logos_orig$_ungrouped$SBIconBadgeView$layoutSubviews)(_LOGOS_SELF_TYPE_NORMAL SBIconBadgeView* _LOGOS_SELF_CONST, SEL); static void _logos_method$_ungrouped$SBIconBadgeView$layoutSubviews(_LOGOS_SELF_TYPE_NORMAL SBIconBadgeView* _LOGOS_SELF_CONST, SEL); static void (*_logos_orig$_ungrouped$SBIconBetaLabelAccessoryView$layoutSubviews)(_LOGOS_SELF_TYPE_NORMAL SBIconBetaLabelAccessoryView* _LOGOS_SELF_CONST, SEL); static void _logos_method$_ungrouped$SBIconBetaLabelAccessoryView$layoutSubviews(_LOGOS_SELF_TYPE_NORMAL SBIconBetaLabelAccessoryView* _LOGOS_SELF_CONST, SEL); static void (*_logos_orig$_ungrouped$SBIconRecentlyUpdatedLabelAccessoryView$layoutSubviews)(_LOGOS_SELF_TYPE_NORMAL SBIconRecentlyUpdatedLabelAccessoryView* _LOGOS_SELF_CONST, SEL); static void _logos_method$_ungrouped$SBIconRecentlyUpdatedLabelAccessoryView$layoutSubviews(_LOGOS_SELF_TYPE_NORMAL SBIconRecentlyUpdatedLabelAccessoryView* _LOGOS_SELF_CONST, SEL); static void (*_logos_orig$_ungrouped$SBIconImageView$layoutSubviews)(_LOGOS_SELF_TYPE_NORMAL SBIconImageView* _LOGOS_SELF_CONST, SEL); static void _logos_method$_ungrouped$SBIconImageView$layoutSubviews(_LOGOS_SELF_TYPE_NORMAL SBIconImageView* _LOGOS_SELF_CONST, SEL); static void (*_logos_orig$_ungrouped$SBDockView$layoutSubviews)(_LOGOS_SELF_TYPE_NORMAL SBDockView* _LOGOS_SELF_CONST, SEL); static void _logos_method$_ungrouped$SBDockView$layoutSubviews(_LOGOS_SELF_TYPE_NORMAL SBDockView* _LOGOS_SELF_CONST, SEL); 

#line 8 "Tweak.x"

static void _logos_method$_ungrouped$SBIconLegibilityLabelView$layoutSubviews(_LOGOS_SELF_TYPE_NORMAL SBIconLegibilityLabelView* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    NSDictionary *bundleDefaults = [[NSUserDefaults standardUserDefaults]persistentDomainForName:@"com.sangster.sbcustomizepreferences"];
    
    id removeLabels = [bundleDefaults valueForKey:@"removeLabels"];
    
    if ([removeLabels isEqual:@1]) {
        [self removeFromSuperview];
        
    } else {
        _logos_orig$_ungrouped$SBIconLegibilityLabelView$layoutSubviews(self, _cmd);
    }
}



@interface _UIStatusBar : UIView
@end



static void _logos_method$_ungrouped$_UIStatusBar$layoutSubviews(_LOGOS_SELF_TYPE_NORMAL _UIStatusBar* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    NSDictionary *bundleDefaults = [[NSUserDefaults standardUserDefaults]persistentDomainForName:@"com.sangster.sbcustomizepreferences"];
    id removeStatusBar = [bundleDefaults valueForKey:@"removeStatusBar"];
    
    if ([removeStatusBar isEqual:@1]) {
        self.hidden = YES;
    }
    else if ([removeStatusBar isEqual:@0]){
        self.hidden = NO;
    }
}




@interface _UIStatusBarStringView : UILabel
@end



static void _logos_method$_ungrouped$_UIStatusBarStringView$layoutSubviews(_LOGOS_SELF_TYPE_NORMAL _UIStatusBarStringView* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    NSDictionary *bundleDefaults = [[NSUserDefaults standardUserDefaults]persistentDomainForName:@"com.sangster.sbcustomizepreferences"];
    
    NSString *statusText = [bundleDefaults valueForKey:@"statusText"];
    id enableCustom = [bundleDefaults valueForKey:@"enableCustom"];
    
    if ([enableCustom isEqual:@1]) {
        [self setText:statusText];
    } else {
        _logos_orig$_ungrouped$_UIStatusBarStringView$layoutSubviews(self, _cmd);
    }
    
    _logos_orig$_ungrouped$_UIStatusBarStringView$layoutSubviews(self, _cmd);
}

static void _logos_method$_ungrouped$_UIStatusBarStringView$setText$(_LOGOS_SELF_TYPE_NORMAL _UIStatusBarStringView* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, id arg1) {
    _logos_orig$_ungrouped$_UIStatusBarStringView$setText$(self, _cmd, arg1);
}




@interface NCNotificationListView : UIView
@end



static void _logos_method$_ungrouped$NCNotificationListView$layoutSubviews(_LOGOS_SELF_TYPE_NORMAL NCNotificationListView* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    NSDictionary *bundleDefaults = [[NSUserDefaults standardUserDefaults]persistentDomainForName:@"com.sangster.sbcustomizepreferences"];
    
    id hideNoti = [bundleDefaults valueForKey:@"hideNoti"];
    
    if ([hideNoti isEqual:@1]) {
        self.hidden = YES;
    }
    else if ([hideNoti isEqual:@0]){
        self.hidden = NO;
        _logos_orig$_ungrouped$NCNotificationListView$layoutSubviews(self, _cmd);
    }
}




@interface NCNotificationListSectionRevealHintView : UIView
@end



static void _logos_method$_ungrouped$NCNotificationListSectionRevealHintView$layoutSubviews(_LOGOS_SELF_TYPE_NORMAL NCNotificationListSectionRevealHintView* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    NSDictionary *bundleDefaults = [[NSUserDefaults standardUserDefaults]persistentDomainForName:@"com.sangster.sbcustomizepreferences"];
    
    id hideOldNoti = [bundleDefaults valueForKey:@"hideOldNoti"];
    UILabel *_revealHintTitle = [self valueForKey:@"_revealHintTitle"];
    if ([hideOldNoti isEqual:@1]) {
        [_revealHintTitle setHidden:YES];
    }
    else if ([hideOldNoti isEqual:@0]) {
        _logos_orig$_ungrouped$NCNotificationListSectionRevealHintView$layoutSubviews(self, _cmd);
    }
}




@interface SBIconListPageControl : UIView
@end



static void _logos_method$_ungrouped$SBIconListPageControl$layoutSubviews(_LOGOS_SELF_TYPE_NORMAL SBIconListPageControl* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    NSDictionary *bundleDefaults = [[NSUserDefaults standardUserDefaults]persistentDomainForName:@"com.sangster.sbcustomizepreferences"];
    
    id hidePageDots = [bundleDefaults valueForKey:@"hidePageDots"];
    
    if ([hidePageDots isEqual:@1]) {
        [self setHidden:YES];
    }
    
    else if ([hidePageDots isEqual:@0]) {
        [self setHidden:NO];
    }
    
}




@interface PSCapacityBarCell : UIView
@end



static void _logos_method$_ungrouped$PSCapacityBarCell$layoutSubviews(_LOGOS_SELF_TYPE_NORMAL PSCapacityBarCell* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    NSDictionary *bundleDefaults = [[NSUserDefaults standardUserDefaults]persistentDomainForName:@"com.sangster.sbcustomizepreferences"];
    
    id spoofStorage = [bundleDefaults valueForKey:@"spoofStorage"];
    UILabel *_sizeLabel = [self valueForKey:@"_sizeLabel"];
    
    if ([spoofStorage isEqual:@1]) {
        [_sizeLabel setText:@"100TB free"];
    }
    
    else if ([spoofStorage isEqual:@0]) {
        _logos_orig$_ungrouped$PSCapacityBarCell$layoutSubviews(self, _cmd);
    }
    


}




@interface SBIconBadgeView : UIView
@end



static void _logos_method$_ungrouped$SBIconBadgeView$layoutSubviews(_LOGOS_SELF_TYPE_NORMAL SBIconBadgeView* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    NSDictionary *bundleDefaults = [[NSUserDefaults standardUserDefaults]persistentDomainForName:@"com.sangster.sbcustomizepreferences"];
    
    id hideBadges = [bundleDefaults valueForKey:@"hideBadges"];
    
    if ([hideBadges isEqual:@1]) {
        [self setHidden:YES];
    }
    
    else if ([hideBadges isEqual:@0]) {
        [self setHidden:NO];
    }
}





@interface SBIconBetaLabelAccessoryView : UIView
@end



static void _logos_method$_ungrouped$SBIconBetaLabelAccessoryView$layoutSubviews(_LOGOS_SELF_TYPE_NORMAL SBIconBetaLabelAccessoryView* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    NSDictionary *bundleDefaults = [[NSUserDefaults standardUserDefaults]persistentDomainForName:@"com.sangster.sbcustomizepreferences"];
    
    id hideBetaDots = [bundleDefaults valueForKey:@"hideBetaDots"];
    
    if ([hideBetaDots isEqual:@1]) {
        [self setHidden:YES];
    }
    
    else if ([hideBetaDots isEqual:@0]) {
        [self setHidden:NO];
    }
}





@interface SBIconRecentlyUpdatedLabelAccessoryView : UIView
@end



static void _logos_method$_ungrouped$SBIconRecentlyUpdatedLabelAccessoryView$layoutSubviews(_LOGOS_SELF_TYPE_NORMAL SBIconRecentlyUpdatedLabelAccessoryView* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    NSDictionary *bundleDefaults = [[NSUserDefaults standardUserDefaults]persistentDomainForName:@"com.sangster.sbcustomizepreferences"];
    
    id hideUpdateDots = [bundleDefaults valueForKey:@"hideUpdateDots"];
    
    if ([hideUpdateDots isEqual:@1]) {
        [self setHidden:YES];
    }
    
    else if ([hideUpdateDots isEqual:@0]) {
        [self setHidden:NO];
    }
}





@interface SBIconImageView : UIView
@end



static void _logos_method$_ungrouped$SBIconImageView$layoutSubviews(_LOGOS_SELF_TYPE_NORMAL SBIconImageView* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    NSDictionary *bundleDefaults = [[NSUserDefaults standardUserDefaults]persistentDomainForName:@"com.sangster.sbcustomizepreferences"];
    
    id hideApps = [bundleDefaults valueForKey:@"hideApps"];
    
    if([hideApps isEqual:@1]) {
        [self setHidden:YES];
    }
    
    else if ([hideApps isEqual:@0]) {
        [self setHidden:NO];
    }
}





@interface SBDockView : UIView
@end



static void _logos_method$_ungrouped$SBDockView$layoutSubviews(_LOGOS_SELF_TYPE_NORMAL SBDockView* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    NSDictionary *bundleDefaults = [[NSUserDefaults standardUserDefaults]persistentDomainForName:@"com.sangster.sbcustomizepreferences"];
    
    id hideDock = [bundleDefaults valueForKey:@"hideDock"];
    
    if([hideDock isEqual:@1]) {
        [self setHidden:YES];
    }
    
    else if([hideDock isEqual:@0]) {
        _logos_orig$_ungrouped$SBDockView$layoutSubviews(self, _cmd);
    }
    
    








}


static __attribute__((constructor)) void _logosLocalInit() {
{Class _logos_class$_ungrouped$SBIconLegibilityLabelView = objc_getClass("SBIconLegibilityLabelView"); { MSHookMessageEx(_logos_class$_ungrouped$SBIconLegibilityLabelView, @selector(layoutSubviews), (IMP)&_logos_method$_ungrouped$SBIconLegibilityLabelView$layoutSubviews, (IMP*)&_logos_orig$_ungrouped$SBIconLegibilityLabelView$layoutSubviews);}Class _logos_class$_ungrouped$_UIStatusBar = objc_getClass("_UIStatusBar"); { MSHookMessageEx(_logos_class$_ungrouped$_UIStatusBar, @selector(layoutSubviews), (IMP)&_logos_method$_ungrouped$_UIStatusBar$layoutSubviews, (IMP*)&_logos_orig$_ungrouped$_UIStatusBar$layoutSubviews);}Class _logos_class$_ungrouped$_UIStatusBarStringView = objc_getClass("_UIStatusBarStringView"); { MSHookMessageEx(_logos_class$_ungrouped$_UIStatusBarStringView, @selector(layoutSubviews), (IMP)&_logos_method$_ungrouped$_UIStatusBarStringView$layoutSubviews, (IMP*)&_logos_orig$_ungrouped$_UIStatusBarStringView$layoutSubviews);}{ MSHookMessageEx(_logos_class$_ungrouped$_UIStatusBarStringView, @selector(setText:), (IMP)&_logos_method$_ungrouped$_UIStatusBarStringView$setText$, (IMP*)&_logos_orig$_ungrouped$_UIStatusBarStringView$setText$);}Class _logos_class$_ungrouped$NCNotificationListView = objc_getClass("NCNotificationListView"); { MSHookMessageEx(_logos_class$_ungrouped$NCNotificationListView, @selector(layoutSubviews), (IMP)&_logos_method$_ungrouped$NCNotificationListView$layoutSubviews, (IMP*)&_logos_orig$_ungrouped$NCNotificationListView$layoutSubviews);}Class _logos_class$_ungrouped$NCNotificationListSectionRevealHintView = objc_getClass("NCNotificationListSectionRevealHintView"); { MSHookMessageEx(_logos_class$_ungrouped$NCNotificationListSectionRevealHintView, @selector(layoutSubviews), (IMP)&_logos_method$_ungrouped$NCNotificationListSectionRevealHintView$layoutSubviews, (IMP*)&_logos_orig$_ungrouped$NCNotificationListSectionRevealHintView$layoutSubviews);}Class _logos_class$_ungrouped$SBIconListPageControl = objc_getClass("SBIconListPageControl"); { MSHookMessageEx(_logos_class$_ungrouped$SBIconListPageControl, @selector(layoutSubviews), (IMP)&_logos_method$_ungrouped$SBIconListPageControl$layoutSubviews, (IMP*)&_logos_orig$_ungrouped$SBIconListPageControl$layoutSubviews);}Class _logos_class$_ungrouped$PSCapacityBarCell = objc_getClass("PSCapacityBarCell"); { MSHookMessageEx(_logos_class$_ungrouped$PSCapacityBarCell, @selector(layoutSubviews), (IMP)&_logos_method$_ungrouped$PSCapacityBarCell$layoutSubviews, (IMP*)&_logos_orig$_ungrouped$PSCapacityBarCell$layoutSubviews);}Class _logos_class$_ungrouped$SBIconBadgeView = objc_getClass("SBIconBadgeView"); { MSHookMessageEx(_logos_class$_ungrouped$SBIconBadgeView, @selector(layoutSubviews), (IMP)&_logos_method$_ungrouped$SBIconBadgeView$layoutSubviews, (IMP*)&_logos_orig$_ungrouped$SBIconBadgeView$layoutSubviews);}Class _logos_class$_ungrouped$SBIconBetaLabelAccessoryView = objc_getClass("SBIconBetaLabelAccessoryView"); { MSHookMessageEx(_logos_class$_ungrouped$SBIconBetaLabelAccessoryView, @selector(layoutSubviews), (IMP)&_logos_method$_ungrouped$SBIconBetaLabelAccessoryView$layoutSubviews, (IMP*)&_logos_orig$_ungrouped$SBIconBetaLabelAccessoryView$layoutSubviews);}Class _logos_class$_ungrouped$SBIconRecentlyUpdatedLabelAccessoryView = objc_getClass("SBIconRecentlyUpdatedLabelAccessoryView"); { MSHookMessageEx(_logos_class$_ungrouped$SBIconRecentlyUpdatedLabelAccessoryView, @selector(layoutSubviews), (IMP)&_logos_method$_ungrouped$SBIconRecentlyUpdatedLabelAccessoryView$layoutSubviews, (IMP*)&_logos_orig$_ungrouped$SBIconRecentlyUpdatedLabelAccessoryView$layoutSubviews);}Class _logos_class$_ungrouped$SBIconImageView = objc_getClass("SBIconImageView"); { MSHookMessageEx(_logos_class$_ungrouped$SBIconImageView, @selector(layoutSubviews), (IMP)&_logos_method$_ungrouped$SBIconImageView$layoutSubviews, (IMP*)&_logos_orig$_ungrouped$SBIconImageView$layoutSubviews);}Class _logos_class$_ungrouped$SBDockView = objc_getClass("SBDockView"); { MSHookMessageEx(_logos_class$_ungrouped$SBDockView, @selector(layoutSubviews), (IMP)&_logos_method$_ungrouped$SBDockView$layoutSubviews, (IMP*)&_logos_orig$_ungrouped$SBDockView$layoutSubviews);}} }
#line 285 "Tweak.x"
