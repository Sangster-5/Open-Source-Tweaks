#import <UIKit/UIKit.h>

//Hides Icon Labels
@interface SBIconLegibilityLabelView : UIView
@end

%hook SBIconLegibilityLabelView
-(void)layoutSubviews {
    NSDictionary *bundleDefaults = [[NSUserDefaults standardUserDefaults]persistentDomainForName:@"com.sangster.sbcustomizepreferences"];
    
    id removeLabels = [bundleDefaults valueForKey:@"removeLabels"];
    
    if ([removeLabels isEqual:@1]) {
        [self removeFromSuperview];
        
    } else {
        %orig;
    }
}
%end

// Hides  statusbar
@interface _UIStatusBar : UIView
@end

%hook _UIStatusBar

-(void)layoutSubviews {
    NSDictionary *bundleDefaults = [[NSUserDefaults standardUserDefaults]persistentDomainForName:@"com.sangster.sbcustomizepreferences"];
    id removeStatusBar = [bundleDefaults valueForKey:@"removeStatusBar"];
    
    if ([removeStatusBar isEqual:@1]) {
        self.hidden = YES;
    }
    else if ([removeStatusBar isEqual:@0]){
        self.hidden = NO;
    }
}

%end

//Changes Statusbar text
@interface _UIStatusBarStringView : UILabel
@end

%hook _UIStatusBarStringView

-(void)layoutSubviews {
    NSDictionary *bundleDefaults = [[NSUserDefaults standardUserDefaults]persistentDomainForName:@"com.sangster.sbcustomizepreferences"];
    
    // Change Carrier
    NSString *carrierText = [bundleDefaults valueForKey:@"carrierText"];
    id enableCustomCarrier = [bundleDefaults valueForKey:@"enableCustomCarrier"];
    
    if([enableCustomCarrier isEqual:@1] && ![carrierText isEqual:@""]) {
        if(![self.text containsString:@"%"]) {
            
            [self setText:carrierText];
            
        } else {
            %orig;
        }
    
    }
    
    else if([enableCustomCarrier isEqual:@0]) {
        %orig;
    }
    
    // Change Battery
    
    NSString *batteryText = [bundleDefaults valueForKey:@"batteryText"];
    id enableCustomBatteryText = [bundleDefaults valueForKey:@"enableCustomBatteryText"];
    
    if([enableCustomBatteryText isEqual:@1] && ![batteryText isEqual:@""]) {
        if([self.text containsString:@"%"]) {
            
            [self setText:batteryText];
            
        } else {
            %orig;
        }
    
    }
    
    else if([enableCustomBatteryText isEqual:@0]) {
        %orig;
    }
    
    
    
}

-(void)setText:(id)arg1 {
    %orig;
}

%end

//Hides Notifications
@interface NCNotificationListView : UIView
@end

%hook NCNotificationListView

-(void)layoutSubviews {
    NSDictionary *bundleDefaults = [[NSUserDefaults standardUserDefaults]persistentDomainForName:@"com.sangster.sbcustomizepreferences"];
    
    id hideNoti = [bundleDefaults valueForKey:@"hideNoti"];
    
    if ([hideNoti isEqual:@1]) {
        self.hidden = YES;
    }
    else if ([hideNoti isEqual:@0]){
        self.hidden = NO;
        %orig;
    }
}

%end

// Hides No Older Notifications
@interface NCNotificationListSectionRevealHintView : UIView
@end

%hook NCNotificationListSectionRevealHintView

-(void)layoutSubviews {
    NSDictionary *bundleDefaults = [[NSUserDefaults standardUserDefaults]persistentDomainForName:@"com.sangster.sbcustomizepreferences"];
    
    id hideOldNoti = [bundleDefaults valueForKey:@"hideOldNoti"];
    UILabel *_revealHintTitle = [self valueForKey:@"_revealHintTitle"];
    if ([hideOldNoti isEqual:@1]) {
        [_revealHintTitle setHidden:YES];
    }
    else if ([hideOldNoti isEqual:@0]) {
        %orig;
    }
}

%end

//Hides Page Dots
@interface SBIconListPageControl : UIView
@end

%hook SBIconListPageControl

-(void)layoutSubviews {
    NSDictionary *bundleDefaults = [[NSUserDefaults standardUserDefaults]persistentDomainForName:@"com.sangster.sbcustomizepreferences"];
    
    id hidePageDots = [bundleDefaults valueForKey:@"hidePageDots"];
    
    if ([hidePageDots isEqual:@1]) {
        [self setHidden:YES];
    }
    
    else if ([hidePageDots isEqual:@0]) {
        [self setHidden:NO];
    }
    
}

%end

//Spoofs Storage
@interface PSCapacityBarCell : UIView
@end

%hook PSCapacityBarCell

