##############################################################
#
# AESDCHAR
#
##############################################################

AESDCHAR_VERSION = ff41d2c6cca2821432ece778e798d3bbce3fa938

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