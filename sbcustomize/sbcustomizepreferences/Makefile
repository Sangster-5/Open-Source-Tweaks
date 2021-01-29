TARGET := iphone:clang:latest:13.5

include $(THEOS)/makefiles/common.mk

BUNDLE_NAME = SBCustomizePreferences

SBCustomizePreferences_FILES = sbcRootListController.m
SBCustomizePreferences_FRAMEWORKS = UIKit
SBCustomizePreferences_PRIVATE_FRAMEWORKS = Preferences
SBCustomizePreferences_INSTALL_PATH = /Library/PreferenceBundles
SBCustomizePreferences_CFLAGS = -fobjc-arc

include $(THEOS_MAKE_PATH)/bundle.mk
