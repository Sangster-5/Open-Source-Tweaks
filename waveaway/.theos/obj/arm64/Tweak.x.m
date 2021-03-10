#line 1 "Tweak.x"
#import <UIKit/UIKit.h>
#import <Cephei/HBPreferences.h>

static BOOL removeLabels;
















@interface SBIconLegibilityLabelView : UIView
@end
@interface _UIStatusBar : UIView
@end
@interface _UIStatusBarStringView : UILabel
@end
@interface NCNotificationListView : UIView
@end
@interface NCNotificationListSectionRevealHintView : UIView
@end
@interface SBIconListPageControl : UIView
@end
@interface PSCapacityBarCell : UIView
@end
@interface SBIconBadgeView : UIView
@end
@interface SBIconBetaLabelAccessoryView : UIView
@end
@interface SBIconRecentlyUpdatedLabelAccessoryView : UIView
@end
@interface SBIconImageView : UIView
@end
@interface SBDockView : UIView
@end
@interface SBIconCloudLabelAccessoryView : UIView
@end
@interface BSUICAPackageView : UIView
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

@class SBIconLegibilityLabelView; @class _UIStatusBar; @class SBIconBadgeView; @class NCNotificationListView; @class SBIconListPageControl; @class SBIconImageView; @class PSCapacityBarCell; @class NCNotificationListSectionRevealHintView; @class _UIStatusBarStringView; @class SBIconCloudLabelAccessoryView; @class SBIconRecentlyUpdatedLabelAccessoryView; @class SBIconBetaLabelAccessoryView; @class BSUICAPackageView; @class SBDockView; 


