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
static BOOL enableCustomTimeText;
static BOOL enableCustomCarrier;
static BOOL enableCustomBatteryText;
static BOOL enableCustomCarrierStatusText;
static BOOL hideSwipeToUnlock;
static BOOL hideFolderIconBackground;
static BOOL hideLSShortCuts;
static BOOL squareApps;
static BOOL hideHomebar;
static double homebarHeight;
static BOOL enableHomebarHeight;
static double homebarRadius;
static BOOL enableHomebarRadius;
static double homebarWidth;
static BOOL enableHomebarWidth;
static BOOL enableHomebarColour;

//Interfaces

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
-(void)setShowsSquareCorners;
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
@interface CSFixedFooterView : UIView
@end
@interface SBFolderIconImageView : UIView
@end
@interface CSQuickActionsButton : UIView
@end
@interface SBIconView : UIView
-(void)setLabelHidden;
@end
@interface MTLumaDodgePillSettings : NSObject
-(void)setHeight;
-(void)setCornerRadius;
-(void)setMinWidth;
@end
@interface MTStaticColorPillView : UIView
-(void)setPillColor;
@end

// End Interfaces

%group WaveAway

%hook SBIconView
-(void)setLabelHidden:(BOOL)arg1 {
    %orig;
    if(removeLabels)
        %orig(YES);
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
    
    NSString *carrierText = [bundleDefaults valueForKey:@"carrierText"];
    
    NSString *timeText = [bundleDefaults valueForKey:@"timeText"];
    
    NSString *carrierStatusText = [bundleDefaults valueForKey:@"carrierStatusText"];
        
    if(enableCustomCarrier && ![self.text containsString:@"%"] && ![self.text containsString:@":"] && ![self.text containsString:@"LTE"] && ![self.text containsString:@"3G"] && ![self.text containsString:@"5G"] && ![self.text containsString:@"4G"] && (!batteryText || ![self.text containsString:batteryText]) && (!timeText || ![self.text containsString:timeText]) && (!carrierStatusText || ![self.text containsString:carrierStatusText])) [self setText:carrierText];
    
    else if(enableCustomBatteryText && [self.text containsString:@"%"] && ![self.text containsString:@":"] && (!carrierText || ![self.text containsString:carrierText]) && (!timeText || ![self.text containsString:timeText]) && (!carrierStatusText || ![self.text containsString:carrierStatusText])) [self setText:batteryText];
    
    else if(enableCustomTimeText && [self.text containsString:@":"] && ![self.text containsString:@"%"] && (!carrierText || ![self.text containsString:carrierText]) && (!batteryText || ![self.text containsString:batteryText]) && (!carrierStatusText || ![self.text containsString:carrierStatusText])) [self setText:timeText];
    
    else if(enableCustomCarrierStatusText && ([self.text containsString:@"LTE"] || [self.text containsString:@"5G"] || [self.text containsString:@"5Ge"] || [self.text containsString:@"4G"] || [self.text containsString:@"3G"] || [self.text containsString:@"SOS"] || [self.text isEqualToString:carrierStatusText])) [self setText:carrierStatusText];
    
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

-(void)didMoveToWindow {
    if (hidePageDots) {
        [self setHidden:YES];
    }
    
    return %orig;
    
}
%end

%hook PSCapacityBarCell
-(void)layoutSubviews {
    //Spoofs Storage
    UILabel *_sizeLabel = [self valueForKey:@"_sizeLabel"];
    
    if (spoofStorage) {
        [_sizeLabel setText:@"100TB free"];
    }
    
    return %orig;

}
%end

%hook SBIconBadgeView
-(void)layoutSubviews {
    // Removes App Badges
    if (hideBadges) {
        [self setHidden:YES];
    }
    
    return %orig;
}

%end

%hook SBIconBetaLabelAccessoryView
-(void)layoutSubviews {
    // Hides Beta Dots
    if (hideBetaDots) {
        [self setHidden:YES];
    }
    
    return %orig;
}

%end

%hook SBIconRecentlyUpdatedLabelAccessoryView

-(void)layoutSubviews {
    // Hides Update Dots
    if (hideUpdateDots) {
        [self setHidden:YES];
    }
    
    return %orig;
}

%end


%hook SBIconImageView

// Square Apps
-(void)setShowsSquareCorners:(BOOL)arg1 {
    %orig;
    if(squareApps)
        %orig(YES);
}

-(void)layoutSubviews {
    
    // Hide Apps (they are just invisible)
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

%hook SBIconCloudLabelAccessoryView

-(void)didMoveToWindow {
    // Remove Cloud Icon
    if(hideCloudIcon) {
        [self setHidden:YES];
    }
    
    return %orig;
}

%end

%hook BSUICAPackageView

-(void)didMoveToWindow {
    // Hides Face ID Lock
    if(hideFaceIDLock) {
        [self setHidden:YES];
    }
    
    return  %orig;
}
%end


%hook SBFolderTitleTextField

-(void)layoutSubviews {
    
    //Hide Inner Folder text
    if(hideFolderText) {
        [self setHidden:YES];
    }
    
    return %orig;
}

%end

%hook SBFolderBackgroundView

-(void)layoutSubviews {
    UIView *_blurView = [self valueForKey:@"_blurView"];
    
    // Colour Folder Background
    NSString *folderColour = NULL;
    NSDictionary* preferencesDictionary = [NSDictionary dictionaryWithContentsOfFile: @"/var/mobile/Library/Preferences/com.sangster.sbcustomize.plist"];
    if(preferencesDictionary)
    {
        folderColour = [preferencesDictionary objectForKey: @"folderColour"];
    }
    
    UIColor *selectedFolderColour = [SparkColourPickerUtils colourWithString: folderColour withFallback: @"#ffffff"];
    
    if(enableFolderColour) {
        _blurView.backgroundColor = selectedFolderColour;
    }
    
    // Hide Folder Background
    if(hideFolderBackground) {
        [_blurView setHidden:YES];
    }
    
    return %orig;
}

%end

%hook SBFolderIconImageView

-(void)layoutSubviews {
    
    UIView *_backgroundView = [self valueForKey:@"_backgroundView"];
    
    //Colours Folder Icon Background
    NSString *folderColour = NULL;
    NSDictionary* preferencesDictionary = [NSDictionary dictionaryWithContentsOfFile: @"/var/mobile/Library/Preferences/com.sangster.sbcustomize.plist"];
    if(preferencesDictionary)
    {
        folderColour = [preferencesDictionary objectForKey: @"folderColour"];
    }
    
    UIColor *selectedFolderColour = [SparkColourPickerUtils colourWithString: folderColour withFallback: @"#ffffff"];
    
    if(enableFolderColour) {
        _backgroundView.backgroundColor = selectedFolderColour;
    }
    
    // Hide Folder Icon Background
    if(hideFolderIconBackground) {
        [_backgroundView setHidden:YES];
    }
    
    return %orig;
}

%end

%hook CSFixedFooterView

-(void)layoutSubviews {
    //Hides Swipe To Unlock Text
    if(hideSwipeToUnlock) {
        [self setHidden:YES];
    }
    
    return %orig;
}

%end

%hook CSQuickActionsButton

-(void)layoutSubviews {
    if(hideLSShortCuts) {
        [self setHidden:YES];
    }
    
    return %orig;
}

%end

// Homebar
%hook MTLumaDodgePillSettings

-(void)setHeight:(double)arg1 {
    // Hide Homebar
    if(hideHomebar) {
        return %orig(0);
    }
    
    // Custom Height
    else if(enableHomebarHeight && !hideHomebar) {
        return %orig(homebarHeight);
    }
    
    %orig;
}

// Set Corner Radius
-(void)setCornerRadius:(CGFloat)arg1 {
    if(enableHomebarRadius && !hideHomebar) {
        return %orig(homebarRadius);
    }
    %orig;
}

// Set Width
-(void)setMinWidth:(CGFloat)arg1 {
    if(enableHomebarWidth && !hideHomebar) {
        return %orig(homebarWidth);
    }
    %orig;
}

%end

// Set Homebar Colour
%hook MTStaticColorPillView

-(void)setPillColor:(id)arg1 {
    if(enableHomebarColour && !hideHomebar) {
        NSString* homebarColour = NULL;
        NSDictionary* preferencesDictionary = [NSDictionary dictionaryWithContentsOfFile: @"/var/mobile/Library/Preferences/com.sangster.sbcustomize.plist"];
        if(preferencesDictionary)
        {
            homebarColour = [preferencesDictionary objectForKey: @"homebarColour"];
        }
        
        UIColor* selectedHomebarColour = [SparkColourPickerUtils colourWithString: homebarColour withFallback: @"#ffffff"];
        return %orig(selectedHomebarColour);
    }
    %orig;
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
    [preferences registerBool:&enableCustomTimeText default:NO forKey:@"enableCustomTimeText"];
    [preferences registerBool:&enableCustomCarrier default:NO forKey:@"enableCustomCarrier"];
    [preferences registerBool:&enableCustomBatteryText default:NO forKey:@"enableCustomBatteryText"];
    [preferences registerBool:&hideSwipeToUnlock default:NO forKey:@"hideSwipeToUnlock"];
    [preferences registerBool:&hideFolderIconBackground default:NO forKey:@"hideFolderIconBackground"];
    [preferences registerBool:&hideLSShortCuts default:NO forKey:@"hideLSShortCuts"];
    [preferences registerBool:&squareApps default:NO forKey:@"squareApps"];
    [preferences registerBool:&enableCustomCarrierStatusText default:NO forKey:@"enableCustomCarrierStatusText"];
    [preferences registerBool:&hideHomebar default:NO forKey:@"hideHomebar"];
    [preferences registerDouble:&homebarHeight default:100 forKey:@"homebarHeight"];
    [preferences registerBool:&enableHomebarHeight default:NO forKey:@"enableHomebarHeight"];
    [preferences registerDouble:&homebarRadius default:20 forKey:@"homebarRadius"];
    [preferences registerBool:&enableHomebarRadius default:NO forKey:@"enableHomebarRadius"];
    [preferences registerDouble:&homebarWidth default:100 forKey:@"homebarWidth"];
    [preferences registerBool:&enableHomebarWidth default:NO forKey:@"enableHomebarWidth"];
    [preferences registerBool:&enableHomebarColour default:NO forKey:@"enableHomebarColour"];
    %init(WaveAway)
}
