#line 1 "Tweak.x"
#import <UIKit/UIKit.h>
#import <Cephei/HBPreferences.h>
#import "SparkColourPickerUtils.h"

static BOOL removeLabels;
static BOOL removeStatusBar;
static BOOL hideNoti;
static BOOL hideOldNoti;
static BOOL hidePageDots;
static BOOL spoofStorage;
static BOOL hideBadges;
static BOOL hideBetaDots;
static BOOL hideUpdateDots;
static BOOL hideApps;
static BOOL hideDock;
static BOOL hideDockBG;
static BOOL hideCloudIcon;
static BOOL hideFaceIDLock;
static BOOL enableDockColour;



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

@class SBIconImageView; @class BSUICAPackageView; @class SBIconBadgeView; @class SBIconRecentlyUpdatedLabelAccessoryView; @class SBIconBetaLabelAccessoryView; @class SBDockView; @class SBIconCloudLabelAccessoryView; @class NCNotificationListView; @class SBIconLegibilityLabelView; @class NCNotificationListSectionRevealHintView; @class _UIStatusBarStringView; @class PSCapacityBarCell; @class SBIconListPageControl; @class _UIStatusBar; 


#line 54 "Tweak.x"
static void (*_logos_orig$WaveAway$SBIconLegibilityLabelView$layoutSubviews)(_LOGOS_SELF_TYPE_NORMAL SBIconLegibilityLabelView* _LOGOS_SELF_CONST, SEL); static void _logos_method$WaveAway$SBIconLegibilityLabelView$layoutSubviews(_LOGOS_SELF_TYPE_NORMAL SBIconLegibilityLabelView* _LOGOS_SELF_CONST, SEL); static void (*_logos_orig$WaveAway$_UIStatusBar$didMoveToWindow)(_LOGOS_SELF_TYPE_NORMAL _UIStatusBar* _LOGOS_SELF_CONST, SEL); static void _logos_method$WaveAway$_UIStatusBar$didMoveToWindow(_LOGOS_SELF_TYPE_NORMAL _UIStatusBar* _LOGOS_SELF_CONST, SEL); static void (*_logos_orig$WaveAway$_UIStatusBarStringView$layoutSubviews)(_LOGOS_SELF_TYPE_NORMAL _UIStatusBarStringView* _LOGOS_SELF_CONST, SEL); static void _logos_method$WaveAway$_UIStatusBarStringView$layoutSubviews(_LOGOS_SELF_TYPE_NORMAL _UIStatusBarStringView* _LOGOS_SELF_CONST, SEL); static void (*_logos_orig$WaveAway$_UIStatusBarStringView$setText$)(_LOGOS_SELF_TYPE_NORMAL _UIStatusBarStringView* _LOGOS_SELF_CONST, SEL, id); static void _logos_method$WaveAway$_UIStatusBarStringView$setText$(_LOGOS_SELF_TYPE_NORMAL _UIStatusBarStringView* _LOGOS_SELF_CONST, SEL, id); static void (*_logos_orig$WaveAway$NCNotificationListView$didMoveToWindow)(_LOGOS_SELF_TYPE_NORMAL NCNotificationListView* _LOGOS_SELF_CONST, SEL); static void _logos_method$WaveAway$NCNotificationListView$didMoveToWindow(_LOGOS_SELF_TYPE_NORMAL NCNotificationListView* _LOGOS_SELF_CONST, SEL); static void (*_logos_orig$WaveAway$NCNotificationListSectionRevealHintView$didMoveToWindow)(_LOGOS_SELF_TYPE_NORMAL NCNotificationListSectionRevealHintView* _LOGOS_SELF_CONST, SEL); static void _logos_method$WaveAway$NCNotificationListSectionRevealHintView$didMoveToWindow(_LOGOS_SELF_TYPE_NORMAL NCNotificationListSectionRevealHintView* _LOGOS_SELF_CONST, SEL); static void (*_logos_orig$WaveAway$SBIconListPageControl$layoutSubviews)(_LOGOS_SELF_TYPE_NORMAL SBIconListPageControl* _LOGOS_SELF_CONST, SEL); static void _logos_method$WaveAway$SBIconListPageControl$layoutSubviews(_LOGOS_SELF_TYPE_NORMAL SBIconListPageControl* _LOGOS_SELF_CONST, SEL); static void (*_logos_orig$WaveAway$PSCapacityBarCell$layoutSubviews)(_LOGOS_SELF_TYPE_NORMAL PSCapacityBarCell* _LOGOS_SELF_CONST, SEL); static void _logos_method$WaveAway$PSCapacityBarCell$layoutSubviews(_LOGOS_SELF_TYPE_NORMAL PSCapacityBarCell* _LOGOS_SELF_CONST, SEL); static void (*_logos_orig$WaveAway$SBIconBadgeView$layoutSubviews)(_LOGOS_SELF_TYPE_NORMAL SBIconBadgeView* _LOGOS_SELF_CONST, SEL); static void _logos_method$WaveAway$SBIconBadgeView$layoutSubviews(_LOGOS_SELF_TYPE_NORMAL SBIconBadgeView* _LOGOS_SELF_CONST, SEL); static void (*_logos_orig$WaveAway$SBIconBetaLabelAccessoryView$layoutSubviews)(_LOGOS_SELF_TYPE_NORMAL SBIconBetaLabelAccessoryView* _LOGOS_SELF_CONST, SEL); static void _logos_method$WaveAway$SBIconBetaLabelAccessoryView$layoutSubviews(_LOGOS_SELF_TYPE_NORMAL SBIconBetaLabelAccessoryView* _LOGOS_SELF_CONST, SEL); static void (*_logos_orig$WaveAway$SBIconRecentlyUpdatedLabelAccessoryView$layoutSubviews)(_LOGOS_SELF_TYPE_NORMAL SBIconRecentlyUpdatedLabelAccessoryView* _LOGOS_SELF_CONST, SEL); static void _logos_method$WaveAway$SBIconRecentlyUpdatedLabelAccessoryView$layoutSubviews(_LOGOS_SELF_TYPE_NORMAL SBIconRecentlyUpdatedLabelAccessoryView* _LOGOS_SELF_CONST, SEL); static void (*_logos_orig$WaveAway$SBIconImageView$layoutSubviews)(_LOGOS_SELF_TYPE_NORMAL SBIconImageView* _LOGOS_SELF_CONST, SEL); static void _logos_method$WaveAway$SBIconImageView$layoutSubviews(_LOGOS_SELF_TYPE_NORMAL SBIconImageView* _LOGOS_SELF_CONST, SEL); static void (*_logos_orig$WaveAway$SBDockView$layoutSubviews)(_LOGOS_SELF_TYPE_NORMAL SBDockView* _LOGOS_SELF_CONST, SEL); static void _logos_method$WaveAway$SBDockView$layoutSubviews(_LOGOS_SELF_TYPE_NORMAL SBDockView* _LOGOS_SELF_CONST, SEL); static void (*_logos_orig$WaveAway$SBIconCloudLabelAccessoryView$layoutSubviews)(_LOGOS_SELF_TYPE_NORMAL SBIconCloudLabelAccessoryView* _LOGOS_SELF_CONST, SEL); static void _logos_method$WaveAway$SBIconCloudLabelAccessoryView$layoutSubviews(_LOGOS_SELF_TYPE_NORMAL SBIconCloudLabelAccessoryView* _LOGOS_SELF_CONST, SEL); static void (*_logos_orig$WaveAway$BSUICAPackageView$didMoveToWindow)(_LOGOS_SELF_TYPE_NORMAL BSUICAPackageView* _LOGOS_SELF_CONST, SEL); static void _logos_method$WaveAway$BSUICAPackageView$didMoveToWindow(_LOGOS_SELF_TYPE_NORMAL BSUICAPackageView* _LOGOS_SELF_CONST, SEL); 