#line 52 "Tweak.x"
static void (*_logos_orig$WaveAway$SBIconLegibilityLabelView$layoutSubviews)(_LOGOS_SELF_TYPE_NORMAL SBIconLegibilityLabelView* _LOGOS_SELF_CONST, SEL); static void _logos_method$WaveAway$SBIconLegibilityLabelView$layoutSubviews(_LOGOS_SELF_TYPE_NORMAL SBIconLegibilityLabelView* _LOGOS_SELF_CONST, SEL); static void (*_logos_orig$WaveAway$_UIStatusBar$layoutSubviews)(_LOGOS_SELF_TYPE_NORMAL _UIStatusBar* _LOGOS_SELF_CONST, SEL); static void _logos_method$WaveAway$_UIStatusBar$layoutSubviews(_LOGOS_SELF_TYPE_NORMAL _UIStatusBar* _LOGOS_SELF_CONST, SEL); static void (*_logos_orig$WaveAway$_UIStatusBarStringView$layoutSubviews)(_LOGOS_SELF_TYPE_NORMAL _UIStatusBarStringView* _LOGOS_SELF_CONST, SEL); static void _logos_method$WaveAway$_UIStatusBarStringView$layoutSubviews(_LOGOS_SELF_TYPE_NORMAL _UIStatusBarStringView* _LOGOS_SELF_CONST, SEL); static void (*_logos_orig$WaveAway$_UIStatusBarStringView$setText$)(_LOGOS_SELF_TYPE_NORMAL _UIStatusBarStringView* _LOGOS_SELF_CONST, SEL, id); static void _logos_method$WaveAway$_UIStatusBarStringView$setText$(_LOGOS_SELF_TYPE_NORMAL _UIStatusBarStringView* _LOGOS_SELF_CONST, SEL, id); static void (*_logos_orig$WaveAway$NCNotificationListView$layoutSubviews)(_LOGOS_SELF_TYPE_NORMAL NCNotificationListView* _LOGOS_SELF_CONST, SEL); static void _logos_method$WaveAway$NCNotificationListView$layoutSubviews(_LOGOS_SELF_TYPE_NORMAL NCNotificationListView* _LOGOS_SELF_CONST, SEL); static void (*_logos_orig$WaveAway$NCNotificationListSectionRevealHintView$layoutSubviews)(_LOGOS_SELF_TYPE_NORMAL NCNotificationListSectionRevealHintView* _LOGOS_SELF_CONST, SEL); static void _logos_method$WaveAway$NCNotificationListSectionRevealHintView$layoutSubviews(_LOGOS_SELF_TYPE_NORMAL NCNotificationListSectionRevealHintView* _LOGOS_SELF_CONST, SEL); static void (*_logos_orig$WaveAway$SBIconListPageControl$layoutSubviews)(_LOGOS_SELF_TYPE_NORMAL SBIconListPageControl* _LOGOS_SELF_CONST, SEL); static void _logos_method$WaveAway$SBIconListPageControl$layoutSubviews(_LOGOS_SELF_TYPE_NORMAL SBIconListPageControl* _LOGOS_SELF_CONST, SEL); static void (*_logos_orig$WaveAway$PSCapacityBarCell$layoutSubviews)(_LOGOS_SELF_TYPE_NORMAL PSCapacityBarCell* _LOGOS_SELF_CONST, SEL); static void _logos_method$WaveAway$PSCapacityBarCell$layoutSubviews(_LOGOS_SELF_TYPE_NORMAL PSCapacityBarCell* _LOGOS_SELF_CONST, SEL); static void (*_logos_orig$WaveAway$SBIconBadgeView$layoutSubviews)(_LOGOS_SELF_TYPE_NORMAL SBIconBadgeView* _LOGOS_SELF_CONST, SEL); static void _logos_method$WaveAway$SBIconBadgeView$layoutSubviews(_LOGOS_SELF_TYPE_NORMAL SBIconBadgeView* _LOGOS_SELF_CONST, SEL); static void (*_logos_orig$WaveAway$SBIconBetaLabelAccessoryView$layoutSubviews)(_LOGOS_SELF_TYPE_NORMAL SBIconBetaLabelAccessoryView* _LOGOS_SELF_CONST, SEL); static void _logos_method$WaveAway$SBIconBetaLabelAccessoryView$layoutSubviews(_LOGOS_SELF_TYPE_NORMAL SBIconBetaLabelAccessoryView* _LOGOS_SELF_CONST, SEL); static void (*_logos_orig$WaveAway$SBIconRecentlyUpdatedLabelAccessoryView$layoutSubviews)(_LOGOS_SELF_TYPE_NORMAL SBIconRecentlyUpdatedLabelAccessoryView* _LOGOS_SELF_CONST, SEL); static void _logos_method$WaveAway$SBIconRecentlyUpdatedLabelAccessoryView$layoutSubviews(_LOGOS_SELF_TYPE_NORMAL SBIconRecentlyUpdatedLabelAccessoryView* _LOGOS_SELF_CONST, SEL); static void (*_logos_orig$WaveAway$SBIconImageView$layoutSubviews)(_LOGOS_SELF_TYPE_NORMAL SBIconImageView* _LOGOS_SELF_CONST, SEL); static void _logos_method$WaveAway$SBIconImageView$layoutSubviews(_LOGOS_SELF_TYPE_NORMAL SBIconImageView* _LOGOS_SELF_CONST, SEL); static void (*_logos_orig$WaveAway$SBDockView$layoutSubviews)(_LOGOS_SELF_TYPE_NORMAL SBDockView* _LOGOS_SELF_CONST, SEL); static void _logos_method$WaveAway$SBDockView$layoutSubviews(_LOGOS_SELF_TYPE_NORMAL SBDockView* _LOGOS_SELF_CONST, SEL); static void (*_logos_orig$WaveAway$SBIconCloudLabelAccessoryView$layoutSubviews)(_LOGOS_SELF_TYPE_NORMAL SBIconCloudLabelAccessoryView* _LOGOS_SELF_CONST, SEL); static void _logos_method$WaveAway$SBIconCloudLabelAccessoryView$layoutSubviews(_LOGOS_SELF_TYPE_NORMAL SBIconCloudLabelAccessoryView* _LOGOS_SELF_CONST, SEL); static void (*_logos_orig$WaveAway$BSUICAPackageView$layoutSubviews)(_LOGOS_SELF_TYPE_NORMAL BSUICAPackageView* _LOGOS_SELF_CONST, SEL); static void _logos_method$WaveAway$BSUICAPackageView$layoutSubviews(_LOGOS_SELF_TYPE_NORMAL BSUICAPackageView* _LOGOS_SELF_CONST, SEL); 



static void _logos_method$WaveAway$SBIconLegibilityLabelView$layoutSubviews(_LOGOS_SELF_TYPE_NORMAL SBIconLegibilityLabelView* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    if (removeLabels) {
        [self removeFromSuperview];
        
    }
    
    return _logos_orig$WaveAway$SBIconLegibilityLabelView$layoutSubviews(self, _cmd);
}





