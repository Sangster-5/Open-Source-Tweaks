export PREFIX=$(THEOS)/toolchain/Xcode.xctoolchain/usr/bin/

export ARCHS = arm64 arm64e

INSTALL_TARGET_PROCESSES = SpringBoard

FINALPACKAGE = 1

include $(THEOS)/makefiles/common.mk

TWEAK_NAME = SBCustomize

SBCustomize_FILES = Tweak.x
SBCustomize_CFLAGS = -fobjc-arc

include $(THEOS_MAKE_PATH)/tweak.mk
SUBPROJECTS += sbcustomizepreferences
include $(THEOS_MAKE_PATH)/aggregate.mk