static void _logos_method$WaveAway$SBIconLegibilityLabelView$layoutSubviews(_LOGOS_SELF_TYPE_NORMAL SBIconLegibilityLabelView* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    if (removeLabels) {
        [self removeFromSuperview];
        
    }
    
    return _logos_orig$WaveAway$SBIconLegibilityLabelView$layoutSubviews(self, _cmd);
}





static void _logos_method$WaveAway$_UIStatusBar$didMoveToWindow(_LOGOS_SELF_TYPE_NORMAL _UIStatusBar* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    if (removeStatusBar) {
        [self setHidden:YES];
    }
    
    return _logos_orig$WaveAway$_UIStatusBar$didMoveToWindow(self, _cmd);
}






static void _logos_method$WaveAway$_UIStatusBarStringView$layoutSubviews(_LOGOS_SELF_TYPE_NORMAL _UIStatusBarStringView* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    NSDictionary *bundleDefaults = [[NSUserDefaults standardUserDefaults]persistentDomainForName:@"com.sangster.sbcustomize"];
        
    
    NSString *carrierText = [bundleDefaults valueForKey:@"carrierText"];
    id enableCustomCarrier = [bundleDefaults valueForKey:@"enableCustomCarrier"];
        
    if([enableCustomCarrier isEqual:@1] && ![carrierText isEqual:@""]) {
        if(![self.text containsString:@"%"]) {
                
            [self setText:carrierText];
        }
    }
        
    return _logos_orig$WaveAway$_UIStatusBarStringView$layoutSubviews(self, _cmd);
}