static void _logos_method$WaveAway$_UIStatusBar$layoutSubviews(_LOGOS_SELF_TYPE_NORMAL _UIStatusBar* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    NSDictionary *bundleDefaults = [[NSUserDefaults standardUserDefaults]persistentDomainForName:@"com.sangster.sbcustomizepreferences"];
    id removeStatusBar = [bundleDefaults valueForKey:@"removeStatusBar"];
    
    if ([removeStatusBar isEqual:@1]) {
        self.hidden = YES;
    }
    
    return _logos_orig$WaveAway$_UIStatusBar$layoutSubviews(self, _cmd);
}






static void _logos_method$WaveAway$_UIStatusBarStringView$layoutSubviews(_LOGOS_SELF_TYPE_NORMAL _UIStatusBarStringView* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    NSDictionary *bundleDefaults = [[NSUserDefaults standardUserDefaults]persistentDomainForName:@"com.sangster.sbcustomizepreferences"];
    
    
    NSString *carrierText = [bundleDefaults valueForKey:@"carrierText"];
    id enableCustomCarrier = [bundleDefaults valueForKey:@"enableCustomCarrier"];
    
    if([enableCustomCarrier isEqual:@1] && ![carrierText isEqual:@""]) {
        if(![self.text containsString:@"%"]) {
            
            [self setText:carrierText];
            
        } else {
            _logos_orig$WaveAway$_UIStatusBarStringView$layoutSubviews(self, _cmd);
        }
    
    }
    
    else if([enableCustomCarrier isEqual:@0]) {
        _logos_orig$WaveAway$_UIStatusBarStringView$layoutSubviews(self, _cmd);
    }
    
    
    
    NSString *batteryText = [bundleDefaults valueForKey:@"batteryText"];
    id enableCustomBatteryText = [bundleDefaults valueForKey:@"enableCustomBatteryText"];
    
    if([enableCustomBatteryText isEqual:@1] && ![batteryText isEqual:@""]) {
        if([self.text containsString:@"%"]) {
            
            [self setText:batteryText];
            
        } else {
            _logos_orig$WaveAway$_UIStatusBarStringView$layoutSubviews(self, _cmd);
        }
    
    }
    
    else if([enableCustomBatteryText isEqual:@0]) {
        _logos_orig$WaveAway$_UIStatusBarStringView$layoutSubviews(self, _cmd);
    }
    
}

static void _logos_method$WaveAway$_UIStatusBarStringView$setText$(_LOGOS_SELF_TYPE_NORMAL _UIStatusBarStringView* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, id arg1) {
    _logos_orig$WaveAway$_UIStatusBarStringView$setText$(self, _cmd, arg1);
}






static void _logos_method$WaveAway$NCNotificationListView$layoutSubviews(_LOGOS_SELF_TYPE_NORMAL NCNotificationListView* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    NSDictionary *bundleDefaults = [[NSUserDefaults standardUserDefaults]persistentDomainForName:@"com.sangster.sbcustomizepreferences"];
    
    id hideNoti = [bundleDefaults valueForKey:@"hideNoti"];
    
    if ([hideNoti isEqual:@1]) {
        self.hidden = YES;
    }
    
    return _logos_orig$WaveAway$NCNotificationListView$layoutSubviews(self, _cmd);
}






static void _logos_method$WaveAway$NCNotificationListSectionRevealHintView$layoutSubviews(_LOGOS_SELF_TYPE_NORMAL NCNotificationListSectionRevealHintView* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    NSDictionary *bundleDefaults = [[NSUserDefaults standardUserDefaults]persistentDomainForName:@"com.sangster.sbcustomizepreferences"];
    
    id hideOldNoti = [bundleDefaults valueForKey:@"hideOldNoti"];
    UILabel *_revealHintTitle = [self valueForKey:@"_revealHintTitle"];
    if ([hideOldNoti isEqual:@1]) {
        [_revealHintTitle setHidden:YES];
    }
    
    return _logos_orig$WaveAway$NCNotificationListSectionRevealHintView$layoutSubviews(self, _cmd);
}






