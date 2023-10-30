
##############################################################
#
# LDD - copy of aesd-assignments adapted to assignment 7
#
##############################################################

AESD_CHARDRIVER_VERSION = '4844d2931ac3eb107e80457e3d414274a035fb26'
# Note: Be sure to reference the *ssh* repository URL here (not https) to work properly
# with ssh keys and the automated build/test system.
# Your site should start with git@github.com:
AESD_CHARDRIVER_SITE = 'git@github.com:cu-ecen-aeld/assignments-3-and-later-Nicholas-Buckley77.git'
AESD_CHARDRIVER_SITE_METHOD = git
AESD_CHARDRIVER_GIT_SUBMODULES = YES

AESD_CHARDRIVER_MODULE_SUBDIRS += aesd-char-driver

define AESD_CHARDRIVER_BUILD_CMDS
	$(MAKE) $(TARGET_CONFIGURE_OPTS) -Wno-unused-variable $(@D)/aesd-char-driver
endef

define AESD_CHARDRIVER_INSTALL_TARGET_CMDS
	$(INSTALL) -m 0755 $(@D)/aesd-char-driver/aesdchar_load $(TARGET_DIR)/usr/bin/
	$(INSTALL) -m 0755 $(@D)/aesd-char-driver/aesdchar_unload $(TARGET_DIR)/usr/bin

endef

$(eval $(kernel-module)) # not kernel-package...
$(eval $(generic-package))