static void _logos_method$WaveAway$_UIStatusBarStringView$setText$(_LOGOS_SELF_TYPE_NORMAL _UIStatusBarStringView* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, id arg1) {
    _logos_orig$WaveAway$_UIStatusBarStringView$setText$(self, _cmd, arg1);
}






static void _logos_method$WaveAway$NCNotificationListView$didMoveToWindow(_LOGOS_SELF_TYPE_NORMAL NCNotificationListView* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    if (hideNoti) {
        [self setHidden:YES];
    }
    
    return _logos_orig$WaveAway$NCNotificationListView$didMoveToWindow(self, _cmd);
}






static void _logos_method$WaveAway$NCNotificationListSectionRevealHintView$didMoveToWindow(_LOGOS_SELF_TYPE_NORMAL NCNotificationListSectionRevealHintView* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    UILabel *_revealHintTitle = [self valueForKey:@"_revealHintTitle"];
    if (hideOldNoti) {
        [_revealHintTitle setHidden:YES];
    }
    
    return _logos_orig$WaveAway$NCNotificationListSectionRevealHintView$didMoveToWindow(self, _cmd);
}






static void _logos_method$WaveAway$SBIconListPageControl$layoutSubviews(_LOGOS_SELF_TYPE_NORMAL SBIconListPageControl* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    if (hidePageDots) {
        [self setHidden:YES];
    }
    
    return _logos_orig$WaveAway$SBIconListPageControl$layoutSubviews(self, _cmd);
    
}





static void _logos_method$WaveAway$PSCapacityBarCell$layoutSubviews(_LOGOS_SELF_TYPE_NORMAL PSCapacityBarCell* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    UILabel *_sizeLabel = [self valueForKey:@"_sizeLabel"];
    
    if (spoofStorage) {
        [_sizeLabel setText:@"100TB free"];
    }
    
    return _logos_orig$WaveAway$PSCapacityBarCell$layoutSubviews(self, _cmd);

}





static void _logos_method$WaveAway$SBIconBadgeView$layoutSubviews(_LOGOS_SELF_TYPE_NORMAL SBIconBadgeView* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    if (hideBadges) {
        [self setHidden:YES];
    }
    
    return _logos_orig$WaveAway$SBIconBadgeView$layoutSubviews(self, _cmd);
}






static void _logos_method$WaveAway$SBIconBetaLabelAccessoryView$layoutSubviews(_LOGOS_SELF_TYPE_NORMAL SBIconBetaLabelAccessoryView* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    if (hideBetaDots) {
        [self setHidden:YES];
    }
    
    return _logos_orig$WaveAway$SBIconBetaLabelAccessoryView$layoutSubviews(self, _cmd);
}






static void _logos_method$WaveAway$SBIconRecentlyUpdatedLabelAccessoryView$layoutSubviews(_LOGOS_SELF_TYPE_NORMAL SBIconRecentlyUpdatedLabelAccessoryView* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    if (hideUpdateDots) {
        [self setHidden:YES];
    }
    
    return _logos_orig$WaveAway$SBIconRecentlyUpdatedLabelAccessoryView$layoutSubviews(self, _cmd);
}






static void _logos_method$WaveAway$SBIconImageView$layoutSubviews(_LOGOS_SELF_TYPE_NORMAL SBIconImageView* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    if(hideApps) {
        [self setHidden:YES];
    }
    
    return _logos_orig$WaveAway$SBIconImageView$layoutSubviews(self, _cmd);
}





static void _logos_method$WaveAway$SBDockView$layoutSubviews(_LOGOS_SELF_TYPE_NORMAL SBDockView* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    
    if(hideDock) {
        [self setHidden:YES];
    }
    
    
    UIView *_backgroundView = [self valueForKey:@"_backgroundView"];
    
    if(hideDockBG) {
        [_backgroundView setHidden:YES];
    }
    
    
    NSString* dockColour = NULL;
    NSDictionary* preferencesDictionary = [NSDictionary dictionaryWithContentsOfFile: @"/var/mobile/Library/Preferences/com.sangster.sbcustomize.plist"];
    if(preferencesDictionary)
    {
        dockColour = [preferencesDictionary objectForKey: @"dockColour"];
    }
    
    UIColor* selectedDockColour = [SparkColourPickerUtils colourWithString: dockColour withFallback: @"#ffffff"];
    
    if(enableDockColour) {
        _backgroundView.backgroundColor = selectedDockColour;
    }
    
    return _logos_orig$WaveAway$SBDockView$layoutSubviews(self, _cmd);
}