static void _logos_method$WaveAway$SBIconListPageControl$layoutSubviews(_LOGOS_SELF_TYPE_NORMAL SBIconListPageControl* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    NSDictionary *bundleDefaults = [[NSUserDefaults standardUserDefaults]persistentDomainForName:@"com.sangster.sbcustomizepreferences"];
    
    id hidePageDots = [bundleDefaults valueForKey:@"hidePageDots"];
    
    if ([hidePageDots isEqual:@1]) {
        [self setHidden:YES];
    }
    
    return _logos_orig$WaveAway$SBIconListPageControl$layoutSubviews(self, _cmd);
    
}





static void _logos_method$WaveAway$PSCapacityBarCell$layoutSubviews(_LOGOS_SELF_TYPE_NORMAL PSCapacityBarCell* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    NSDictionary *bundleDefaults = [[NSUserDefaults standardUserDefaults]persistentDomainForName:@"com.sangster.sbcustomizepreferences"];
    
    id spoofStorage = [bundleDefaults valueForKey:@"spoofStorage"];
    UILabel *_sizeLabel = [self valueForKey:@"_sizeLabel"];
    
    if ([spoofStorage isEqual:@1]) {
        [_sizeLabel setText:@"100TB free"];
    }
    
    return _logos_orig$WaveAway$PSCapacityBarCell$layoutSubviews(self, _cmd);

}





static void _logos_method$WaveAway$SBIconBadgeView$layoutSubviews(_LOGOS_SELF_TYPE_NORMAL SBIconBadgeView* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    NSDictionary *bundleDefaults = [[NSUserDefaults standardUserDefaults]persistentDomainForName:@"com.sangster.sbcustomizepreferences"];
    
    id hideBadges = [bundleDefaults valueForKey:@"hideBadges"];
    
    if ([hideBadges isEqual:@1]) {
        [self setHidden:YES];
    }
    
    return _logos_orig$WaveAway$SBIconBadgeView$layoutSubviews(self, _cmd);
}






static void _logos_method$WaveAway$SBIconBetaLabelAccessoryView$layoutSubviews(_LOGOS_SELF_TYPE_NORMAL SBIconBetaLabelAccessoryView* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    NSDictionary *bundleDefaults = [[NSUserDefaults standardUserDefaults]persistentDomainForName:@"com.sangster.sbcustomizepreferences"];
    
    id hideBetaDots = [bundleDefaults valueForKey:@"hideBetaDots"];
    
    if ([hideBetaDots isEqual:@1]) {
        [self setHidden:YES];
    }
    
    return _logos_orig$WaveAway$SBIconBetaLabelAccessoryView$layoutSubviews(self, _cmd);
}






static void _logos_method$WaveAway$SBIconRecentlyUpdatedLabelAccessoryView$layoutSubviews(_LOGOS_SELF_TYPE_NORMAL SBIconRecentlyUpdatedLabelAccessoryView* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    NSDictionary *bundleDefaults = [[NSUserDefaults standardUserDefaults]persistentDomainForName:@"com.sangster.sbcustomizepreferences"];
    
    id hideUpdateDots = [bundleDefaults valueForKey:@"hideUpdateDots"];
    
    if ([hideUpdateDots isEqual:@1]) {
        [self setHidden:YES];
    }
    
    return _logos_orig$WaveAway$SBIconRecentlyUpdatedLabelAccessoryView$layoutSubviews(self, _cmd);
}






static void _logos_method$WaveAway$SBIconImageView$layoutSubviews(_LOGOS_SELF_TYPE_NORMAL SBIconImageView* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    NSDictionary *bundleDefaults = [[NSUserDefaults standardUserDefaults]persistentDomainForName:@"com.sangster.sbcustomizepreferences"];
    
    id hideApps = [bundleDefaults valueForKey:@"hideApps"];
    
    if([hideApps isEqual:@1]) {
        [self setHidden:YES];
    }
    
    return _logos_orig$WaveAway$SBIconImageView$layoutSubviews(self, _cmd);
}





