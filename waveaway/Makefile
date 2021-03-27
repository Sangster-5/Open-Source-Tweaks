export PREFIX=$(THEOS)/toolchain/Xcode.xctoolchain/usr/bin/
export ARCHS = arm64 arm64e

FINALPACKAGE = 1

include $(THEOS)/makefiles/common.mk

TWEAK_NAME = WaveAway

WaveAway_FILES = Tweak.x
WaveAway_CFLAGS = -fobjc-arc
WaveAway_EXTRA_FRAMEWORKS += Cephei

SUBPROJECTS += WaveAway

export WaveAway_LIBRARIES = sparkcolourpicker


include $(THEOS_MAKE_PATH)/tweak.mk
include $(THEOS_MAKE_PATH)/aggregate.mk

after-install::
	install.exec "sbreload"
