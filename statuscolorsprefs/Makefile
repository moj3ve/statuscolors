include $(THEOS)/makefiles/common.mk

BUNDLE_NAME = statuscolorsprefs

ARCHS = arm64 arm64e
statuscolorsprefs_FILES = SCPRootListController.m
statuscolorsprefs_INSTALL_PATH = /Library/PreferenceBundles
statuscolorsprefs_FRAMEWORKS = UIKit
statuscolorsprefs_PRIVATE_FRAMEWORKS = Preferences
statuscolorsprefs_CFLAGS = -fobjc-arc

include $(THEOS_MAKE_PATH)/bundle.mk

internal-stage::
	$(ECHO_NOTHING)mkdir -p $(THEOS_STAGING_DIR)/Library/PreferenceLoader/Preferences$(ECHO_END)
	$(ECHO_NOTHING)cp entry.plist $(THEOS_STAGING_DIR)/Library/PreferenceLoader/Preferences/statuscolorsprefs.plist$(ECHO_END)