static void _logos_method$WaveAway$SBDockView$layoutSubviews(_LOGOS_SELF_TYPE_NORMAL SBDockView* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    
    NSDictionary *bundleDefaults = [[NSUserDefaults standardUserDefaults]persistentDomainForName:@"com.sangster.sbcustomizepreferences"];
    
    id hideDock = [bundleDefaults valueForKey:@"hideDock"];
    
    if([hideDock isEqual:@1]) {
        [self setHidden:YES];
    }
    
    
    UIView *_backgroundView = [self valueForKey:@"_backgroundView"];
    id hideDockBG = [bundleDefaults valueForKey:@"hideDockBG"];
    
    if([hideDockBG isEqual:@1]) {
        [_backgroundView setHidden:YES];
    }
    
    return _logos_orig$WaveAway$SBDockView$layoutSubviews(self, _cmd);
}






static void _logos_method$WaveAway$SBIconCloudLabelAccessoryView$layoutSubviews(_LOGOS_SELF_TYPE_NORMAL SBIconCloudLabelAccessoryView* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    NSDictionary *bundleDefaults = [[NSUserDefaults standardUserDefaults]persistentDomainForName:@"com.sangster.sbcustomizepreferences"];
    
    id hideCloudIcon = [bundleDefaults valueForKey:@"hideCloudIcon"];
    
    if([hideCloudIcon isEqual:@1]) {
        [self setHidden:YES];
    }
    
    return _logos_orig$WaveAway$SBIconCloudLabelAccessoryView$layoutSubviews(self, _cmd);
}





static void _logos_method$WaveAway$BSUICAPackageView$layoutSubviews(_LOGOS_SELF_TYPE_NORMAL BSUICAPackageView* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    NSDictionary *bundleDefaults = [[NSUserDefaults standardUserDefaults]persistentDomainForName:@"com.sangster.sbcustomizepreferences"];
    
    id hideFaceIDLock = [bundleDefaults valueForKey:@"hideFaceIDLock"];
    
    if([hideFaceIDLock isEqual:@1]) {
        [self setHidden:YES];
    }
    
    return  _logos_orig$WaveAway$BSUICAPackageView$layoutSubviews(self, _cmd);
}





