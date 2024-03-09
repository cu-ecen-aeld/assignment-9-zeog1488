##############################################################
#
# LDD
#
##############################################################

LDD_VERSION = e7061339e2ea29eff44b1d2044de367f41c6f0c5

LDD_SITE = git@github.com:cu-ecen-aeld/assignment-7-zeog1488.git
LDD_SITE_METHOD = git
LDD_GIT_SUBMODULES = YES

LDD_MODULE_SUBDIRS = scull misc-modules
LDD_MODULE_MAKE_OPTS = KVERSION=$(LINUX_VERSION_PROBED)
LDD_DEPENDENCIES=linux
# define LDD_BUILD_CMDS
# 	$(MAKE) $(TARGET_CONFIGURE_OPTS) -C $(@D)/scull all
# 	$(MAKE) $(TARGET_CONFIGURE_OPTS) -C $(@D)/misc-modules all
# endef

# define LDD_INSTALL_TARGET_CMDS

# endef

$(eval $(kernel-module))
$(eval $(generic-package))