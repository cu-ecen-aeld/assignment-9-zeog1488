##############################################################
#
# AESDCHAR
#
##############################################################

AESDCHAR_VERSION = ddc77c241bd07d64d14424624c2375224e3efe5f

AESDCHAR_SITE = git@github.com:cu-ecen-aeld/assignments-3-and-later-zeog1488.git
AESDCHAR_SITE_METHOD = git
AESDCHAR_GIT_SUBMODULES = YES

AESDCHAR_MODULE_SUBDIRS = aesd-char-driver
AESDCHAR_MODULE_MAKE_OPTS = KVERSION=$(LINUX_VERSION_PROBED)
AESDCHAR_DEPENDENCIES=linux
# define AESDCHAR_BUILD_CMDS
# 	$(MAKE) $(TARGET_CONFIGURE_OPTS) -C $(@D)/scull all
# 	$(MAKE) $(TARGET_CONFIGURE_OPTS) -C $(@D)/misc-modules all
# endef

# define AESDCHAR_INSTALL_TARGET_CMDS

# endef

$(eval $(kernel-module))
$(eval $(generic-package))