static __attribute__((constructor)) void _logosLocalCtor_4d344eb2(int __unused argc, char __unused **argv, char __unused **envp) {
    
    HBPreferences *preferences = [[HBPreferences alloc] initWithIdentifier:@"com.sangster.sbcustomize"];
    
    [preferences registerBool:&removeLabels default:NO forKey:@"removeLabels"];















    {Class _logos_class$WaveAway$SBIconLegibilityLabelView = objc_getClass("SBIconLegibilityLabelView"); { MSHookMessageEx(_logos_class$WaveAway$SBIconLegibilityLabelView, @selector(layoutSubviews), (IMP)&_logos_method$WaveAway$SBIconLegibilityLabelView$layoutSubviews, (IMP*)&_logos_orig$WaveAway$SBIconLegibilityLabelView$layoutSubviews);}Class _logos_class$WaveAway$_UIStatusBar = objc_getClass("_UIStatusBar"); { MSHookMessageEx(_logos_class$WaveAway$_UIStatusBar, @selector(layoutSubviews), (IMP)&_logos_method$WaveAway$_UIStatusBar$layoutSubviews, (IMP*)&_logos_orig$WaveAway$_UIStatusBar$layoutSubviews);}Class _logos_class$WaveAway$_UIStatusBarStringView = objc_getClass("_UIStatusBarStringView"); { MSHookMessageEx(_logos_class$WaveAway$_UIStatusBarStringView, @selector(layoutSubviews), (IMP)&_logos_method$WaveAway$_UIStatusBarStringView$layoutSubviews, (IMP*)&_logos_orig$WaveAway$_UIStatusBarStringView$layoutSubviews);}{ MSHookMessageEx(_logos_class$WaveAway$_UIStatusBarStringView, @selector(setText:), (IMP)&_logos_method$WaveAway$_UIStatusBarStringView$setText$, (IMP*)&_logos_orig$WaveAway$_UIStatusBarStringView$setText$);}Class _logos_class$WaveAway$NCNotificationListView = objc_getClass("NCNotificationListView"); { MSHookMessageEx(_logos_class$WaveAway$NCNotificationListView, @selector(layoutSubviews), (IMP)&_logos_method$WaveAway$NCNotificationListView$layoutSubviews, (IMP*)&_logos_orig$WaveAway$NCNotificationListView$layoutSubviews);}Class _logos_class$WaveAway$NCNotificationListSectionRevealHintView = objc_getClass("NCNotificationListSectionRevealHintView"); { MSHookMessageEx(_logos_class$WaveAway$NCNotificationListSectionRevealHintView, @selector(layoutSubviews), (IMP)&_logos_method$WaveAway$NCNotificationListSectionRevealHintView$layoutSubviews, (IMP*)&_logos_orig$WaveAway$NCNotificationListSectionRevealHintView$layoutSubviews);}Class _logos_class$WaveAway$SBIconListPageControl = objc_getClass("SBIconListPageControl"); { MSHookMessageEx(_logos_class$WaveAway$SBIconListPageControl, @selector(layoutSubviews), (IMP)&_logos_method$WaveAway$SBIconListPageControl$layoutSubviews, (IMP*)&_logos_orig$WaveAway$SBIconListPageControl$layoutSubviews);}Class _logos_class$WaveAway$PSCapacityBarCell = objc_getClass("PSCapacityBarCell"); { MSHookMessageEx(_logos_class$WaveAway$PSCapacityBarCell, @selector(layoutSubviews), (IMP)&_logos_method$WaveAway$PSCapacityBarCell$layoutSubviews, (IMP*)&_logos_orig$WaveAway$PSCapacityBarCell$layoutSubviews);}Class _logos_class$WaveAway$SBIconBadgeView = objc_getClass("SBIconBadgeView"); { MSHookMessageEx(_logos_class$WaveAway$SBIconBadgeView, @selector(layoutSubviews), (IMP)&_logos_method$WaveAway$SBIconBadgeView$layoutSubviews, (IMP*)&_logos_orig$WaveAway$SBIconBadgeView$layoutSubviews);}Class _logos_class$WaveAway$SBIconBetaLabelAccessoryView = objc_getClass("SBIconBetaLabelAccessoryView"); { MSHookMessageEx(_logos_class$WaveAway$SBIconBetaLabelAccessoryView, @selector(layoutSubviews), (IMP)&_logos_method$WaveAway$SBIconBetaLabelAccessoryView$layoutSubviews, (IMP*)&_logos_orig$WaveAway$SBIconBetaLabelAccessoryView$layoutSubviews);}Class _logos_class$WaveAway$SBIconRecentlyUpdatedLabelAccessoryView = objc_getClass("SBIconRecentlyUpdatedLabelAccessoryView"); { MSHookMessageEx(_logos_class$WaveAway$SBIconRecentlyUpdatedLabelAccessoryView, @selector(layoutSubviews), (IMP)&_logos_method$WaveAway$SBIconRecentlyUpdatedLabelAccessoryView$layoutSubviews, (IMP*)&_logos_orig$WaveAway$SBIconRecentlyUpdatedLabelAccessoryView$layoutSubviews);}Class _logos_class$WaveAway$SBIconImageView = objc_getClass("SBIconImageView"); { MSHookMessageEx(_logos_class$WaveAway$SBIconImageView, @selector(layoutSubviews), (IMP)&_logos_method$WaveAway$SBIconImageView$layoutSubviews, (IMP*)&_logos_orig$WaveAway$SBIconImageView$layoutSubviews);}Class _logos_class$WaveAway$SBDockView = objc_getClass("SBDockView"); { MSHookMessageEx(_logos_class$WaveAway$SBDockView, @selector(layoutSubviews), (IMP)&_logos_method$WaveAway$SBDockView$layoutSubviews, (IMP*)&_logos_orig$WaveAway$SBDockView$layoutSubviews);}Class _logos_class$WaveAway$SBIconCloudLabelAccessoryView = objc_getClass("SBIconCloudLabelAccessoryView"); { MSHookMessageEx(_logos_class$WaveAway$SBIconCloudLabelAccessoryView, @selector(layoutSubviews), (IMP)&_logos_method$WaveAway$SBIconCloudLabelAccessoryView$layoutSubviews, (IMP*)&_logos_orig$WaveAway$SBIconCloudLabelAccessoryView$layoutSubviews);}Class _logos_class$WaveAway$BSUICAPackageView = objc_getClass("BSUICAPackageView"); { MSHookMessageEx(_logos_class$WaveAway$BSUICAPackageView, @selector(layoutSubviews), (IMP)&_logos_method$WaveAway$BSUICAPackageView$layoutSubviews, (IMP*)&_logos_orig$WaveAway$BSUICAPackageView$layoutSubviews);}} }
