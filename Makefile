INSTALL_TARGET_PROCESSES = SpringBoard

include $(THEOS)/makefiles/common.mk

TWEAK_NAME = StatusColors

StatusColors_FILES = Tweak.xm
ARCHS = arm64 arm64e
StatusColors_FRAMEWORKS = UIKit
StatusColors_CFLAGS = -fobjc-arc

include $(THEOS_MAKE_PATH)/tweak.mk
SUBPROJECTS += statuscolorsprefs
include $(THEOS_MAKE_PATH)/aggregate.mk
