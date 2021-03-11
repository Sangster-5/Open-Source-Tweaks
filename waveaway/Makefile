export PREFIX=$(THEOS)/toolchain/Xcode.xctoolchain/usr/bin/

export ARCHS = arm64 arm64e

INSTALL_TARGET_PROCESSES = SpringBoard

FINALPACKAGE = 1

include $(THEOS)/makefiles/common.mk

TWEAK_NAME = WaveAway

WaveAway_FILES = Tweak.x
WaveAway_CFLAGS = -fobjc-arc

SUBPROJECTS += WaveAway
WaveAway_EXTRA_FRAMEWORKS += Cephei
export WaveAway_LIBRARIES = sparkcolourpicker


include $(THEOS_MAKE_PATH)/tweak.mk
include $(THEOS_MAKE_PATH)/aggregate.mk

after-install::
	install.exec "sbreload"
