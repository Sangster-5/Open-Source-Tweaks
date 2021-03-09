TARGET := iphone:clang:latest:13.5

include $(THEOS)/makefiles/common.mk

BUNDLE_NAME = SBCustomize

SBCustomize_FILES = sangRootListController.m
SBCustomize_FRAMEWORKS = UIKit
SBCustomize_PRIVATE_FRAMEWORKS = Preferences
SBCustomize_INSTALL_PATH = /Library/PreferenceBundles
SBCustomize_CFLAGS = -fobjc-arc

include $(THEOS_MAKE_PATH)/bundle.mk