-(void)layoutSubviews {
    NSDictionary *bundleDefaults = [[NSUserDefaults standardUserDefaults]persistentDomainForName:@"com.sangster.sbcustomizepreferences"];
    
    id spoofStorage = [bundleDefaults valueForKey:@"spoofStorage"];
    UILabel *_sizeLabel = [self valueForKey:@"_sizeLabel"];
    
    if ([spoofStorage isEqual:@1]) {
        [_sizeLabel setText:@"100TB free"];
    }
    
    else if ([spoofStorage isEqual:@0]) {
        %orig;
    }
    /*UILabel *_titleLabel = [self valueForKey:@"_titleLabel"];
    [_titleLabel setText:@"Apple Prototype"];*/

}
%end

// Removes App Badges

@interface SBIconBadgeView : UIView
@end

%hook SBIconBadgeView

-(void)layoutSubviews {
    NSDictionary *bundleDefaults = [[NSUserDefaults standardUserDefaults]persistentDomainForName:@"com.sangster.sbcustomizepreferences"];
    
    id hideBadges = [bundleDefaults valueForKey:@"hideBadges"];
    
    if ([hideBadges isEqual:@1]) {
        [self setHidden:YES];
    }
    
    else if ([hideBadges isEqual:@0]) {
        [self setHidden:NO];
    }
}

%end

// Hides Beta Dots

@interface SBIconBetaLabelAccessoryView : UIView
@end

%hook SBIconBetaLabelAccessoryView

-(void)layoutSubviews {
    NSDictionary *bundleDefaults = [[NSUserDefaults standardUserDefaults]persistentDomainForName:@"com.sangster.sbcustomizepreferences"];
    
    id hideBetaDots = [bundleDefaults valueForKey:@"hideBetaDots"];
    
    if ([hideBetaDots isEqual:@1]) {
        [self setHidden:YES];
    }
    
    else if ([hideBetaDots isEqual:@0]) {
        [self setHidden:NO];
    }
}

%end

// Hides Update Dots

@interface SBIconRecentlyUpdatedLabelAccessoryView : UIView
@end

%hook SBIconRecentlyUpdatedLabelAccessoryView

-(void)layoutSubviews {
    NSDictionary *bundleDefaults = [[NSUserDefaults standardUserDefaults]persistentDomainForName:@"com.sangster.sbcustomizepreferences"];
    
    id hideUpdateDots = [bundleDefaults valueForKey:@"hideUpdateDots"];
    
    if ([hideUpdateDots isEqual:@1]) {
        [self setHidden:YES];
    }
    
    else if ([hideUpdateDots isEqual:@0]) {
        [self setHidden:NO];
    }
}

%end

// Hide Apps they are just invisible

@interface SBIconImageView : UIView
@end

%hook SBIconImageView

-(void)layoutSubviews {
    NSDictionary *bundleDefaults = [[NSUserDefaults standardUserDefaults]persistentDomainForName:@"com.sangster.sbcustomizepreferences"];
    
    id hideApps = [bundleDefaults valueForKey:@"hideApps"];
    
    if([hideApps isEqual:@1]) {
        [self setHidden:YES];
    }
    
    else if ([hideApps isEqual:@0]) {
        [self setHidden:NO];
    }
}

%end

// Hide Dock

@interface SBDockView : UIView
@end

%hook SBDockView

-(void)layoutSubviews {
    NSDictionary *bundleDefaults = [[NSUserDefaults standardUserDefaults]persistentDomainForName:@"com.sangster.sbcustomizepreferences"];
    
    id hideDock = [bundleDefaults valueForKey:@"hideDock"];
    
    if([hideDock isEqual:@1]) {
        [self setHidden:YES];
    }
    
    else if([hideDock isEqual:@0]) {
        %orig;
    }
    
    /*id hideDockBG = [bundleDefaults valueForKey:@"hideDockBG"];
    
    if([hideDockBG isEqual:@0]) {
        %orig;
    }
    
    else if([hideDockBG isEqual:@1]) {
        [self setHidden:NO];
    }*/
}

%end

// Remove Cloud Icon

@interface SBIconCloudLabelAccessoryView : UIView
@end

%hook SBIconCloudLabelAccessoryView

-(void)layoutSubviews {
    NSDictionary *bundleDefaults = [[NSUserDefaults standardUserDefaults]persistentDomainForName:@"com.sangster.sbcustomizepreferences"];
    
    id hideCloudIcon = [bundleDefaults valueForKey:@"hideCloudIcon"];
    
    if([hideCloudIcon isEqual:@1]) {
        [self setHidden:YES];
    }
    
    else if([hideCloudIcon isEqual:@0]) {
        %orig;
    }
}

%end

// Hide FaceID Lock

@interface BSUICAPackageView : UIView
@end

%hook BSUICAPackageView

-(void)layoutSubviews {
    NSDictionary *bundleDefaults = [[NSUserDefaults standardUserDefaults]persistentDomainForName:@"com.sangster.sbcustomizepreferences"];
    
    id hideFaceIDLock = [bundleDefaults valueForKey:@"hideFaceIDLock"];
    
    if([hideFaceIDLock isEqual:@1]) {
        [self setHidden:YES];
    }
    
    else if([hideFaceIDLock isEqual:@0]) {
        %orig;
    }
}

%end