static void _logos_method$WaveAway$SBIconCloudLabelAccessoryView$layoutSubviews(_LOGOS_SELF_TYPE_NORMAL SBIconCloudLabelAccessoryView* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    if(hideCloudIcon) {
        [self setHidden:YES];
    }
    
    return _logos_orig$WaveAway$SBIconCloudLabelAccessoryView$layoutSubviews(self, _cmd);
}






static void _logos_method$WaveAway$BSUICAPackageView$didMoveToWindow(_LOGOS_SELF_TYPE_NORMAL BSUICAPackageView* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    if(hideFaceIDLock) {
        [self setHidden:YES];
    }
    
    return  _logos_orig$WaveAway$BSUICAPackageView$didMoveToWindow(self, _cmd);
}



static __attribute__((constructor)) void _logosLocalCtor_a9eef49c(int __unused argc, char __unused **argv, char __unused **envp) {
    
    HBPreferences *preferences = [[HBPreferences alloc] initWithIdentifier:@"com.sangster.sbcustomize"];
    
    [preferences registerBool:&removeLabels default:NO forKey:@"removeLabels"];
    [preferences registerBool:&removeStatusBar default:NO forKey:@"removeStatusBar"];
    [preferences registerBool:&hideOldNoti default:NO forKey:@"hideOldNoti"];
    [preferences registerBool:&hideNoti default:NO forKey:@"hideNoti"];
    [preferences registerBool:&hidePageDots default:NO forKey:@"hidePageDots"];
    [preferences registerBool:&spoofStorage default:NO forKey:@"spoofStorage"];
    [preferences registerBool:&hideBadges default:NO forKey:@"hideBadges"];
    [preferences registerBool:&hideBetaDots default:NO forKey:@"hideBetaDots"];
    [preferences registerBool:&hideUpdateDots default:NO forKey:@"hideUpdateDots"];
    [preferences registerBool:&hideApps default:NO forKey:@"hideApps"];
    [preferences registerBool:&hideDock default:NO forKey:@"hideDock"];
    [preferences registerBool:&hideDockBG default:NO forKey:@"hideDockBG"];
    [preferences registerBool:&hideCloudIcon default:NO forKey:@"hideCloudIcon"];
    [preferences registerBool:&hideFaceIDLock default:NO forKey:@"hideFaceIDLock"];
    [preferences registerBool:&enableDockColour default:NO forKey:@"enableDockColour"];


    {Class _logos_class$WaveAway$SBIconLegibilityLabelView = objc_getClass("SBIconLegibilityLabelView"); { MSHookMessageEx(_logos_class$WaveAway$SBIconLegibilityLabelView, @selector(layoutSubviews), (IMP)&_logos_method$WaveAway$SBIconLegibilityLabelView$layoutSubviews, (IMP*)&_logos_orig$WaveAway$SBIconLegibilityLabelView$layoutSubviews);}Class _logos_class$WaveAway$_UIStatusBar = objc_getClass("_UIStatusBar"); { MSHookMessageEx(_logos_class$WaveAway$_UIStatusBar, @selector(didMoveToWindow), (IMP)&_logos_method$WaveAway$_UIStatusBar$didMoveToWindow, (IMP*)&_logos_orig$WaveAway$_UIStatusBar$didMoveToWindow);}Class _logos_class$WaveAway$_UIStatusBarStringView = objc_getClass("_UIStatusBarStringView"); { MSHookMessageEx(_logos_class$WaveAway$_UIStatusBarStringView, @selector(layoutSubviews), (IMP)&_logos_method$WaveAway$_UIStatusBarStringView$layoutSubviews, (IMP*)&_logos_orig$WaveAway$_UIStatusBarStringView$layoutSubviews);}{ MSHookMessageEx(_logos_class$WaveAway$_UIStatusBarStringView, @selector(setText:), (IMP)&_logos_method$WaveAway$_UIStatusBarStringView$setText$, (IMP*)&_logos_orig$WaveAway$_UIStatusBarStringView$setText$);}Class _logos_class$WaveAway$NCNotificationListView = objc_getClass("NCNotificationListView"); { MSHookMessageEx(_logos_class$WaveAway$NCNotificationListView, @selector(didMoveToWindow), (IMP)&_logos_method$WaveAway$NCNotificationListView$didMoveToWindow, (IMP*)&_logos_orig$WaveAway$NCNotificationListView$didMoveToWindow);}Class _logos_class$WaveAway$NCNotificationListSectionRevealHintView = objc_getClass("NCNotificationListSectionRevealHintView"); { MSHookMessageEx(_logos_class$WaveAway$NCNotificationListSectionRevealHintView, @selector(didMoveToWindow), (IMP)&_logos_method$WaveAway$NCNotificationListSectionRevealHintView$didMoveToWindow, (IMP*)&_logos_orig$WaveAway$NCNotificationListSectionRevealHintView$didMoveToWindow);}Class _logos_class$WaveAway$SBIconListPageControl = objc_getClass("SBIconListPageControl"); { MSHookMessageEx(_logos_class$WaveAway$SBIconListPageControl, @selector(layoutSubviews), (IMP)&_logos_method$WaveAway$SBIconListPageControl$layoutSubviews, (IMP*)&_logos_orig$WaveAway$SBIconListPageControl$layoutSubviews);}Class _logos_class$WaveAway$PSCapacityBarCell = objc_getClass("PSCapacityBarCell"); { MSHookMessageEx(_logos_class$WaveAway$PSCapacityBarCell, @selector(layoutSubviews), (IMP)&_logos_method$WaveAway$PSCapacityBarCell$layoutSubviews, (IMP*)&_logos_orig$WaveAway$PSCapacityBarCell$layoutSubviews);}Class _logos_class$WaveAway$SBIconBadgeView = objc_getClass("SBIconBadgeView"); { MSHookMessageEx(_logos_class$WaveAway$SBIconBadgeView, @selector(layoutSubviews), (IMP)&_logos_method$WaveAway$SBIconBadgeView$layoutSubviews, (IMP*)&_logos_orig$WaveAway$SBIconBadgeView$layoutSubviews);}Class _logos_class$WaveAway$SBIconBetaLabelAccessoryView = objc_getClass("SBIconBetaLabelAccessoryView"); { MSHookMessageEx(_logos_class$WaveAway$SBIconBetaLabelAccessoryView, @selector(layoutSubviews), (IMP)&_logos_method$WaveAway$SBIconBetaLabelAccessoryView$layoutSubviews, (IMP*)&_logos_orig$WaveAway$SBIconBetaLabelAccessoryView$layoutSubviews);}Class _logos_class$WaveAway$SBIconRecentlyUpdatedLabelAccessoryView = objc_getClass("SBIconRecentlyUpdatedLabelAccessoryView"); { MSHookMessageEx(_logos_class$WaveAway$SBIconRecentlyUpdatedLabelAccessoryView, @selector(layoutSubviews), (IMP)&_logos_method$WaveAway$SBIconRecentlyUpdatedLabelAccessoryView$layoutSubviews, (IMP*)&_logos_orig$WaveAway$SBIconRecentlyUpdatedLabelAccessoryView$layoutSubviews);}Class _logos_class$WaveAway$SBIconImageView = objc_getClass("SBIconImageView"); { MSHookMessageEx(_logos_class$WaveAway$SBIconImageView, @selector(layoutSubviews), (IMP)&_logos_method$WaveAway$SBIconImageView$layoutSubviews, (IMP*)&_logos_orig$WaveAway$SBIconImageView$layoutSubviews);}Class _logos_class$WaveAway$SBDockView = objc_getClass("SBDockView"); { MSHookMessageEx(_logos_class$WaveAway$SBDockView, @selector(layoutSubviews), (IMP)&_logos_method$WaveAway$SBDockView$layoutSubviews, (IMP*)&_logos_orig$WaveAway$SBDockView$layoutSubviews);}Class _logos_class$WaveAway$SBIconCloudLabelAccessoryView = objc_getClass("SBIconCloudLabelAccessoryView"); { MSHookMessageEx(_logos_class$WaveAway$SBIconCloudLabelAccessoryView, @selector(layoutSubviews), (IMP)&_logos_method$WaveAway$SBIconCloudLabelAccessoryView$layoutSubviews, (IMP*)&_logos_orig$WaveAway$SBIconCloudLabelAccessoryView$layoutSubviews);}Class _logos_class$WaveAway$BSUICAPackageView = objc_getClass("BSUICAPackageView"); { MSHookMessageEx(_logos_class$WaveAway$BSUICAPackageView, @selector(didMoveToWindow), (IMP)&_logos_method$WaveAway$BSUICAPackageView$didMoveToWindow, (IMP*)&_logos_orig$WaveAway$BSUICAPackageView$didMoveToWindow);}} }
