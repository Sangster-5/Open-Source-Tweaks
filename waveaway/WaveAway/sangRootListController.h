#import <CepheiPrefs/HBRootListController.h>
#import <CepheiPrefs/HBAppearanceSettings.h>
#import <Cephei/HBPreferences.h>
#import <Cephei/HBRespringController.h>
#import <spawn.h>
#include <dlfcn.h>

@interface sangRootListController : HBRootListController {
    
    UITableView *_table;
    
}

@property (nonatomic, retain) UISwitch* enableSwitch;
@property (nonatomic, retain) UIBarButtonItem *killButton;
@property (nonatomic, retain) UIView *headerView;
@property (nonatomic, retain) UIImageView *headerImageView;
@property (nonatomic, retain) UILabel *titleLabel;
@property (nonatomic, retain) UIImageView *iconView;
@property (nonatomic, retain) NSArray *versionArray;

- (void)respring;
- (void)respringUtil;
@end

@interface sangAppearanceSettings: HBAppearanceSettings

@end
