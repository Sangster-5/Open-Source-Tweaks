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
static BOOL hideFolderText;
static BOOL enableFolderColour;
static BOOL hideFolderBackground;

//Interfaces

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
@interface SBFolderTitleTextField : UIView
@end
@interface SBFolderBackgroundView : UIView
@end
@interface _UINavigationBarLargeTitleView : UIView
@end

// End Interfaces

%group WaveAway

//Hides Icon Labels
%hook SBIconLegibilityLabelView
-(void)layoutSubviews {
    if (removeLabels) {
        [self removeFromSuperview];
        
    }
    
    return %orig;
}
%end

// Hides  statusbar // Done
%hook _UIStatusBar

-(void)didMoveToWindow {
    if (removeStatusBar) {
        [self setHidden:YES];
    }
    
    return %orig;
}

%end

//Changes Statusbar text
%hook _UIStatusBarStringView

-(void)layoutSubviews {
    NSDictionary *bundleDefaults = [[NSUserDefaults standardUserDefaults]persistentDomainForName:@"com.sangster.sbcustomize"];
    NSString *batteryText = [bundleDefaults valueForKey:@"batteryText"];
    id enableCustomBatteryText = [bundleDefaults valueForKey:@"enableCustomBatteryText"];
        
    // Change Carrier
    NSString *carrierText = [bundleDefaults valueForKey:@"carrierText"];
    id enableCustomCarrier = [bundleDefaults valueForKey:@"enableCustomCarrier"];
        
    if([enableCustomCarrier isEqual:@1] && ![carrierText isEqual:@""]) {
        if(![self.text containsString:@"%"] && ![self.text containsString:batteryText]) {
                
            [self setText:carrierText];
        }
    }
    
    %orig;
    
    // Battery Text
    if([enableCustomBatteryText isEqual:@1] && ![batteryText isEqual:@""]) {
        if([self.text containsString:@"%"]) {
                
            [self setText:batteryText];
        }
    }
    
    %orig;
}

-(void)setText:(id)arg1 {
    %orig;
}

%end

//Hides Notifications // Done
%hook NCNotificationListView

-(void)didMoveToWindow {
    if (hideNoti) {
        [self setHidden:YES];
    }
    
    return %orig;
}

%end

// Hides No Older Notifications // Done
%hook NCNotificationListSectionRevealHintView

-(void)didMoveToWindow {
    UILabel *_revealHintTitle = [self valueForKey:@"_revealHintTitle"];
    if (hideOldNoti) {
        [_revealHintTitle setHidden:YES];
    }
    
    return %orig;
}

%end

// Hide Page Dots
%hook SBIconListPageControl

-(void)layoutSubviews {
    if (hidePageDots) {
        [self setHidden:YES];
    }
    
    return %orig;
    
}
%end

//Spoofs Storage
%hook PSCapacityBarCell

-(void)layoutSubviews {
    UILabel *_sizeLabel = [self valueForKey:@"_sizeLabel"];
    
    if (spoofStorage) {
        [_sizeLabel setText:@"100TB free"];
    }
    
    return %orig;

}
%end

// Removes App Badges
%hook SBIconBadgeView

-(void)layoutSubviews {
    if (hideBadges) {
        [self setHidden:YES];
    }
    
    return %orig;
}

%end

// Hides Beta Dots
%hook SBIconBetaLabelAccessoryView

-(void)layoutSubviews {
    if (hideBetaDots) {
        [self setHidden:YES];
    }
    
    return %orig;
}

%end

// Hides Update Dots
%hook SBIconRecentlyUpdatedLabelAccessoryView

-(void)layoutSubviews {
    if (hideUpdateDots) {
        [self setHidden:YES];
    }
    
    return %orig;
}

%end

// Hide Apps they are just invisible
%hook SBIconImageView

-(void)layoutSubviews {
    if(hideApps) {
        [self setHidden:YES];
    }
    
    return %orig;
}

%end

%hook SBDockView

-(void)layoutSubviews {
    // Hide Dock
    if(hideDock) {
        [self setHidden:YES];
    }
    
    // Hide Dock Background
    UIView *_backgroundView = [self valueForKey:@"_backgroundView"];
    
    if(hideDockBG) {
        [_backgroundView setHidden:YES];
    }
    
    // Colour Dock
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
    
    %orig;
}

%end

// Remove Cloud Icon
%hook SBIconCloudLabelAccessoryView

-(void)layoutSubviews {
    if(hideCloudIcon) {
        [self setHidden:YES];
    }
    
    return %orig;
}

%end

// Removes Face ID Lock // Done
%hook BSUICAPackageView

-(void)didMoveToWindow {
    if(hideFaceIDLock) {
        [self setHidden:YES];
    }
    
    return  %orig;
}
%end

%hook SBFolderTitleTextField

-(void)layoutSubviews {
    if(hideFolderText) {
        [self setHidden:YES];
    }
    
    return %orig;
}

%end

%hook SBFolderBackgroundView

-(void)layoutSubviews {
    UIView *_blurView = [self valueForKey:@"_blurView"];
    
    NSString* folderColour = NULL;
    NSDictionary* preferencesDictionary = [NSDictionary dictionaryWithContentsOfFile: @"/var/mobile/Library/Preferences/com.sangster.sbcustomize.plist"];
    if(preferencesDictionary)
    {
        folderColour = [preferencesDictionary objectForKey: @"folderColour"];
    }
    
    UIColor* selectedFolderColour = [SparkColourPickerUtils colourWithString: folderColour withFallback: @"#ffffff"];
    
    if(enableFolderColour) {
        _blurView.backgroundColor = selectedFolderColour;
    }
    
    if(hideFolderBackground) {
        [_blurView setHidden:YES];
    }
    
    return %orig;
}

%end

%end
%ctor {
    
    HBPreferences *preferences = [[HBPreferences alloc] initWithIdentifier:@"com.sangster.sbcustomize"];
    
    [preferences registerBool:&hideFolderBackground default:NO forKey:@"hideFolderBackground"];
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
    [preferences registerBool:&hideFolderText default:NO forKey:@"hideFolderText"];
    [preferences registerBool:&enableFolderColour default:NO forKey:@"enableFolderColour"];
    %init(WaveAway)
}
