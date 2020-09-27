FINALPACKAGE=1
ARCHS = arm64
TARGET = iphone:13.3

include $(THEOS)/makefiles/common.mk

TWEAK_NAME =BetterPad14Springboard BetterPad14Camera
BetterPad14Springboard_FILES = TweakSpringboard.x
BetterPad14Springboard_CFLAGS = -fobjc-arc
BetterPad14Camera_FILES = TweakCamera.x
BetterPad14Camera_CFLAGS = -fobjc-arc


include $(THEOS_MAKE_PATH)/tweak.mk

after-install::
	install.exec "sbreload"

include $(THEOS_MAKE_PATH)/aggregate.mk
